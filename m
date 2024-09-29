Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3477717736
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 11:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727609755; cv=none; b=h0tr/rpIn1kaAAmWEf3bRiBvxDREXJbWCtOh3rEAimIvsiy9A0Q6EHZv/WNTcZpMqT3xQ8dgzjyurloQJLf6EKonS/0aMBTkOR9dZ0MnNDtS5w11ertiq2v3vW2vfn/uZofHnhVng4oFY/BxZQU9jbi8HDIHIWlWOEAWqbUWHQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727609755; c=relaxed/simple;
	bh=VHVU/yIMZ6FZkIkQQpQqkBbVnUSogxY+A0+nYXOVX8o=;
	h=To:Subject:From:Message-Id:Date; b=NqcvFx2AMwyFTz02HCOkiU7YgGtjudGpkmssv67kRBnGr3gEkIA++albWAYzGFZ7sM7Rj6/eRlqwrjoPL4gC0KIAePmdDQlG0jobZnYp6P7cOSpXSOOQcPkqtsXNzif1zFqWhf+doACgvynXU9Btn1ifcAvx4R3prAWMt4QTvkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lyA1Bf5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lyA1Bf5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5736C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727609754;
	bh=VHVU/yIMZ6FZkIkQQpQqkBbVnUSogxY+A0+nYXOVX8o=;
	h=To:Subject:From:Date:From;
	b=lyA1Bf5zK+jOtxG6N3AfCb5zZhcKmvWKQMQzANA3q7Q5ReAe/3Cx7b59kuzvNU2vY
	 ZRJoQirZ2H1pHVnRWHiyQ34GN3C2jk/IWhwV4w8el6o52Ama0NRzIzVikf73SeXgOn
	 wORdFaAl+eBWljyv4PPxh40dlEZkJapshPJ2Lsb5EtO+T6jpDfTJo4mzyjeb6Tn44t
	 IGfzIuW5hwneD0rNQ9m6wqv83AlEn/I7czq66vOtOOXZmq44/ug6cB9+mI2GnvCnLQ
	 WQci2m3gXphwRfZ8iQTJRlb0h7FpN3qY3NCY9zpj4qz+zpRZOgM9Ft7fLKzYFmbFPi
	 IpJuusFYwu8tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0E8CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172760975362.27070.12614022051772601913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 609a386ae97b79430e431853811ae6a37e01e6feb9155fcd5761a00ff854c2bc
Date: Sun, 29 Sep 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727609753
