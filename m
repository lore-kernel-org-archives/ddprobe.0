Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E17693AB28E
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 09:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789723234; cv=none; b=MChIML9gAN6YO9/jPWNMjDuKr1prmp0q3IJ9uqDQh4g27GU1BsbvxRaDV/b8HP28Fu/UDAmEj40IaIZ7mqWb7iILhITuDEbuS7fc8OAYyeQ/m6AlEJyyjjXWAC+dat0COUvBvKzOT7MycG+mOfNDD4k80/WJIualurRL4I46j0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789723234; c=relaxed/simple;
	bh=IpEXzAiHJWHFRLLEg7jPpSwN2qDBcQK31EHdrHQNKzM=;
	h=To:Subject:From:Message-Id:Date; b=PZQO0NDyDkMpmpF4mSXfvtYtz1buFgeR81jgAJQ+ctuvkfZnuh9Ogq+KNhW73ZrtmDoNVhBp6knbKt3iUMu0DbJ3glinTI7OHSW50uQi+O11b0DjuSZvyQC+rPtcSy6v3gnxGI+x6y2LGaqmVko+XztFHEUPzWY/mtTnwN2/I6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OW6RH+Rx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OW6RH+Rx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA66C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789723233;
	bh=IpEXzAiHJWHFRLLEg7jPpSwN2qDBcQK31EHdrHQNKzM=;
	h=To:Subject:From:Date:From;
	b=OW6RH+Rxw1cdh3Yd11bvUwTtyHM0y8nV8y2yiEf9h7K/mFGI3Ydm4fYyeic7RjZy/
	 Sum9bPSJslnZQf1h7o5gUdb1gmsPoPk/5pHcIn+1ARxBTG9z3tTIBAVwSCTt2SEj78
	 V6HT7As4T5xSFvV2b8Zh6YPNjZACGcNMyydG6cgaOxXK9cwsVfiPuTkz0T2H9O/jXN
	 kiSzjMFx0t7UKfW0qxNRSTpT5babpcGmmB3SqFRJSPRJbKqUKohIohd0GXmsbk9OmT
	 af7REem/Zx+wWlwFZT+ifz84uzbXHnaNNMxKLyZm14zihP02tQMCfeN+NYA358QSRm
	 1p19tsXUtXl8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4F1C982DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178972323369.14158.16748496089942402784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9848170f421ca28989faa1c0361fb69fc19d55c67192a8479799b3934fdfe14
Date: Fri, 18 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789723233
