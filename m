Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAB223C4FD
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762860594; cv=none; b=tS/2Lv2btQRkr6xfrol0m6wP8ZYMsURJNGsGNVfn1HGbbu+Eh/0zdEQO9Xv5AW0YB3uB2qKFmUPMcQ4IZVoZ4YsSZoJYQPUkxbDGU+UUsT0nEMd91ow4wWLVobS++SU1CUSU49QHuwVyhi4Tzv1rN8hOZAYAgrnNSPxHOfnFXhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762860594; c=relaxed/simple;
	bh=9AKaZo+0OolxiaPkiR7dDuvVXJqcWVNUVkvVlvbp4Ew=;
	h=To:Subject:From:Message-Id:Date; b=tQ3BoFHWHD5tnMoYXygb6AnTAwOhVBMruhZzvogvs957BafvBDQY0dqfaRBiHa3mUlStTq0pklUJ8RshbNSr9+HoptnhrHZuq2l1llW+EVnn7OKZWkkJl26sAxuR6UBap+WED4O51buA0j7goUT3wn2aduGAaJHsFR4kGzE7Sko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UrH8Qy49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrH8Qy49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA51CC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762860593;
	bh=9AKaZo+0OolxiaPkiR7dDuvVXJqcWVNUVkvVlvbp4Ew=;
	h=To:Subject:From:Date:From;
	b=UrH8Qy49kopKvaxBFzB5bimN+W41hfmrMaocoqFGQjuDunZBPWqEyN1ziTrtomG7z
	 3W6KUGBYPl2OHKzIyJOYv/ftePbQVGWa+MAAECmdTGGxRArP1xQ6QKLsmweiJSupsM
	 6uvx4csB15gV0hqZstrTRovemflbWtPZbfNM+n6zDQwdtU6LYEtu2v0cntVxz010sq
	 wfGMxeRqPqSsbojV6EdMjd+0nlmaj5Xx/9iuKh5J4fpi3IlD8KtoTcjEtK97BU0BeT
	 3J2FKCzmDA2QVIyZ8NhgEmg6hgdAPXIuYERln6uJglW3jI3VfRtsFFPVAt0X6vJ2Qh
	 U99s2/7gRWHIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F09ECCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176286059357.2022.17281577218603144101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64dc03ba99ba26733619470079f87f1946785f3adb3f8f0ca648c5b408b25bdf
Date: Tue, 11 Nov 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762860593
