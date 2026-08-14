Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80EE11FBC8E
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786728634; cv=none; b=hoU2DbUXfs08vjzK/Bnz/zWNDEM6jvVBk7gJVeipbHa6qXttDR7Hn1lEHDkHb6Qt0nHTmJF6LAbcqZyXGVv4rrNJ2MALV3kDqLE8Qa13Ucy7d8CCYCZ0XLcuGAAoXUtNJw0b3wDDDkbLmYvYis9W9wo2LCmSzl1PnIgWqFbl+ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786728634; c=relaxed/simple;
	bh=LAuFZMAF93VlquoAxb8YTv1c8bVqK/osn7QBirNtjP8=;
	h=To:Subject:From:Message-Id:Date; b=jBPdT12xJvNO/VdaMll9vlaCyxMYtywMV2D8k7HNh7/gjp41qsYNiHhUTuMcSVkwNPHt8YRRu/aRsVUzNLcVqAxogmcz1NBbSm66weSXrRYUzfe1/vBaMj9DZ7vCvhzjOXy7tfKOF7oQT3kjmK9uw9aB4zO01H2aOzqx2bAiMiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCPoH0CT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCPoH0CT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F21C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786728633;
	bh=LAuFZMAF93VlquoAxb8YTv1c8bVqK/osn7QBirNtjP8=;
	h=To:Subject:From:Date:From;
	b=jCPoH0CTyE5g2dINMjfYzlC9tc2kibziExLJHff4DXBHbA6NXzPjHL9VzoWVYfsnu
	 3mGvfkTPlEn/YyIzaG/DflBVd5BKhOjBpYrTn57HgAlEazatB+vD0QszV5d5OkU6Hh
	 BMZ70Wr0xTGFyUqj8KRTyMVGrBew01QuicYROn+visUD26VABJhykbhALxOM+rYSfn
	 B87IgleEbu1HH5dBnXK/btDKrIpUCQynr/B0g1BxZfPf1GZ9Y0lrvjQ8OgUVLZePWU
	 UEy4PwvVMqVaDomFqbFsfj66VT5oFFllbiSHXz71U5XC1m7Dc1N+Ws2BtHL/4ahUTc
	 QCY+rR+OaNNxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A812DC5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178672863368.18596.17429755134249224192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55df2cf541cfc0d794ff5089e0b51b8465b6ebb5cac2a1cc394ee7af5bdd754e
Date: Fri, 14 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786728633
