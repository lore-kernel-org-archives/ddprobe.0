Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF871135407
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706140097; cv=none; b=idG8IGD1f3ONVVRiiPGDeoffmlRwag1H4+5PDLpeThVbaM8KNlDI+u1/7VB07isZuVvc5ho7k7cZnR6SW257B9yScXneODatwh+BLR4AIvFCOLNfCT5eiGasm5SphBJi2lG87tlHhwBywmogia5DNEFQw8FJZFlUqwEFFGhvKng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706140097; c=relaxed/simple;
	bh=2AR4388K29U8rw8PzbWNss3ckms1jB6jPsnwNt4Q3fw=;
	h=To:Subject:From:Message-Id:Date; b=rx3b0r83LZMrG4hsDfZrNIclAhRlkV7hhMPN1bCEuN7EdebzXq4y/LqEPW3l02SpJS81F+UgRCiYyT1AqZIVgK/e8OJHAbj2MIdece3p0xfhd5k/gGx6bdDBcxL1aEuspYUX0XDvzUsFeamb18MdVMsFsju+nwEfHPSRhoxEQ/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xf+AWiZd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xf+AWiZd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 779B5C433F1
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706140096;
	bh=2AR4388K29U8rw8PzbWNss3ckms1jB6jPsnwNt4Q3fw=;
	h=To:Subject:From:Date:From;
	b=Xf+AWiZdpVMuUcYrapV68tm8Ca3hKZojpmusDLXKTuXoUYB+LjCyxs3AbBcnY4wzq
	 xFfLcFPZ+kqY4L2wZpXcfX/ZkDNsijFo9uITrHSi3N6t/4OYoXpI4/aTBmzimrks0G
	 fTMZDwszNom5U4OZL4ZUneJkicTQqVZrtquk2Bhr/82JOUi0O1nRi42+JeDhFgNv31
	 GT3s8xMU+LWLW4yWQXRe7tBD5Hrpq/pbLdRXD88SN+tspYtgXBYqpVWzlLM2YDA4Ix
	 zXxfrmHyeqBKQU4M/9c4qEK7DzkcdnE9SgMhWt0v8c+5nagRhiMuJTvXp+mxypt7oY
	 FBsb/DOLEplmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DFE7C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170614009637.11456.13259439539938518777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ebe3ceaaebb5923b4875f03a7c6c7e627b7af98479b071a8f858f32dae80fa1
Date: Wed, 24 Jan 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706140096
