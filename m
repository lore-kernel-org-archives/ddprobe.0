Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192FE4C63D
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707638297; cv=none; b=PGZA7isykD67AC47FoIt9uhiBKyPTLYmp4EkT/9vfAupBnKx78L0RLbSiHBeZUs7Tx48B0bTf0+whA9dmMqcP5DHVng868nH3Pa7CSPcfoeFL8rpIPsEa7GT7txomgBEg9rkaa8K8EnN542XvoqGsoQSL8RC023727hpZmmgs3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707638297; c=relaxed/simple;
	bh=BL1znt4KmxshkHqAaCHV0+I2VxyZNLiT5c5jqZwbmdw=;
	h=To:Subject:From:Message-Id:Date; b=ZHz1OA/cjrb5r/D9tdfukkQKRrqkqA8AJjl99fHwr3CaROJOGH5OZ/pGURiSjV7LR4e0Q1As71Fd0yZjjpEON3EhSa9D8x7XKYqtNCYCVqfP+CsYoHHEY0ckIJuhjFpOh9+3soK+aEnJjGIR7qyuBd9n6KFjn40Is8tok473XlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h27zqQ4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h27zqQ4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CF83C433F1
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707638296;
	bh=BL1znt4KmxshkHqAaCHV0+I2VxyZNLiT5c5jqZwbmdw=;
	h=To:Subject:From:Date:From;
	b=h27zqQ4YDTGYb99OEdVWirwnwYw5x6g3Eo5tEGvR5mIUr+hNSRtbJhDe/HNEeVOJD
	 pnesmmkhjcYC1JEVj+FuxWJIPQ/Q82wSwl9RV6Oba+AkKvkyTYntqzZlvEOO3BL+SK
	 B1D7YAUYr/BViDW0o87pcBu7RU6dAxXncyyuySB7CYuv3hOM0jVXR7iNqf/EjV8PTu
	 yLviu2IANsUwO032U6AQlhSaqFCw7VLyw/K3/e4KLywu8kaLgw4NBmcOJFVJqXyAN5
	 jxSvtlzFWRWSJOzeUJA9J5e8ZeKzojET66kdSuHpfP+h6CAVbH6IM0zGfchcahiUZm
	 Ha/pZ+Q1HTpmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B2A3C4829B
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170763829640.17392.18273170143870833184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c262c4405a0504967334f14cec90102815ed37810170342e0bc607df013e6df2
Date: Sun, 11 Feb 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707638296
