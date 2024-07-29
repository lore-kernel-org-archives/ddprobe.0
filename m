Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338741B86D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722219954; cv=none; b=lnbqLXhL70aeilB2RxpE4XnIXGbF+T25TWWjt9hlrFGAOTkC6wU6RvX/67AQ2+ticoDqZB0qkhc2dURwz5DbEH1s6qXgDB7KtExTOIxhnYfKH7NL6z4ZhPXll6Tw6U+dL3kfy6OKRDdvBzKQGS8642+TT/p44BSe3es0l1IsCEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722219954; c=relaxed/simple;
	bh=OkTxHrGg5Bf02GKOCjng6htTcN5DJyeg8IQRXMZeVIE=;
	h=To:Subject:From:Message-Id:Date; b=vAOHz1kwxhiwribyzjvKICfmNjK/H7nyWKkjHHGUjJ9sDmMWIJel9K8LuEQyscga7nWT64rgPww2mzFuqRxIU4LEOxLNbgnQ4CEsCrPMhyhhXpCyIG1vpqlry5VVgw4yKk9XIBjaZbqs5f1g8P6sYxem4Z0qMRQzqfd6SYcv+XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CG9WBrRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CG9WBrRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD210C32782
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722219953;
	bh=OkTxHrGg5Bf02GKOCjng6htTcN5DJyeg8IQRXMZeVIE=;
	h=To:Subject:From:Date:From;
	b=CG9WBrRoW8jQYuV3czxi5Z3/QnCrf+avzWj8kdsCACIKdUp+hCx4tIZcqxSutVMXs
	 qigo1XnUs+JuIkthwK1Eax69jvOHL5gQpI39ymjzf7QomMG56RR4KlD20dP/QWlB0f
	 xXeJAGDJU9KuteorScVbE0DksbEWbPjCATpqhKjGwMTcQo6oJLxvhZknihWsqiptoI
	 6wL4lLq5gJkMQXsAaSaQK7lMmlz+vrxpg9EKefuJmBtx4tDjho5jVsndl6hJBg4Y2m
	 wXX4ad1AMADU65JCogAxQUGg6s2abkDTQ3aOizrK/6XQ2PvrGlxOXKQUhpjcePVUtL
	 xjJHePCKR8wNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EF5C3DA49
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172221995359.31095.10162781612420495054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db010c61e88545f87c6707351bba608d1fdbff6684c8091e88ea07fa48531990
Date: Mon, 29 Jul 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722219953
