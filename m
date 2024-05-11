Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A851E526
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 15:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715439743; cv=none; b=aOZQs6kvmLowBPD9uJerG9gjbSEgBqxuHuOpKHi2qb1U06uFl0B1+3fyseK0vegrDiwt7OUwEjhtZLoWSL1bM6mjaO9tvYHjnTYbufIJGAar4dngbIAlj5yf5O+uHFKNOyjmOmRkO5a3XgqjDyZtpDfAen8+f0EhxQOjVgdQVPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715439743; c=relaxed/simple;
	bh=qFlXDGYsSn5+QevbOKjR4auoqWUmAZV30pS5xn8aDW4=;
	h=To:Subject:From:Message-Id:Date; b=Tsf2L8DQKxjxKtjDdYB6riSZK0/7D5VapauMkWH06Kf0pm1wOiteP5NcxDuOW81RemIJUD1kdMgpJlHiZnrb+RBqmLVTR8IuugsUwAorXRdW85lE6p7QO0/vYPwrQgaPhNiWpdXCnu+bBiYBOsQPc0dWid5stGxHb/XEerISMQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BoSXQ51Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BoSXQ51Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6668C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 15:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715439742;
	bh=qFlXDGYsSn5+QevbOKjR4auoqWUmAZV30pS5xn8aDW4=;
	h=To:Subject:From:Date:From;
	b=BoSXQ51Qfh+P9DrMxbb+Tyj0xqF+lMlSLlQ0pCxcEp4aMZ/J3lb/+zlYzGaMs18J5
	 R8pEyO6BHaiWk6UHkjaDomdBID53fYlZjJFzJ9VXshmReDvC243am+MbzfvuX+d4D2
	 tUcmZtrUEGKDIL7NjjWkSSbkmiMZQ0F7Q6+1fbsjWzjJ1lqUgEKd2zYkOnXE+xpaN6
	 NXW2oC1m2htMD7S8fVcAhjw60os4CV0r81yvzG5/OnufUcXve44UPlM012msICC1Sm
	 d6tIgBOPe895whUYYC9xOSlBhiLr3B+RtlI3K2Fy4I1Fypba9Zyx94N3oAgzAF4wLg
	 CvClcIcT6l0OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64D8C25B4F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 15:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171543974278.21005.7329066274350794032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef7e1f62bedfa2b2f7e39c60f518a8338a4fda5e7ec16bc0c427f0c67dfb57d3
Date: Sat, 11 May 2024 15:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715439742
