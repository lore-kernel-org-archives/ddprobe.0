Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382181E04AC
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730937354; cv=none; b=rvTirmJKUQo9BR/2vMVpFFhd6Szje0LVlmOjbB3UadMXB6Kn6nFRa+2gBomoXitB4MnF11S9CXaKc+6EK9Q/UIm/FlUrB2nUKthVHnMvi7r5u90bKHSIfcmStFtUGt5WsvUvrZuXWd3bHIBPA+gKD9tddpsKpKQ7mX0DxZ09oUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730937354; c=relaxed/simple;
	bh=U4CEAL1uKFv6JLF/zZ3ey0uwIQXuBCawSW8iLBvSZ38=;
	h=To:Subject:From:Message-Id:Date; b=ew/Uk8tRi90JIWHrsc80RA1C5lXwosb3MotwR7r06mHaQxVfFpY9l0iCCcP+AwUG+rN48dEwTdqJp4DVuI0yAbsa5Ue5ba7lrJtIpNW7GbZutZpMpgdFHzCvgAaD66NuxkhGiM5QIvWoCysn8lZoS9KXM6zuXxef1gMo7nlqEQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7DH+Xt3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7DH+Xt3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95C7C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730937353;
	bh=U4CEAL1uKFv6JLF/zZ3ey0uwIQXuBCawSW8iLBvSZ38=;
	h=To:Subject:From:Date:From;
	b=c7DH+Xt33XBUo1N6uSMEVRHZNcRFqW8o/8yZBiEamo+pckCQJ+u40vIM4+ROXxHIr
	 0QhwXJH0bpkPDyvJafz2m0rLJCNqVCBdxXdozPSi5E4KxEtCGzpdan7iU+tnnic8se
	 aicTcu/WkRESr2pvBD37Fr8njR5xDpdIyMltQ1+AW2FVYFo4KXJtW4e/NxN5BbFFFE
	 Y6izBn24mBkaQJBw8EhM9j5ufv7s3ZBuTHfJNfKZpgr2bFuG+Tjs22p7DOMVLCGAmZ
	 2ahkI00SqrxyLBxkXshLr2JoATDo0L6JRuII4+FLlKilhNtv5Odh3T8Mji1oLpaMyA
	 RRLz90Wd4YtmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F26D59F7F
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173093735360.20838.15831627415509233644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f95e741f8d8ef351466372d53e5d8dcd6dd57866bdcded2a0bf3ca314e0c85b
Date: Wed, 06 Nov 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730937353
