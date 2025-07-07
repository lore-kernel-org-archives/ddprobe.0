Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CC2EACE
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751865594; cv=none; b=ku6jvBzkGW1KBwraQ6bdZW4XFRBt9B+Sy+IUU49bzg7AgJkZNXZeNkv4N+cD1Oxd2YGJf/A8Gb7NtEDQJu01kKmw0qj8bktgDflGnmbQ1C3XwuVC3xCsSM1NSZU4rmOvfGiZ4MA68xWH3y6ydc7Md5xJCqem8e6oXGXR7VGJOHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751865594; c=relaxed/simple;
	bh=HGNNqv455vBSwUOXmZHhRBNSlryQyAO9BFzL9xQqZkA=;
	h=To:Subject:From:Message-Id:Date; b=AW06tnoMHXPRZ3c1TKs9qYWoq1EPNqbvn6DHjxYTgNbTwDiilKkckNjqg8V2m00Mh2TXV1iKq/OwSxSYf68IOpqPEhbNgRas6kkIs8W04bBScRP5X+0JyzDOX93/BMyohHu26gsrRu9i3doHpla0rmrY3k3TIqwIu8Js2Ay3msQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Br9SGwGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Br9SGwGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A401DC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751865593;
	bh=HGNNqv455vBSwUOXmZHhRBNSlryQyAO9BFzL9xQqZkA=;
	h=To:Subject:From:Date:From;
	b=Br9SGwGbNQGBHi7W5WEliLApcxQM78xhwoP2ho5A0v+C8LWmHf1Udgi6uETVhIvBq
	 /9K4hU4hDPh/2tINXk0SBAxbFUtK3xhI9i32H2L8PuIWjpf6qllkgFJvKnbGhdMhC3
	 s4VMl58JrsqTkeidW6Q6LxVUaDJ1CNS8H5hUXNluy6QXsVS5D45BsWgocBu33leeQM
	 YWeO6QxPB+5P3mxKO5sjZ0SafTWx9ela0vM+E6EYwZKZfw9kArqT/6XwKhSnkAWAS7
	 XSO8ZOQ1RQ4JnLdKlwA3Jy7SirebT2pKTvq6KHjTVXl4DffEnrC7Sxa0tnsvmZyHvJ
	 rcFfTI3SyZcbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91999C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175186559357.21445.5567684170843851423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1d6286c3fd57ce4ffd80665afdd0be1d5fdb5ded0e8c0e65e8b3182ce15572c
Date: Mon, 07 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751865593
