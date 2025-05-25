Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF9A3FE5
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748211594; cv=none; b=iY3OBDt/YhegkcWPCMEfyJjLeXNypivPiuLdwUCRjJ5n7q1Oa9+u/EtQ+CQfbaGly2X3NM4optAXORXEd7l+UPHTUYNB1YvtwGXveSHETNvgU7iAZN2k9dphPpkhcIXBoS79MPF+reoP9d2d5EGyv9hxifS9D8BaOqo9GhaxHqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748211594; c=relaxed/simple;
	bh=hnQKzWdvnhgb/nF3DmSpQBT/ESm/hDKZsEShJIDuO+A=;
	h=To:Subject:From:Message-Id:Date; b=boMFwuLG4QJNeIH9YZl/c58C5upXAJq+UCo6lvlvDrDs/DY133XgSQUwk4ZjzAiTuO4w54EZOFJX8HgsopmNgmT8VUhbZNJ4PFMiFHhmnTmINtB5LH62bgt7J6AhSflZ4delWlIW2tDMbvdmUO91iTAxDkjkDHd8mbSmoXj69KE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdEG8ik7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdEG8ik7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C43C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748211593;
	bh=hnQKzWdvnhgb/nF3DmSpQBT/ESm/hDKZsEShJIDuO+A=;
	h=To:Subject:From:Date:From;
	b=EdEG8ik7/YYQBz+w9sSYDzA5hqqm71gf558elLr1GKyFEN+N3heiG6QcQUTRlpeX5
	 8nXG9Wb810SYW3NdtbnnAQ4822UQLOSvpiqG8Vif8bzio+q1KATpycc8pwI2dYMTeU
	 X7HNTSi4Y1T1kTS5VxTiqmK0mbQrKPlY5k3aUsQKOvkriD2RsRSmRGECrr6t927aIh
	 +AyC/y016uuclahCTi8oOwDEdKnFGqLjPPKp6o7cApiu4vxgbZBsJlJ+4Ox0KU7y/E
	 56uLRgPsmLgtHkPWa1UYFOG9/oCqa6JsWdVFYKswi0S/NPuQqvLUb8Y36kw0TqT9gN
	 pCWiQrjW26LmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A45C54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174821159357.27617.6121150569653097860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc8aa9b34c432fcef5227ff23eb6b7aaf26abcc22c44b8c07d4d345afc7c8bef
Date: Sun, 25 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748211593
