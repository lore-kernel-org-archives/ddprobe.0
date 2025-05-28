Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4041C20F07D
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748427595; cv=none; b=eiGt7fb9DF9tv9GkK+/yBb8cKQrnkbjczAzcX+ApYVHQPVaI5kIE1k+Ss1BdOYE0rG6abi+WUW3oUVtaNifuZ7OG11a0B7PMm/J6XrX1djFGhKle+moU5t5a+qysH1maa+Qz8oV1u8Uv5fpBEO+QEcS7rghskFIuhBXSOUzHX1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748427595; c=relaxed/simple;
	bh=LwUDhuLqC0siO4elGuW9mFzQmZxz8OtdAu7T4pInLSY=;
	h=To:Subject:From:Message-Id:Date; b=VDdtlTwITQgCS4Wr2geSgUI6LoEGDY8rovZqJd1O/7jbh1ooihPxZAcS4Nf7sI6Z2bvDDtT7/9Lc9ZWPFk36KbayhqijxrwwjRBIwTYV42y1IuGuigJ+tcP8ORvm39BPsm3zbslus87vCQB27QQkc4QeT1egurmo4fHJjY8essw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fv9wDwMT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fv9wDwMT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAAAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748427593;
	bh=LwUDhuLqC0siO4elGuW9mFzQmZxz8OtdAu7T4pInLSY=;
	h=To:Subject:From:Date:From;
	b=Fv9wDwMTi0qOYke3w1f0TaY1enrrdziTOw3IblEZTbkVmedsLaOjG8+2h7ThXrxKU
	 ggYUCgHohK225s2kGVbwnZ3aOggd5qF8Nr+vaIZazQcUYJe/o/+7XG9dcJp8P0yox7
	 nsii/P8fOoRJh5ZnAM03qYD4QUmh6MrkUFeGSfsuGqYG5N772DOA2npgQFGi/9eFfA
	 dqg2TmVN2Q3J58LAZneinKE+xxTzXe3zBFioU8/rryMpzAOenPlToxzt4M+IiuTzPN
	 lGcNaRDWtGgYssLrnpcN+UW1Lh9tUOz66j9CNKgfs37+qg8pK3M9hceSd3nDs6f5O/
	 kOq/UYdD45QcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F033C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174842759357.10944.16646516510556529496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e7fea5e8dd720646e76689006bebb2ddce553869121e7fb9a8a5c9b3d50dd93
Date: Wed, 28 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748427593
