Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCFC4502F
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765934034; cv=none; b=n8QwcOymN99ZeaUgJ/XWLYf81Z1GiOL641dbBnaKQ1bnTAPCxRAqiy649NL5AT1kzQbw6BzTNAmhjpdiSPOFY6f3bMS2oLNOSRcxniJtzEltvvm4Bnf1g6W55KO4TuwiF0TrdG3ao6ZQLPAgMk7ntcD6Eh0TyqaOe05kxJNVrFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765934034; c=relaxed/simple;
	bh=fs+LhGefIPka5DIvaMTKHXiN1bKWMRpLMq/RdzRKPpc=;
	h=To:Subject:From:Message-Id:Date; b=XOUZmwp7UV4MAjU8ZhChyNTd73RfT+85f3ZfMSBp60f5Vsbr0QLKffS4BxTFd2/At4loses3Pt8KhTirU9rKe05MZevUBSwJMWFZpYKUROuHFsqOEUB/6CR6LjXqB2XeBzeTwpxY6Gif5ZKnWOhxm+mwRN3ipkOl/wKEFD8y5q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WW+4abLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WW+4abLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A773CC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765934033;
	bh=fs+LhGefIPka5DIvaMTKHXiN1bKWMRpLMq/RdzRKPpc=;
	h=To:Subject:From:Date:From;
	b=WW+4abLGym6QwbLsRVPMi1SzigYEnTbURvMH+o6bTjH9+JvRGw2+cxBg5Rr7OkWBH
	 Cvdq9Ufr8wU2mR1pu07/21e3CI8XQfUzrODzWmtx22+tnlUCV6BqcqASQVXE4Z2wFl
	 K8IL10JJzo3a9rl1gyJLMHjgO23o/yyhXfLaa+Xqp+kOxV197O3St07LPu4Qzsv3In
	 ju1XrFcKsCpHgvS77lmVaF/8ud9o7HhFhJ6d5tHvYUqvA6wjv4LKyHWZpNv3RmIMyl
	 T2e34jaEWKKpEReAijzEXeTqX0jzcvOIlOT3/TsmUlOLODawQeDgJdfo2H9u2/D0Hk
	 Q4F5vOma9XGug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E50D6406A
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176593403359.10425.3945535083739353662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d98393fbae38193c66e53d9c4529cc1787e7ae4dd67dbe3ac8ab46a3122aeb3b
Date: Wed, 17 Dec 2025 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765934033
