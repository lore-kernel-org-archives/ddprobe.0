Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DF0A55
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743215994; cv=none; b=YbDjC6aEg8BqTwb/eBrJuMB1Gig/BOIL+IYZiJ82nwEKPx2sriPw+a2yeGpDhdBf0N+5CCy4bSIVPNY3MK6S250fa2EwFiIkZYRGH/VZUbLrIvb7wc9HQASpoJIBxp/RGSifQMO6UbM3TEKKSYqEo0pBKA+TqrXU6YBuxzY1wOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743215994; c=relaxed/simple;
	bh=rdnf2leNIurwV9WiH5s8Lls+Uu/+jyKzVpv6boC4ayY=;
	h=To:Subject:From:Message-Id:Date; b=TexmK6CQupDVsdaxua3VL6uOYhC/0dLKQGi6Jm/5TXAFPrmjBEw+B6DJi4F0Cw5ub7/45pQ9uL2qPpjWIJmVPioRxjhWOoyy4kWNKuXpuViWwzbX1sOHf/8wHgmWGU8zVlTVzIehCOZ5CMizgLVovf9sM6ADl7B/w2aB91NN7Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZ2RhU1V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZ2RhU1V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED22C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743215993;
	bh=rdnf2leNIurwV9WiH5s8Lls+Uu/+jyKzVpv6boC4ayY=;
	h=To:Subject:From:Date:From;
	b=JZ2RhU1V41KD6jk6PaVjfGl2XKBivyL//8J9k1kgb04Oq8DicI9nC8gLebqhUhBE4
	 XTISSFoNxzr8MFIdKMhVjxEh+m3RnybPDpYbYGd428PWOIRoKJeV/oBv927Q9IdWOc
	 7QEj9kKGo553ot83HD7vTVhZLnjQrwr5JnrWIvzd6tNKWBEKvj7K1eou7JDUHDg/ON
	 ORxo0DMnC1WgL1BazqfmVDqN2oNkuUMB76lBQeM7PRXG45nyYoQyiMaUB/AqSar1DW
	 XHiHvZlfolJkGGD9K9m2+z5NnVh2Gw7SFGhgZ6sZnr5jmY2SA+AZ//EOUApRcM4iH6
	 94dx3+l5CytSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DC3C28B20
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174321599358.6579.1833800615450035247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1eed4bdc25fbb0e9576384c6042465dbdbe05653bdafc8ea82ceeaf61b167b0
Date: Sat, 29 Mar 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743215993
