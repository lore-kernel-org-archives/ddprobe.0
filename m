Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7B62B9BF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749517794; cv=none; b=r5yh7VxilDhYUs3boQ13A/fUW7xQuXmKo8mUg0sjYe4vEMHywQxnqPfPpuaSxbwBAPIyJQfE8O+aEUIl0iD8V64bH19o4MLJ96YtVIFa9q+X806osTpbVECgAXJZ2r4vyw132w2YZ0EmC+Pc87Yc09lCJYaJybA6RHm+UPL5bjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749517794; c=relaxed/simple;
	bh=f9k43dCV2iEM4Yr4O/s1nTUUx4lBuDOr3jcCziTdChY=;
	h=To:Subject:From:Message-Id:Date; b=cE0LJp1YEUJjNxw+izxMLTQK1d8+7iY5UVfwfOAE08DmFW3pQzuK0qtYkjemAr+V0mvLCcuZfSJfV1j9FE+aiHOLnwv1KTploDk2qnX2dxyhmCsXoP9+8ys5sEQ/yag5Q5TrqO6whQWTO/k0fuBz3tMY4ZtkcbFcLN0fZrojnk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAZEf0PZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAZEf0PZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D35C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749517793;
	bh=f9k43dCV2iEM4Yr4O/s1nTUUx4lBuDOr3jcCziTdChY=;
	h=To:Subject:From:Date:From;
	b=dAZEf0PZIHDQt6oKn0+FlwOmsR0nP0sCWweRUl8hP6kt1rGH/qOmz/x5uywQr1gbu
	 sNTLGp5T0LbqaFp3m1CZk6B5S3swCh+R68vKJ00I2ecknaB0XgDjMluPpD6YfVB5vx
	 /+krJ+mWBYMU400DCURN0JNJg7/aAYfpUPgBG52RAFuzg0gWPHUFZ/MxBfCj1/7lLd
	 zIF3B7KlIKXakPfNEAFiEH333h0LKAs3Qbum84JY82GbKVVe813NERbbNXVA4zfvKp
	 F6UajYcxotzQA5FQiNUPwyUvJkRnfOv7bIclbUb8KCarxbIDU9m8+1Wuca9Ydch05a
	 frnGFUmCgOoxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F55DC61CE8
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174951779357.20320.10761992863669929957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a9c79afac16288e583d431a0b37cbf4edc9903aee6bc855e92eb97582a4c91
Date: Tue, 10 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749517793
