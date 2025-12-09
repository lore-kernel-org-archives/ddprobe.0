Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183A13B8D67
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 03:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765249974; cv=none; b=Gu/Sr4rNxBE429bc/ikUUwTSgaKSgUZLPik+Cbt1LYP93eVcNOSiiWkaXvDFhRw920xsiTlvo4L4xa3pBWaG/muAu86HA9+2iHhyBI7xEI1+bpWChGeQ9I8DGg0JMNiLQMIkGWzYpo9vqGiF0KThjZC5Tbt1jh6A4y/qGuFjGR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765249974; c=relaxed/simple;
	bh=z3hK86egtAGEJPmkWBSbz6o83tCLVagi9r4l9Oz2pPs=;
	h=To:Subject:From:Message-Id:Date; b=lQyfY0oJ52oV64y5rDee4Z6yEwy+nxpS0TbSWyCc5hfijeYOyUMxP76AscuwGKaXmTg8r44wiG11AHbzm5ykYFWq0m6b1wMu6HRadcxEw/tqh8oImobbF5VEbBbLejqRY3FSpoQsUpBsVTqfTaFH9EWFx2+D4UbAllKA+ROT8Ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7aHLKNr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7aHLKNr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9241C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 03:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765249973;
	bh=z3hK86egtAGEJPmkWBSbz6o83tCLVagi9r4l9Oz2pPs=;
	h=To:Subject:From:Date:From;
	b=t7aHLKNrDvuXnosC+9rsrzOqAAF1ef3EaKzRHEZWFHrgG8k1Hkcm8qwF1eMAbmAbM
	 bc9Rh6uvPBrP2N7sslOJ60yQGyrOVuV6bJBs7xtv1vpphYKfU1lEqgPOkbXL58D4up
	 qhY9B7wGEzGT5M9Mh18l4ZQYtUhlFqEPvjliojj31qFFGTmaiczAHl+qw8epUCs/Rw
	 2SuvDjrpCKaDu7agtgx+jiViVTONKNLV7v+KpZr5bwV+wvV/atyURfWsNxLip/98a7
	 aEqXcNeHP0RIc1D+rAeRuAW9g74vXDJNyGP9/Oo+3cQxhdIFAkng2wY7K0mr/e3BjX
	 QNLGNYGXA+DAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939DAD3B7E2
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 03:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176524997358.17637.5385337761210382019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ab49d648d4f11af5e63bb1ca5781a82d9317b217920909f5e9f3b3020f82f33
Date: Tue, 09 Dec 2025 03:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765249973
