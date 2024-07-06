Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59AE01B949
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 20:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720298783; cv=none; b=n+PBElb/HHgB/tto5qPAIeHbRzGT5zT1AzgLZ5B+h+OmSbsuQpgSXDnCzr0q41lF1+kKNm5rF8PDQJSotSton3L7d2wDkzcEAfoFJroDvkyMAuJKyCnRBvXrEg0YC3Xbav+YWBnew7W3Rgwsj1bx/x6uxsramlximdbZ4kYOTnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720298783; c=relaxed/simple;
	bh=G8zQxqWNowuz0OM+ZGSEyQX/OI4/SCH/YbLXXHU2hvE=;
	h=To:Subject:From:Message-Id:Date; b=L7cfcb0tyy1viUKBUBlzVnZGxpAf8Km4f1PWfrctrxEiHadvL31Z2ALWx+xIJFjhLNV5LEFFXMLr8u3dcud5YnEBzURVNcefZUcc3unm1g+5Y8n3eOuV6e9H2TIAVlVATZ0wrgctC5zroO6/P/OM463lLvLEqmT6V+msn8/T18E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k617Q2Ph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k617Q2Ph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2701C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 20:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720298782;
	bh=G8zQxqWNowuz0OM+ZGSEyQX/OI4/SCH/YbLXXHU2hvE=;
	h=To:Subject:From:Date:From;
	b=k617Q2Phy9AuwliO7v2RlU0jKZMab8vrBedX21DUTdbo1qcySJ/KpLjjN3npI8mx/
	 gWiVB2nhw+JaB5Us27EJAp657raNwspyN9m0GHD4oOYTs9MQW+5copTppt90pToWtq
	 zbEpzHJn7QwFBghbledo0I/u4qm49o6IJgh7g/FVzdQOZYOML2tvfAlXcQj9xhaqgQ
	 6Ta6Sp/m56tLG1EQfBjYH6RlSrRWPnpEG6Eryf16Vb9QNwDD7qYWoY83H5mEb4LNaN
	 CN5xM/CAOaRmKuB2PeCtX2StVhkdPQKmcCfFPwV5Cq4AmPaV2kEqdqtEuCZ2rEcPFq
	 gOPicLjSziyag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA0DC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 20:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172029878277.28470.15065332562425561486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b699ac007fdc5a09a7f6dc7fce05c3efaadc01f9cba91605548c0be915e17f75
Date: Sat, 06 Jul 2024 20:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720298782
