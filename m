Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC80350A05
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790811034; cv=none; b=aviD8R/JeNTYtr8tYRfyUcqCXwyVMbJ4N2CwJmI1Kp5lY7XkkaySjgYSbx4Gz2MkWedCGOc0KEC5KmSNKl7DkEyhHzoFmIVCosoGYU2ePOjGySRs7q0Hq41LMz3EQMQjNNBq8H9phYLWJnUhV9Bn+T8pujCuVF1Rh7ydnPc4jNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790811034; c=relaxed/simple;
	bh=iQjrPqloAzkcf54bNLN2T6485mDK8Drcqt42LBPNA6E=;
	h=To:Subject:From:Message-Id:Date; b=CyqoImlcsGfjF1d54bUYxpkYSuboAwhe5MaKUS82qrPc2NVbTpmrT4OwtCkTnw129D2UagLCStUpqiL5x7rRVDtqpqBRVD/IZmFmmC5toE0EleSj8ub4ZeNszXXXTF7HEY1H0VAoNHSTFaXhycuKwbnhdBRvwi1tj6vaEhRni3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHb5BioH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHb5BioH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7C7C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790811033;
	bh=iQjrPqloAzkcf54bNLN2T6485mDK8Drcqt42LBPNA6E=;
	h=To:Subject:From:Date:From;
	b=DHb5BioHp2VDHQGfAOgk98g6o3QwEHqC86BBCfESyBNw9agwZ5a+T7NEDTgStWEpK
	 N3YMaKMZkMxUsJIb1w6bMIv/fKP7gyN0PCfiP7aK9DncWHxwcIFIHiL2KpGxlMr9lO
	 NSHh4UiAtjDjDvxl0lJ6b0VwQXaOnIu2aNiUSCYbIkVXJRxpuRxatjwit7K1RuB9Pw
	 LFdkieaEr4xTIGzXKCvEWn/++YxzoIJCr57zSBQCfcih8ErqhR6Dpfo5EhDtWSwhaN
	 2f78NoM/nTyet3chKfWckKpN3Mvu/C9PgSrVJKUD5KE/xKqB/nLdE7oiREOFP/VQWg
	 +8bLNZv0AS/9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9AECA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179081103368.13922.1324858817387327602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 979e7ebc96b0f2c6fef4c52cb912236157cb3f5a1ae30e7e80abb9c665c4cd99
Date: Wed, 30 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790811033
