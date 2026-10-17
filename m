Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADD6C3D994
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792245634; cv=none; b=ipbXsKzFTiWAdut/UzGXeGw4WwHe4I8HYfrDcwZngKG65N/TmBQ0L8zd1MyIs4mtVKNpp76HYKbrhddBA2rSWkdifditYrOz2HGOm3O9SInPeK80F88i2yssihFtVd303SCmsksr1U+B828ovs91PKjhshcuGLZcgP65cu1+KZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792245634; c=relaxed/simple;
	bh=9r1GFBArCTXrENXyEf4JUJXHCiQDRyTxnYxwXXTl5Hg=;
	h=To:Subject:From:Message-Id:Date; b=JZv7IGNARPVqLg4HWDRFdUcqZQPulWdIOpFnCxTfelPHtPJn88KCzHOD1kStxoolZJ1EW7NeX6R/y/sHf4rAsgV+pOWqWSDdB97D0zsy6Zi4cXpsPm8LVMSCeUtQT6ABkaDEFHPAz6sIV+fHIYVAdTUpGDbr7azbx3O0Bb67D2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4PEyHP9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4PEyHP9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB717C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792245633;
	bh=9r1GFBArCTXrENXyEf4JUJXHCiQDRyTxnYxwXXTl5Hg=;
	h=To:Subject:From:Date:From;
	b=h4PEyHP9I5qFFcf7Xyip9YKwtG0sM6RfAlbPq21Cnn4IGT4ByLgkUssFd0ZLd/zmp
	 M0HU1+ucP0HWXAMMOIvTazmnoE7vjCcuxNfVFsXmK+qFz7OZ9OBiOyDASwIEYX0OBj
	 gERH9buTgrdc3DJutBIxQZe0lYrGC57wNJ8YJR6AqHVRuzI1NNai1QUtvV6E+PS4Bk
	 fbRHxSqK1h4W1YfzQ4Y1VoIABgzXhUQZb9ACUhliqL0N4Fbqf64r5qitwfcBzaFLn4
	 vTHU1p7/vehlbX/+N+OW5mVeovFKq2NgrP6rqGAWHp/nU9EaiSqWk+9/a7DBfr5vNf
	 b5debcsU51rzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5EC5CCF2C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179224563370.26744.13389223446153448364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f490c1b8d8ca11d13456d6c1250782a5f238f4b912176bda2325a06c408ea30d
Date: Sat, 17 Oct 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792245633
