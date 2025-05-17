Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3635B19005E
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747520995; cv=none; b=Zhv+IvbAgKs0nELTKFO+/UjqB4xvlaUU5HbbRKQTjsBUlojBwdpJGqXzPKiO5BHT4fHNjCaL9AWQw5NSq/CaRG1Hi3oDIJ2RdWuXXsZV4uQIITO9dy5+yiB6DkZTaoaTLqwqTo13sUyfVs6dsaPNu9U1+q79dmArDYjlP0JxRec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747520995; c=relaxed/simple;
	bh=UD56M8b0DRvyCyfj11XqfqX2aAAOW53Ebj+r167ntb8=;
	h=To:Subject:From:Message-Id:Date; b=J+SFVU++W6QtaKwN0PZx8b1FiNiEguN17WHlUr9CbU3zq88enzQ9pP0xbhQvj1sh0mfBuxHau9Bd65K3zRZgUSjUE1Q8jh3RlDWEeWXFPcbWIbgrD20k7l43Ke0itCspIdigYt/fnAMphOQ2SyILY05EmeXehqzLenCJRvtqQrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvrEG3Aa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvrEG3Aa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F67C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747520993;
	bh=UD56M8b0DRvyCyfj11XqfqX2aAAOW53Ebj+r167ntb8=;
	h=To:Subject:From:Date:From;
	b=gvrEG3AaxjaSkfkCNkh1RnUm11CO6aPWP0Z7cej5G6x6PrjPNwNOCZTEbjjsZw4yC
	 3mZiLFdBqmboQqG798q7aVkWchcDfYe9Ng0NZuJqGgelrrZKdXp02uZN2BMsYUG/FE
	 FuNQuRjJMIq47S+fOKfeSVIDac9onIdLfOjNiuC7l4xteXhA0ICv5fA+43ldeOKN00
	 97H86VW80Fc/zgkPN76CvJZ00M/f+MTCMpHAh+ASUjgsRn8cfJif8+3aWXpz4a/Pp0
	 j4LERm2FU4nS3dYDFZQkXmXWrLE3Mr0hSPZDwLzicpjg8f5RZ+3MHoEPcBy+sgksFZ
	 /ZD7j917+V6+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F75BC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174752099357.17175.12467509097174118753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20541eaaaffd597cd3cb20045b6fa0972f6782b0ab07963218cc8167625bcad6
Date: Sat, 17 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747520993
