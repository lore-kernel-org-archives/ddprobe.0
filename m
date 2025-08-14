Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE982B9B7
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755172794; cv=none; b=hRkz3Wyd9oQKKS92vmcqT3WTpyCR1FwGv3OlWi4gl9jl0GI9kYKfQRevTnnz6d4cVxR/wXGRQN/8VNomNxr+cKEums8G7RbtLcSqyzDcLPE6GSl20BJr8+I9WWppRGQIcy6qJR2ukMvtyGH5LhVNfI1upHQHWM/z2Cl8s8ltw34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755172794; c=relaxed/simple;
	bh=Gd531htPmLH6M3KZf7kGgq9+qC8swAK/CGrcdFc1wlM=;
	h=To:Subject:From:Message-Id:Date; b=tpijBxlKmd7LWcGkob8P78vp8Pbk92cS30CwIAXmKHrubVC0DurTqTieNU1879I+anJQQP/4XdRy0SnBGlOW4BvuI23Pq9QwoXcI56H1+JgT6rtuglWRcwCofFGc4qyhxsH1ahUATOuYsT2pYRZZV5/7tSNUM49Ajcmnr28RMKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwZKtoi1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwZKtoi1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E875C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755172793;
	bh=Gd531htPmLH6M3KZf7kGgq9+qC8swAK/CGrcdFc1wlM=;
	h=To:Subject:From:Date:From;
	b=gwZKtoi1fe4wJIe/cCqB1yTzbDfi3rbuDW9u1MrHn/KoJBYc4/kxSj5/6I0bZKR3A
	 9OCQtiww3Asps4ALdbfAoa7dmds/5iQyEmOQ1syotH8xlh4qVQ7LoBFA/jJAeGkenf
	 yV65Gagc+4YhYZEb/fJ27fGuhvuQNWJU2lbbuzDms2WaN1dOmfkm7bu9ptnoXCHkkR
	 xTYfqw/BMaumCU5UGak7+gn9vyYUtK7+T2/zqL1cAZwaKH5tJzuPbSf3Sovtl94OZm
	 CFe5AgaHChRwb67aIRopDKnZN3Du4cIoVXzG748yoFa31QEsmfuzygQkxS3ASillvc
	 jPq8gXSGBQ3qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E065CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175517279357.22676.18197561603861918156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71a4b51c8749702410db138b0098e33a99b61040c31f66a47458b32cfde5ab58
Date: Thu, 14 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755172793
