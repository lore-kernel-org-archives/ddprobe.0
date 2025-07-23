Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247B027780C
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753259394; cv=none; b=bpcK5VTj4Zdx4nY2eru/85fdUlS0OAkJLf7u62dPFvuMpr5nKyNGjODbvTa3gVtVPSor7oDnx01WhUTviPDbz4Ae3ggABq8tXnhEkjmPXcBwfDTmUtNJfbb00FHwlhhCq2lki3cF8lKoUQAiu0w+nbR5jxDP9zpVCrZ7NTVmqks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753259394; c=relaxed/simple;
	bh=MOvjNbgcPnsN4ZpcWcMLSTdJ1AX4f+YYk33B7/vEMSM=;
	h=To:Subject:From:Message-Id:Date; b=YuZDgr5cmq9U+JNyzSvlhH5+wMH1TwqOOpM1rYxrFrOIQX2srHrD4VoJTEhy4SqAVihKZZG0qyUhVryslpOFe+/NYXPeyfjLNuU5Njt6Qyiy1KatnCSOos4L/fhFgGak4JFCI0+wJibfv7xZxzm1EGOtJZF+8X/NvvHTRGT5t9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xm1DMMSJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xm1DMMSJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E854C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753259393;
	bh=MOvjNbgcPnsN4ZpcWcMLSTdJ1AX4f+YYk33B7/vEMSM=;
	h=To:Subject:From:Date:From;
	b=Xm1DMMSJCc9KeOvFK4K1dOvVzMgNoTiD62j6Nz2RKXG368+QE4F/jKSW5vkbPFIfY
	 mIU80/IPQELS7TzywdLQQP8pCrQ7hUiJSWaag/yGhoKab8ozIrrGz1e3glpEr046Dj
	 t73OZHvnibLRclW+PLPVaEKDRG52cZhqKR3ThEVqcyXSEoMUtBdCDQt3n5Y/4kayY0
	 SV7JzyjpJcHxQSwNzTU39A30MPaV3ExIGZqdKsYdUKETokR+2Fh/yDFptju9qRmRZc
	 H3H3m6jAlguoPME/0BBGbK+/FBa7L+bwHqRkuVd4ea/0bAH44xJ0A+Vg61k8VH5hz2
	 DnXHTjz0gVo0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F89EC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175325939357.32141.16778200648643909398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325d0eedf3e8081e0376e022df561a25581d79e645b625c2c2a00bff306ebbb3
Date: Wed, 23 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753259393
