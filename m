Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2756634D939
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770797694; cv=none; b=bs6qjhJrfup4BmzOtcuOfVok3O3oizE1+ua37vh21gqqjQtpBVtzNQR0TwJrGw5G/SQbeSBNIUPdBToXDIHOJCgk8nu0LfLLzAsUwwAhtzJBzh8KkAh3a26wGaqF6SNmuw2jRxOdj+yEOXz1bXoZqmYkmUYhZCjAINzbAhQ4ut0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770797694; c=relaxed/simple;
	bh=abQnpfur+K6yoMMqL43vht0fLPSz287XR6ORW1bLIN4=;
	h=To:Subject:From:Message-Id:Date; b=IMmQd2M7n08DZeusDohY//3wYKu61EQy/c1NOB0w/ManH5w2zh409O1qBR5rUWEWJOZsbZnTLCykcFqt+1UyHMmAuCB9SoKhv6XD/51QWefCUDJ9z8iW/OnelLuu3O4s4vjlbikvUQkV4MPOOP522i2nqxsr2aVQDAz/0gHJMTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZEwgjMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZEwgjMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AECC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770797693;
	bh=abQnpfur+K6yoMMqL43vht0fLPSz287XR6ORW1bLIN4=;
	h=To:Subject:From:Date:From;
	b=rZEwgjMcMkVQB78fWyZAWRAF1IKCYXdwKzWVIM83vRSu3hX2r/dbgg4V7CuexMcFi
	 wZXTYcgU2LtCya+zcV5OhgMOwCsaRs8gnfFT7KgekDz4vmcfhej1EXCU7P7SM90pzC
	 X2qT8vrrPGAA16LH461okkSZhk5ZwUMZPxFCQ22r+Pdy0HdkwWlLPeRWE8OgU1JrY8
	 vZZ1wFYq3Vq3ElUcbRKTLkH/CLm+Q/3QTPjFKW6D/VY0QhY2WJd7O6/mr1A7jcbKor
	 IU3bKRml1idvVPGpiWulQrmV8uCxk2TpdtLzH8Y9EgRSYQrrpgLCyhVyrnI38ZtwUW
	 QdfWYrqaxy0Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A193EB597B
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177079769361.4260.13184499696285791184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cc3c34c6ffea5a52598bf8eaf2030e530763f1b3dd4664fe7f49291beef74f4
Date: Wed, 11 Feb 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770797693
