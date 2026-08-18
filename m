Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291E230CDBC
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787077234; cv=none; b=s2wWewb+RsDrt0vmhxcJZXXzjQ/P+6GA/MzXgHHpSecKfTRMiPzkJMmOSgRKrhdpQUMZtNzqEHrl8JyJQr2WNJgGpybXmLR1MeCJfldOQJ7yIpdfRBLRoQ6TU9AX6LpUsdkgFLaeNHNVgkJRwcRPdwZ+6ZNSJgj32Pe5TX5mqLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787077234; c=relaxed/simple;
	bh=87T4xMkI/buFp4wvuqAci+JNLdfBDvWyljFHBADKFho=;
	h=To:Subject:From:Message-Id:Date; b=DaCu+Ki+QgCl/aDqszkULvLKOInQYHJ0mFAwAQx5j4NGu6ekd8dhlShFurjEGjRsEiZfNJNML1Ab1Hb+00FhzJrlDHjDy6Yn10C0MKtYHnbAAtNTF3ew/j+31Izy/RXRejCUx0bH8xtGGIIHYoCvvp+WedvCI4Hm5OdU8stI/hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWoUSikU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWoUSikU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB73EC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787077233;
	bh=87T4xMkI/buFp4wvuqAci+JNLdfBDvWyljFHBADKFho=;
	h=To:Subject:From:Date:From;
	b=oWoUSikUDPZGhYWgbJPJyrK4mZzGpLn+XbUIt7aWKyh/s3dxgmgLUlI29SC2Vs9dB
	 M3fHZPi4ShRHK1IL2HqZzePS1eQfTzCH4/vW4h3tpFjSNlaCJnvaivFiJPYz/BT0pk
	 CYOTaD5RePRgxL81otOD4DPy/4pu8WgGsAqFtVBA6tiscfU1cjbxPH3G3V+NKzKV01
	 /6d6BgpQZAz1vfW1kZixBh7R69zVCfsHBpCmhajFbx8dMqd4mIyufShUCh9iYrVQnX
	 vz8znMgzRYRXtwEQjB1Xb74NlFppc7MpETaO5eexdpLedwAKzLxAfC+vUNh9WnQIQF
	 Y5fXuf+m8AImg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5FA8C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178707723373.12997.13419840552141924177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ce1eeff228cce8e18d910612a42bcc72e2f091991d01517b83a45f40b7ec9c
Date: Tue, 18 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787077233
