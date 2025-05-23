Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400A0293730
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748014794; cv=none; b=ACFYU40VM8yH57uOGHmlWBki/kDho/gUHH/RtZNND6isFb5P9Wq2kf8lRzwJHEgdi7lTvHSElki4I0S42moKOjLV/Hr/UQSEiS9F9uIH7k4+Jh2/VFeqV/rDqepi5cjxEtRK5OhfaxKvoXY92r5YzhUuqH/02bHPVp8Tob4QoVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748014794; c=relaxed/simple;
	bh=PCvHsAKJXxUb03PzEhlvdwY3HAjl5pKYKeZmMIDUmRU=;
	h=To:Subject:From:Message-Id:Date; b=YM9RSCBG+XyoWoqls5oVAyJhqfjnpFOX/uJyOG+ddXzwDVc59RsdIMHHYPEkY3qP54O1Rjnt3Gi0adWGE0dwaPkoZEO6YhBHuIuvDLg4gCEiYZgF8ReSZnMmkph77YI211LhE3yITdaYHSWoWywFGH9P+3VlkZN1PC1TeOc+d58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YmH+3TEx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YmH+3TEx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5BBC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748014793;
	bh=PCvHsAKJXxUb03PzEhlvdwY3HAjl5pKYKeZmMIDUmRU=;
	h=To:Subject:From:Date:From;
	b=YmH+3TExW4DOZRZ4SAwrN2qYZiSJ41h7rTNJwWwEy4ODM0yTlG2gHPMqIhDNYJfBy
	 rZE2OQgOc98iltUevKcWvlidi+xBj1PVsu4PLCumSfPmbG+3i1WkfH4XG6JwHqcbaq
	 Dt2P8+T8YYKPM18CSS+tsACMwNbgJLh2psNZhYTbdqD7OH8WIm/W5oQunEhfY0fhtb
	 ofCwgMRjnmTEDodc7rFUqXZ2e1DMXdPkzTIehAPvbesmIcKIMTCKvnBV++hBSZXp8p
	 w/HljgrpFUdOfNb8gPrA8cokHlI5naI+VftyDeZAxldGl1BAFqvjzq/+NQdXLKPSap
	 8oWgYjtbf4eXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA25C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174801479358.11664.11152050079616290839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db9e102927f79041a14590648ce52566b316d6b2c7354144b8e7b16d74ddf864
Date: Fri, 23 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748014793
