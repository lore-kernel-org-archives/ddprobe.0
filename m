Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52EC8481AA
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722606954; cv=none; b=kpzZGL6tlNWWBb85Wxes5BFPjR4JbLhf4RvCG50g1xE7rQGMxVtuxteP8OkCxU4b9Q8Ln8KQKLv1uHCVj+ViWE0uOuFTmAlZtEpQMwJ9ZUFmmo+kb3UdYxVvrgzyWQcsP/wm5WlmkMXZNUwWMvzI+de5oAhSTWkaWJuf+zguhtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722606954; c=relaxed/simple;
	bh=mRKa8Khmld/tXW6gKBms1UmHSi9rpsIoKtDngwzhtAM=;
	h=To:Subject:From:Message-Id:Date; b=Ow+cbgSomhq0gRLTe0oC+g8wTVuKVwuYeGj7LxUV87YV26OTMuwWSpp4PtSzRDAi8DLGgPxNqbF4R/Q6ayPumTcznHTw5c8I5T6Yy0Jxv9Vq73bKqnRXXlcLrEfwzIWsE9NRFweaxScxyoUTlBavVTkgZ9YzSTOK/AKvyxCHuNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sdG9v2DH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sdG9v2DH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1814C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722606953;
	bh=mRKa8Khmld/tXW6gKBms1UmHSi9rpsIoKtDngwzhtAM=;
	h=To:Subject:From:Date:From;
	b=sdG9v2DHTcIuazGhUyh7GDEWqaQ+aJmSjyzu3EJntYCpQOh0FQgaawZM9IdjFIOTG
	 YBFaBHWuWrnY+KQ0iahqZ1L3t5m7VlzzTL6ofifD+UQ+J6orFpB3Bswn0EvipB1pQo
	 0tb1eYpYBocNjcPuPnCUaMDh1/ag2j06STaaaOl9WEsoFHCudeycBD94ZpD+TQmF1e
	 7jpqgYSG2UKDzFY262OHqd7TQJMqipPENUEx6lkQq+PhOu9ZwMOqcp3YADRK6XEa+C
	 9Zyx2RN+fQCeF1JTv4JiTpZ2Io53W3hxTUhAHoDYehXWOF1S+JswneImETs5B8T0S3
	 ZgDyBKkSp6Dyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC6AC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172260695361.2197.6018816508309829530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33cb2cbadc48ef80134a92291cb3cdac1dee6b9986b7c58c2619d07a7966105b
Date: Fri, 02 Aug 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722606953
