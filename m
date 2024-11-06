Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E1D13541B
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730868954; cv=none; b=Ipso0m+XpeCwQPr/gqGbYOaixIPPQyzKclBiCZWszgDQz6JFCX9wuherCqBSbwoQ0hBJ4LFsFFKcY1FKDHL0qy4bhWG8+NVwhx4YKQMNUSiXBc47y+zee6eiSz2ziahCCNyqwc5Hti41uBznpOnRhxPVT8afqSobcwWX6KAsFjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730868954; c=relaxed/simple;
	bh=AcJ7VJOAZOulwGZE3HXxoRZPZo76wAJ8oj3lIS7dx84=;
	h=To:Subject:From:Message-Id:Date; b=c0MQRAvnhVnLaV1DM7SjCV/vKu6jLB7dzfvmoNCrN8k21+wj9H/AkQiYFNI48NXO8B0mVcH9v7u68VoFQqrMx1m80A6LZy2LgjHuVA/sKbe9dvjwmoXG12/m9MU8/Rde1h+Fd4SC6CG0JYj81K7nbzEwxmP4lrh2AJcsGAdg5pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8cmxroI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8cmxroI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE5CC4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730868953;
	bh=AcJ7VJOAZOulwGZE3HXxoRZPZo76wAJ8oj3lIS7dx84=;
	h=To:Subject:From:Date:From;
	b=i8cmxroIV4O2LEwULDbpzBlqMteKXYFrg5QJRgXiFB2WWGf1g3lr6JpIxoQweh5yZ
	 M5T/D7xg/iPQzkWgUlPKhABKRJfIA9yDTzAsNXpKOZGIDVQH0AP3HqljodkSvE6xgZ
	 4Gr8AasYO4ruVeXN8TQp24wWI459e8MnqIWV7yY1IB7e+T3ET5Q1QRR6wdA4VWH/IZ
	 FWR15KGYadL0hc8XUqEG7eRQbJ5AV0eLQbiQfkGV6d7KmpGWvXioF+APvzzLgC4cvG
	 OuL5VSlwJ3CNHWq3orNQnLv04oVNlaLNWtjrv9wp3ZVHtUTBtHsCvr8kL1zMm9ncDp
	 T/f38QLxKeCyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B24D1CA17
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173086895359.6553.4391749409393233991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 382c5d31477df497380c11bc7d2e624746c82bacaf0174981d38da0ebc1c08a4
Date: Wed, 06 Nov 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730868953
