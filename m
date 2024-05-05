Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB176DD0D
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 19:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714938743; cv=none; b=flvxgkC4MlIdzDOgCplqpLLSrdTiD1sS9t4zNdcb11W3qNu2/uEd7UsWkMUGCXDz5k5Di7TaDEle7XyN7C03cVTqNqh7uA7Xv8+epJvxN/TNy+EBHbyOu+zWyElt5K3aiBzP9iG1EsjjM+hSZK4vMpm1A1SQoGz0ELFbw1wmcbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714938743; c=relaxed/simple;
	bh=va1X3LKH6pFgmGwEqZGBJlsFJ7UHnINBEqxeLn847DI=;
	h=To:Subject:From:Message-Id:Date; b=Jdk+NkNQyOh/Brw+yjHFrM6qFt3XuYx65yKX558Re/eZy9+ya1r4nvbchotTSrN1Xc8NnqbafV7GJl0Zvz7UrFoW9RWB41C+uSYosJKSNJ0keg4MwbjiJjc/98SY/0p1mBfEOFUOUsyR/au7TE8uYMp4qeCNppII9OVUkT9qrdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMUZZyGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMUZZyGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7727C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 19:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714938742;
	bh=va1X3LKH6pFgmGwEqZGBJlsFJ7UHnINBEqxeLn847DI=;
	h=To:Subject:From:Date:From;
	b=uMUZZyGyRqrwo3s7/Pz1rIMdRxGDKZp4AuSwuxXiwWzUEO19QLevT4l+g23rH+iIb
	 ZtQ5+WbvCCK7/QTHpgXirtlPydS42oeGVf7Ysp7UemaPR+Coo+dNvpmVGror9QbQSW
	 a9NIM4e1I8X2uTWXwKpjEVUrGB0lRlJS8/0EsC1wfYTbhmVUjVqoDpY30GVYH7+USe
	 w9029ZSGrUys9Z6WynSzIS0ApsYHPCJUpqd7ryWWX/P0mORxeZOWkUDbOx5dRjUrG8
	 oUyES2rpxorIyLYa11shuIzNgQhzqvd2IeYYXS+qyic8tKWNg8z5Y/l5RjqcBaKe6p
	 EHekI9aOnuytw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEA0AC4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 19:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171493874281.19534.15936300364750638123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 189dcaa3780f12c6514521024e25eb3f33ccc88e4594c055990c1f38da40e9f4
Date: Sun, 05 May 2024 19:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714938742
