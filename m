Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56420197A69
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 20:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719521663; cv=none; b=jo+E76Zw3rs57ARgtEAVbCtJ3RCx9VogR9HOrDjl0r+77GJ38i/WVqLkBhxK1FpbWjyMivg84n7Z2eMeMlOyWWHwW2C778JVp/Q1Fr2b9FyfJUhzYThKCJ8jLQSo5lb/kpyO44T95vvT6drUsndS09lShcTpNvA82LObNNi3DMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719521663; c=relaxed/simple;
	bh=HbUiWSekvCHPJuJu71y6QhXuF256prI724V6suiwmUE=;
	h=To:Subject:From:Message-Id:Date; b=QD4lVUmeaqIgUqFQOOB+PeALRdPTwLFUbeJyNBVAK4msnnppOAV4CQCI5e7EkLEofSLCKWsW4O/q34ecoh8FeZCsU7Ra8pq4paOlfeDS9X2mUeadBw8M/b4zSj5LEQWzrpOHk1OiekAdurcsOufbl34RuovFV7uHWkSerik1Wvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyaxtvyC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyaxtvyC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5A76C32789
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 20:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719521662;
	bh=HbUiWSekvCHPJuJu71y6QhXuF256prI724V6suiwmUE=;
	h=To:Subject:From:Date:From;
	b=RyaxtvyCOMeWSUSHhh/8/7XW+2C12S68W/2rXh3t0txL2EA5W+l6NOdUimz5HCpit
	 QDBZSsvtHJ4AreaCZ2pNuPyIGy7dB9kPKF60FysJNvRAmhHqKW+caAEyPXe898ggo9
	 SN4cVKwr+x6sHLvEFHA6UNOgoI7vf4a6zyHxLr2zGcaEj49mLwlB3Ixq94JMq7gyNX
	 HQZRXXrknWGiaXB9wNtxoQz2avPYeb6u3X4NPUfHlbhXs+BygrffeJi3865ZFTywK7
	 jc9CQKg8SCZrV4l4v1o6LX3ZqrC+RRJWcS/uQ7buO72labf9EeUrvoYnM0wjncd/u6
	 dTaHXiXuC3atg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC828C3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 20:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171952166282.26711.10574429391398512632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd4aca052c21c18fc26dd1b1c7584b4ad5b3987ad808b0da67716b0f6512feef
Date: Thu, 27 Jun 2024 20:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719521662
