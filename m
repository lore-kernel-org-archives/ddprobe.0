Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B7726AC3
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724708754; cv=none; b=QCcjNqtl+JGqJhcYKM4ZZYCe5kQzedZ/S1zBnrjqf1M4AAJPix65DyciXhW/iOyKhbT4bEp1mUQQsUgtkzLmRFXstjQrcZIwBu7ruyW3+gR80GoBCavojJHKktP8FcnUgZwYpExhp8Qz4ljSK3vuY1FE9bWBuHC5hycpXstxgz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724708754; c=relaxed/simple;
	bh=RXvJRBR8aQNNxYIPsyTuzdwJ/9cypHgKIXq1ZcdgRB0=;
	h=To:Subject:From:Message-Id:Date; b=fuISeW7Z1GRb6zmbvRs6TQzcfTNizqCymZqN6u5mW3RRakP6rTfSaU/d1jpWemDI6YzfoeZkyR5sBlXUggStgZ5BFwOdhI2ixs6aOeHY3C6bI0EdjWg4UEDagluLA/TE64h5Vs/OuDWkBN/VjPCgA2ZJomI/b7ez0eBC66BTF4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QyXSl3QC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QyXSl3QC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79B5C4FE83
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724708753;
	bh=RXvJRBR8aQNNxYIPsyTuzdwJ/9cypHgKIXq1ZcdgRB0=;
	h=To:Subject:From:Date:From;
	b=QyXSl3QCH111lW9aJRAvOUJOiV6CMJVlzsjvD8MlkGZMWSmiGVOeK//QRZ8Uf9pUW
	 KHtqz0dQ0suXWnGB6Bw1F3JZK4wj+DWQd3v7a18TLH5sJiL6f/XLOs5ZAnBdhqrwVX
	 Jabyr12UXuAy/IthJCPkvaAnDoOHEM917nl7jP3TBvW13PhQp521OwOTasDQVzoscY
	 kCPUEmvkfWlF7w+p+rw761guc7dOdHXewwvTc+0yv8P9DE8yzb4h+O18S6EAEayy8T
	 RUVLwDG4H9FWJs7g8Mh0OY4rLRsyB3LTlacUVb94tdfbsz0nMexJ4edYjpZQU5doPQ
	 VnojCPcgatdSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9471BC5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172470875360.29308.2421279058301399594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e48d4d89216513c3b258dd83c94db3ab20b76a8c54c2b16648ff6cc201e8cb0e
Date: Mon, 26 Aug 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724708753
