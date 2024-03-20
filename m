Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1FFF17548
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710914297; cv=none; b=o+c+iYVlNxFNxj0Pps6tsHcZ5RBPNNliy8L9iVB1Le+pSNQLd98zEn0nYPhSy4ywKrigzMb75yp9BdQSm0Li/8kiC62uEYZzRSPJcKNJLTW1i7UvIz1h7KnshqtlHMDxPNAjvs5XyX7P3J7bkG2a8MGVkNu9vKRYww31KXU14b4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710914297; c=relaxed/simple;
	bh=WgqieaHo7S6Vmjdu6uX0+dKjZ52uEWGjfCtB1M3pIKM=;
	h=To:Subject:From:Message-Id:Date; b=mSTmXt4CAeliPL5c4TsPNJbou+36wBqS1k1UvKkd/bCxte2llbsctbvZ8IgVzQHPfRc27GVmzGrEnDAp6//3aO5YjRG/wGk95TB+pja878c3J+72ATuo5MBsZ0JfIB/Ofn7ajq1VIAk2P5Q5Q+vQs8pHiQcuUu8/915iyIWwGqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOARjtnb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOARjtnb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 877B8C43390
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710914296;
	bh=WgqieaHo7S6Vmjdu6uX0+dKjZ52uEWGjfCtB1M3pIKM=;
	h=To:Subject:From:Date:From;
	b=QOARjtnb6f1b8wXjzUL1hdPi85S/+5Ch+fsBS6tAdY4fU8Mdntpk8JCis3BQEMDqo
	 7deoPKxjBBfwaTBaj7YbMZcaKTRjzXkGoHZRepEKS8TQhZX+eOortCWZ/RRWmmJkAa
	 CjRCCJzDbvuV77RrCImXnTzmlxbP109oX0P3bM5qkWbrAp1CFzFUV9ydGlMJwmfd5z
	 0Bn7W/V4PaAtR8/xTZ+2pkCNHhLNyUN/xtqeX90ZSCZp2xFaYuwJMGSPMA3ziwf5jR
	 ot6/G5JSv+SXEuXullZU0ZZEGhnf2dcTOFxFi2csktyE5zbCgfL8G2DMjldeLYZRqS
	 4Ls14itBuDCYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 754C8C54E67
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171091429647.3538.14359595888410186311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5680f2d041ca0b98e2febb8b7dfa936a7d9502950d02aaefd5bb4cbe93652284
Date: Wed, 20 Mar 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710914296
