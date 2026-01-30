Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D113168E2
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769735634; cv=none; b=NzEgivXYgRZqcy5rs6Px1VnIGUwMw4G8wtFnzu+inSoeY4EcR2VYl+xe1fFVQZL40V9cOnqYJ+fFUPonioSAPbtBFjZ8fySt1WfQztp3IIWoUGDPbMR1wcyf/A8dftCIi/6m2siIZWjtuGt4n1DnPhvxfMLYcx3LkqK7oPOvI9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769735634; c=relaxed/simple;
	bh=symiRpY+b+GZklNKSVjqEzippq7i1CaK3Im3J9lsd0I=;
	h=To:Subject:From:Message-Id:Date; b=NO0o06Hlet+z7QOFZgIRbHipElEHy0cMsmpiaHjgDaFgDClfUjwPaFYyYZLTL/LcKwvLoLXdHmh1qu26E3S4wtKBjeTMnDx8QwvTQALtsziuOeZyWOsgls8jkwNewYrgtxX/Exn8TGQcOHJ+/xOylNVsPCFx7Xg2unHvLb6yOD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHSTf9/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHSTf9/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85CAC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769735633;
	bh=symiRpY+b+GZklNKSVjqEzippq7i1CaK3Im3J9lsd0I=;
	h=To:Subject:From:Date:From;
	b=QHSTf9/rImD5aNfwfus0hj0/dTZuYDxZYLCI93hk0bX6gfHWHjKADovxcamr49ZLn
	 AJ3K6kyjHPDc9FFiH/SQuPsQ/uBEgs1y6kKDWxVe4Wx1jKvYay7VOZDCK975VNO1B7
	 dPOqWK6EcnrW9wXH/AU9EU0f7GNyDEZbsKGmWhfNh4lkCpHW6g0slfWqXfNoGNc/Tl
	 vrvSqXEu/mIYKwTWWN69yC2uZPEZaJ8kQhfZRA3PxScLe/ol2H/MXhLfGv6w6L01Ge
	 iL2hafOQmyuNqixcFtkXIHPb+YMJUiJ5fM4oACgXHxvRvL+o9p3M0ury9oHLs1fV6y
	 NiRxUl8N5ORUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A506AD73EAF
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176973563366.5769.13943699821226239999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a891139769b9a1dac7873fa15cc6710fbb185c1b97ba0aa1e1289091da50324
Date: Fri, 30 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769735633
