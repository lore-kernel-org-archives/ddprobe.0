Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E30218E03D
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730147754; cv=none; b=agMDKVVdzHJs+fRfrJMVFtfJAl/O1k4sRJGJu7l20hY+b+55wgo+n1qTO6hLosvU+m0SUj4qDETCZh3/0DTKrT97tax/MO8lbuFx0cMkpm3zVfur8Sv+eua/BUnHV6853qtFeFRGowBTPcUZmZXVVwNGwSoVt0b4ApQgGlWEj5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730147754; c=relaxed/simple;
	bh=PlCGtOlTfEMGc/dP2biaYdNU6O063bhWHHt0uph68LE=;
	h=To:Subject:From:Message-Id:Date; b=ppLmpHTc1B63yaMYg7macBvYlAUT62n5ysk21ZhzLY2zjcXw+6krg1wrKpDCxp1L5FX8V51FMYTg/54877yuPeasiAQa/QtE4fzjr/+IpoM+5CGsUnQUOmUgnrzlM6k3y+LrCBb1QCc4XQcZ3MUO4akiCSECDh8Ey7GMgEcN5J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nckJeJ2M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nckJeJ2M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6832C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730147753;
	bh=PlCGtOlTfEMGc/dP2biaYdNU6O063bhWHHt0uph68LE=;
	h=To:Subject:From:Date:From;
	b=nckJeJ2MFftNdDv1Ux54crQ0goNwi6bXXooVs+sgegsDPHe3U/9rKw4Y198bEt+i7
	 5ZHyU6gUKggK7Hrz7TEahIKl3x/kElE9Mj1AwCYE/j21kQrQxTeoH9R1igkq+sWc47
	 X2Ux2AcGqlY2q8A4k+BTGwny+4zrDl0C/HVnQiAeiMjoU17/LGiaBgshgL+w4BcnN/
	 M+UXEleviVSaLO1T60ZNTnPVWeraB+J0TInNXJJ/EYK1wlM4d67pjPEHQMtj6c0Qav
	 R+iTxceY91tuE2szXG4xtfIrPBfqRDes1UJYXZtkxMsttxoL1kb49ZRfzvHkrlNjBf
	 VzgGo2MMkGPHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6983D5B146
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173014775366.9003.18167156865919789944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64b4cd0bcf1c9ad47f5f153842cae1d1e5659d8f83d54cd2ef25e7c86be91376
Date: Mon, 28 Oct 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730147753
