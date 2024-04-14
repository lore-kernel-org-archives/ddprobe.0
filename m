Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED8822EE9
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 10:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713091163; cv=none; b=GJZxsDllCnyC+ukdpezzVUeQj/a0SaAudm+f0UwXR6PLSG4NSUcgq5RpUgTD/KZPnmqFiq9FBOhC9XA9pUa0Zh1B4wyYX7hZRQAVEnZVczFck6kIdDz5Aflu27n5eUbZRnBUcENqqjnW6BInzZC7RWjHSgsUHFF6NhttrR5xrd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713091163; c=relaxed/simple;
	bh=1dCqQgzvgKMwZvjQkIinUWNq2k+Gs33fSvYk1a6IWzo=;
	h=To:Subject:From:Message-Id:Date; b=HwOPncG4292xR30Rq5xldoqfpNzEpesjggnu9Ubsc+wpGeu2GszwU9lXtEgETfLYicJxZeITKLCaQPPpUk4MYlumOfgcHwadw6GIW65pQOiSq1btPYkPUqREXsQXtIWDYcz+RRYfx4nT7AKPChQLMDOR0kLhxhh+Gnifzd9iQa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jK/Nsjlx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jK/Nsjlx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC8FC072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 10:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713091162;
	bh=1dCqQgzvgKMwZvjQkIinUWNq2k+Gs33fSvYk1a6IWzo=;
	h=To:Subject:From:Date:From;
	b=jK/NsjlxdVQGqbvd/LPbBARO671qf5v61ERt4xcmF/KKTxz3bjVyq2wwZP0k+ORzc
	 IbxTU02IBFHClhryZL9aYR2tblEmCViletVMTZI1sYXk9ypeSIDMBEHIKUIWjK5/7D
	 agHyZHFSfziqUD9YvdGljZvknD9o/Q9Kz6vZuxdoiva3B4NW0cZRdlleCIn504wIFf
	 jTl2L20sE8pbdN8+XDgWa9Z8UfWheeOzOdTyUep17zDvuI/1XK1i9AOX88ffqhP5SH
	 fOq9kjN80Ct1j9O20YkZgZ7Tcujk8Uij3kqRwGmEtowEoAd/agQgXkXkA9jVCjz2Fr
	 ez0NOYzgHtjWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC31FC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 10:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171309116276.7778.13554741267618449294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bd770f83fc1f2ff9b909c85079c075d916549598c025599c5d447a679ba247d
Date: Sun, 14 Apr 2024 10:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713091162
