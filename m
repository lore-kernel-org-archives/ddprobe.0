Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5501C3CC7CA
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787130634; cv=none; b=Ra2eOQ+a+Q0TBJ4BERigwuN0klVhp9pv7ibev2PRfFPAVnL5kZ6jifu7i5aBqzl8EzdLketUaXuGyQYNWQbmJ1PzqXIawVtCicOIngRN6qkbDb2/Vwqn3iqXZ2Vx4mlnk5tvpalP5T8HoPiPyrJfBiZDDplWXP+q8C+uNmQeQAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787130634; c=relaxed/simple;
	bh=eJc6Ed1+9ekC0m7vPgOYQGXC1hXhRYlVC9C3DA6KX9Q=;
	h=To:Subject:From:Message-Id:Date; b=n+lmq2K6I98KU5zxkuuHonSnMNLNBS/5ZJs/FqTJSR6SfE74ThO1rILKwrsNlfrNnqz6EVjnAC8BKInFefKYWzxvQSxTfNvPPQhy2WLKp1xszPK806QU7pMrXoQEb10p28eR85JU4FWdZ60ulLhRVwwRMDJUlRQL16BgDOM+znQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffvFA1tz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffvFA1tz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D340FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787130633;
	bh=eJc6Ed1+9ekC0m7vPgOYQGXC1hXhRYlVC9C3DA6KX9Q=;
	h=To:Subject:From:Date:From;
	b=ffvFA1tzeRT5jfZHjrjSXcnZmGiHsbgQ+u8+PmUaFBnhQOay8RJZbxcytZa4mLO4A
	 24iz9F/1vj/uJ2qJ+gfKZQrvraKVsqpxmQvqQ/nTm0UBFoukUAcjdRBAS7dReDnbHq
	 8baU3OVT81CGrkL2Q+Cd9VIqxj/rKqyhRrpxTSkbDhI0VmoNdGy8xgUfTLImCxBMi6
	 +KQNu2VWQ3bhrqAe6lJJgM8XY3ODqrXc3N2kh98KzTtnajuVYaMEyosdfF1cpfcKnA
	 E+RU0PodsrB3EGV5MzRLEWt9FABuCLA28rksmC96WBYlre7BvfjvKFyPUz9uIlPzGL
	 Q2D6tAhG4D7JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA8CC5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178713063370.14780.11522746770465968338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebdc5f24e30aa4de3884223870abaa2447a54696c7bd00a3bd104cbe1d12789a
Date: Wed, 19 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787130633
