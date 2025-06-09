Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B7778F4E
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749436194; cv=none; b=IC5BO8pe8YcUSAHOL2ToLRDfF76mZEID9RPAdpQrBzYFTTD6n5mnkbD0GzTY3ly0hWQBIBvEnr3otOPOGbdCuwsz0AyErO5uTiMuprvTtzQh4svWsxbFQ+itKG5nc4Qwzl7OdxQNyY/gicWy1p/wjt2mGgvirkuAS43MKPcxdC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749436194; c=relaxed/simple;
	bh=zWCrvFNbL14vqCpF9yYMnVoxsMkemivAlb0cPCxkwto=;
	h=To:Subject:From:Message-Id:Date; b=QBjOsuR/BWcyvbOvERV7mEiHOmhJLoU79SDtgWvjWVu6ds4omeMj0FeQWzBW57FaL0/IoEjEoHF3bzKfsw4CA3Q98Cgz4+Xo9G+KL5JlI9/VVzLiiYuobEZGX77bhwTsSrT8qiavTHIRysB2LoDG0gtyPQxjMn3XX8CtP3zDngE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaGxOmRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaGxOmRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8526C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749436193;
	bh=zWCrvFNbL14vqCpF9yYMnVoxsMkemivAlb0cPCxkwto=;
	h=To:Subject:From:Date:From;
	b=qaGxOmRE5hypSzXrbpNSXjYxdMFW+PTte3LtkOHgDoEGw0u1ZOWtJotzjipIhkXHP
	 QdTS/uEXnU5lGDBz57C0yy6Dn7OSheh3AekI9GcH7XjYOZ5GPbpZomQEp49XF9gsAn
	 Rfwvd1cG+Ysr6IBeXxBJFUk/Q3FtUkB+LjSVx7VVveLYQnsvwyTnGNjwOdThMjvvvF
	 oz7eSOGOrGklW5sDeP7/DI4oq4uBHxt5twsbhLTuF+b4FKG9/grXWW/+8oG1kkqUSv
	 AYD60WX2H/VHXnX6EhLXKtYTN5g9Hy9vZur4qlzcnGG3fbjv6Kt98lYVEEFPtvSlbs
	 Sx2WFgkJYmgvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C45C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174943619357.7397.15478132309641807393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16a80ad26ba7401429d6e8ef01ab256ead9845cc213f42e4cd6fe3c838f4112e
Date: Mon, 09 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749436193
