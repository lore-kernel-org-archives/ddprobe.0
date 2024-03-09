Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2434520B22
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710023897; cv=none; b=b0+fcdN8JiOLxRJUtqzq7YFqL8HWgsevMPwABzAZYTk1gn4gqX22aP3AA9SIuh1e8g80EHOnoPUbc0/7sLL4gzaGjWj+Jr0wi5WGDs/PuwgUV+IWQWx92rVbzcrD1xQ4tGwRac/iXTXutd3xI4z7AkXUM+QXCgmQ+gQ5+iJybuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710023897; c=relaxed/simple;
	bh=NvU992nuCbPdYJ7aOoNAnQRgNmf2ZbZxf+ml7FB5Av4=;
	h=To:Subject:From:Message-Id:Date; b=dAlwNZWILPRq/cwwsE5YmlqQFNwfmd7P3SxuGYK+yMByH7NMYPOxdDBQzLTL6XKaxHNaLi6k4HyV2Nlv5bDc8zVtA2Nlvm23Qhq/3xvQv2TFe6+sDrxwUxXlxnT+FA20cl9EkIqnPEE+TB7cX4kOg7OJf5Y+Q01LIjXIzbNmoHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9dkj3kP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9dkj3kP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DBEC433F1
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710023896;
	bh=NvU992nuCbPdYJ7aOoNAnQRgNmf2ZbZxf+ml7FB5Av4=;
	h=To:Subject:From:Date:From;
	b=d9dkj3kPxK2xNquu3/jL+S5TUhIQx41RQD0lOZND6WyT/UClEa7c+siJBh2C32wpi
	 7Xcuv3ObY6gpqPqY/Dmx1KPPVMJtVd8tek2djqQ+dJSys9z96aCezT0fMruZm81bcN
	 DFeWSIdolkkIinnPblfwoFnOGn3yzLAUN5VIwanOSmcjrMLy070FEONUu3U6i9c0vB
	 bncGTR0IuzLU3otxpbjy1TsCV/uMAnu+xzrqph9aYJfqooooMUiK6+8l6TzgjKt3wV
	 f4Iss7NALsFmqcEYoWWxckIOgIJgoJC1HT0PIBeLWR25gHmDgi0grzSZSrVOve1nZu
	 IjVXJ7LE+TYwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82F62C54791
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171002389646.32123.13162155013645419145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a94079bf08cd179ee17c8e18a0ae11961c8e11471b7ece967e5d562bcac6efa
Date: Sat, 09 Mar 2024 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710023896
