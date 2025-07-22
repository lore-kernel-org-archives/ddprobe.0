Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01CB51922ED
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753177194; cv=none; b=Y+Mv1fHCkz79Ig/xYPrIO8Nnl/hPXZKZOxEFtKcHDFba06diZ6+VEa9mMC9WVelLkb26vn7dskaOuXnk4TUY08dWzDbZAEG+gc0/6LPFnNKNpkgvl5C+HnzBMyw0VcTcoepuYGnWWsMVtlet4UCtQer1zdRMuqTilSnZFT1dg2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753177194; c=relaxed/simple;
	bh=0fQQpvXJpeJ4C+HowbpGn2r85xWRzqmADdNQXwtyTw4=;
	h=To:Subject:From:Message-Id:Date; b=cDjW5vQNgKyNU1r3syE9MgTVGCsj5AD0E+lgP87W8slnxXuEZJfPx7yoYFOMkZAvjSE/jragO2o8fa5DFBssoR0eMseczUu1F4zb4i83Sljted4RXbfygTJJpvLnxfKk6jra1UFUPrpe7iNxOsqFK7tQnhOYlZGgbCmuAcOW1VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIHBHeht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIHBHeht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0025C4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753177193;
	bh=0fQQpvXJpeJ4C+HowbpGn2r85xWRzqmADdNQXwtyTw4=;
	h=To:Subject:From:Date:From;
	b=NIHBHehtZlsiBU5rQS4/ISrI0WJfaJ0ZzHFzCp3C6Xl+K8tuEpLv/uIz4YIOkee0X
	 c2WWuvCDKqNTXxkuljyij+LZsQCy76y+A+TAUKRnJ/RpCx7HxXuQ8TrGhHu4wGPn8O
	 AVyTuLTWg2Q9kBlcwrJicqIurin5P64Y9DavH+RrqjvEoOPulxm7vEfq9AIJCkgUjS
	 eUtXQJwbRJVu85FCs4w7m9BQtJ85sZcCwXGWTDY9IhksocDs2THDUX5lcS7r6P27hq
	 psvSyhS7nv6/4iHzpoKYFwJ3DOlnCfU4PM20YLHxFGNRDb5xsgCFfTlLRYY8JcWvSC
	 +dTeeDgHBYOUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF33C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175317719358.20808.12772699851297408493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 015397a971842897db944204ecf6a5b771222381f1ba924eb8c9f2652da97f5b
Date: Tue, 22 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753177193
