Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6E215CD58
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729091754; cv=none; b=lr6eaNBGdFWE10y0R+yrEau+L3LcojCFcsWbtvwt3FO0/vt8FU+PTZ4fkX5ayS45cq8TD8nHFmRwo/IK7WF85gU3/0WRuAaerrJoxl+IfxSPDY3BnbpugUCz1WActKkxL9nC9lum35MTlcRdvXhd/32dzR/9/OFrG4mvitwOin0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729091754; c=relaxed/simple;
	bh=Kt4Ro+eqYMtIXkL2AkAs8G8HprGMQRT/vDEFoBTYPu8=;
	h=To:Subject:From:Message-Id:Date; b=IXf4I9FhxKLa+004Bjmp1okDF7zXXRE7qXVPJ5h/TENB7zpBKgyKUT6R+ewcyrNdNcSu/BGPJjC/6fMQPRk7hOgZwBtuPtfpkWPmTRPpiNLsEA/Wdo04dLbFc3GGZhjy7tL6+iyRj36gazmqpZq9RwJZNmlBvc2TGox+fg0/07Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRMHW/HG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRMHW/HG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE29C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729091753;
	bh=Kt4Ro+eqYMtIXkL2AkAs8G8HprGMQRT/vDEFoBTYPu8=;
	h=To:Subject:From:Date:From;
	b=NRMHW/HGOIegq8IG2otWj/LAjPedmp490XhqBCGzqribID4CiTJXqUL5W+PuQUdA9
	 +0MsXVUGPyhSqFbIfqjOcqy3jl8KsInj7rE7l7MSIaloq4hdERtJl2BZUjhy/+GC1r
	 UJW6PyZyV60qUjYD8WxPSuqOuVdwjJEknhtca6ry4cKAbImS50aX5SbbvPc1PX8i40
	 8s1wPtvpbMYsswQ7QAHWH29v1cmUdYegp+B/tlOL3Vmax1K0A23ZKmjI++sOcQUAso
	 bHfcGqGQ9YSzUug031mrd5Do37OrEb3ou6uQzYvb2xdiMWoYfjsXBHOWQ9gD50J1So
	 dwrrIISQuwiog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9904ED2A520
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172909175361.30689.4454175039588088836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f814ece811fe7b2acf5683438a64c92852e47fb64d68978b3a1863488def8d76
Date: Wed, 16 Oct 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729091753
