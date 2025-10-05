Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424B13D81
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759638594; cv=none; b=KRnvEbVWD4eBT14lHUrjj0olCGtf6tQ2cWD1H82aj+i7ngw12KD9MJbKG/Y2vLLCOY7v8gtJRFPB5kBovOgKWZ4Yg9FfBx2q2cGZIDwIysqSM6fufwtzUZXe7GQoaRJsaLWfqxTwez9qj+2QkgL1lo0HQh2oZhm30KErRZGdL3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759638594; c=relaxed/simple;
	bh=FGaduJqrcvNtmzcreuxUFJGwI01KyrUvfzqaiV/Rd+s=;
	h=To:Subject:From:Message-Id:Date; b=sZxKAHpH76RzbwyN0LaU9P5j6+w1BM2e18hOFOymwYT/afOfA3jdoeh6wz2h8d8YX6mBtLz5Xp85kPQ0oFB2QFxUaNYFs5at3Jr5V9AM9w13Rt8Fp8wbTTVyK1celb5lQYLsZdluKo9cUkUP7NtI1Syoe78ns4kX6xpnkGvi078=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqD2skJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqD2skJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB30C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759638593;
	bh=FGaduJqrcvNtmzcreuxUFJGwI01KyrUvfzqaiV/Rd+s=;
	h=To:Subject:From:Date:From;
	b=EqD2skJ/SoZdLK6aca7ms3cR5OCm7VUwZnuogK51eUxEjx0nzCMtC7CrM7DcEIKcL
	 u8GA1xjTXHMzmiXGAOOLKluBmQu/L+zYXHiHx04UNpl8jCZ7OLwupKK9/o3Wsn6Wng
	 HFoIzKyXpt/xj5hjMf0PN8yWN3l0ILszJJjCUJMTNAJziyhawvvmRIAdspUZfbAdVe
	 kHHbmOyw0mWdS3+KwGsmoX3j9FyMsNV0i72UVwLWlQFAo2/XcB6FS4xXO11bcgAlbO
	 baBwVzbZV1JnN2e7fXo8GtxD0ZawYwrhGCamaV20/AqCUiRfc0ZZC2G2QWisBekTuE
	 x25QKOuQznjBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A6DCAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175963859358.6232.16645450813990162048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 525f174e607c8b92371679f7f37e6ab46bbdd226d774aac970fd0a4dc34a6224
Date: Sun, 05 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759638593
