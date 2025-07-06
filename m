Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FD411713
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751779196; cv=none; b=Aew90P9EfzVAwEEATeUrDmfuEgtSUZ88Yk6amPzPvpFHA3T9Hxkv6QFzK2wDGZLN6c8QYZmPsnheT5EujPNtHKZoZsFYUxctEQMttPGQZFD4IhW///JY+FYqeRQV+b5/ktk9g7kB4J/GAl/fVfCnZvYaPdSOWSlKtXQr/YRCcfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751779196; c=relaxed/simple;
	bh=xwi+NxX9W+F4do1+v/TVgQWkkNfydZx1Njkk4TYlwKs=;
	h=To:Subject:From:Message-Id:Date; b=IptloKXbmq2IerASIonLpF8EXUVp/K1QM0bMo540jyijlM+vPI8ex7mq+3UVJY6+phLHbwwe5JerXtavlZ6TY7/+drzdt44XoRMn2UUJ1zIa151alczTNY98hRNycRPlMrdVnZ8iWpA6yzniKvp2DAq0fFPxX50WxbQGmYqXnOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AibU44DE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AibU44DE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA383C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751779193;
	bh=xwi+NxX9W+F4do1+v/TVgQWkkNfydZx1Njkk4TYlwKs=;
	h=To:Subject:From:Date:From;
	b=AibU44DEkrp9vdJtq6viNjgTUOzcRGF4AVD/rIHZpEHhhJjtO1ZveTI8CllvNlSzK
	 J7+fwQb3pqPy0qDNwKuBX/Dbew9jy6sUkHHmG+rng75H2v6u7IxbYgUI/H6oZwuqiC
	 Wr/Yn8I5+3fGkXCoNfzd9DbrXq+aNadl8hMvinTCKX/LhKrpydK1x7wqSrnLNheaZ5
	 TCqj4LYgSCpS4tluDNLBPzeToHsOSi8r4G/DTrLmDxzgu1L/GfKiXI3ivNDkLUGyuw
	 y2ZGIqgAL5lGtUpb1MHcLm9hkQGxyoX1GtZGrHuWkVHy5MuKZ40EAWjkBlhXX/4hh4
	 HSj0MPDX7O1dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92581C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175177919357.21943.13880576710283818496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f6458a30a4fa56c150d350ad0357d94cc3a4c9691e5906bbcfefeff184529e
Date: Sun, 06 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751779193
