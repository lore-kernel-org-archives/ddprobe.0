Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161361B960
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721733354; cv=none; b=RMzt299iRhJNv7ph/PAP1OsUD/2vD7lV8fONxou5tEfZpl+ThySzJqsmc8GhaqwEWCv3MF7bulgFh8suDQrjjwObw7RrQDlwv/1oPLZX2+vBzO66SRsFMV1l1AyEuROyNY2If8If626tSQzGMUZN9clAA5C2rGdPFqWX6KxrzBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721733354; c=relaxed/simple;
	bh=l2HwUCVYJOyiuY+7zCzk+R56w+gSLi9fXIfXB6EL1jc=;
	h=To:Subject:From:Message-Id:Date; b=KOiOorxDQ+mCT5JR39ckFaP582rbSPH2GQpMa8ATER2v0ZB96DTBtFQY0ppv1LBH47Q4XFZFmSha5gRldCrNRfwcI1Upei6fXDuXLhast8C1InxMpV5B2dbfJs7SCPIoJ8LDaq9dJYGmJMWA/6WN9QwqPsVfSjcixksHnzo+mtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFlniUA0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFlniUA0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92FEC4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721733353;
	bh=l2HwUCVYJOyiuY+7zCzk+R56w+gSLi9fXIfXB6EL1jc=;
	h=To:Subject:From:Date:From;
	b=CFlniUA06GA+yWvtqYX/Wsknaovc5SlH1bvHQ1p1QGx0FeSXrvSHXPjMKL/oX7o2n
	 0IX5j43Cf6fDzcjEc67c/YktXaisQRifXztDzc/Y4DUyYiOF3MjRoEhLbOtasXYcoT
	 90bVRjKEXJXQWHt99n2w9DoI9M79YcRUJoTC95FY8S0SglLb2xvm3/oRvJU5SfMl80
	 q2H1pKUYE19kepCrKa4H2hNuQ+1AGEgoCs/B8ZnDSy2vDWixwxDd8+GxIGF7kLmDs9
	 G4dBlohTkneGmD6O2vKmM4K1maw3sKE2uX4nvfcHuYa6OLt/IzJ8p+NqduuM3V4alb
	 MwqLSqTAlvX3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9730FC3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172173335360.32687.10931623091599391700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba50d8303ca05152c2984b14363caaab32d8ebd9d6439767a19256efe4b7ff94
Date: Tue, 23 Jul 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721733353
