Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB4D274B2F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757667593; cv=none; b=R/b61xXBGGwZp+tJCpelg2t/IAXDG8n+aPOBaqZQza94kzOPwIR4hFMZku7rsfy6ba7tSUjzDaJ7GiN3TSadkkZTiiMFMipNUAaFt2xGBG8CflAZXsWwOS/d1Kfk86AZHV/y+eS7G/SR5Hxgehc/bW53M3RkGwBkolEXVP1H/bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757667593; c=relaxed/simple;
	bh=uPya74w4EQUOrbkHzln+3j/+Z/DSXO2ejDXZ8ZDy0QM=;
	h=To:Subject:From:Message-Id:Date; b=hRVYzVK/emQ+OAXwkA4nqUMEc/OaEBk213ULsH83Xyr0VotIgxDSt5KOrVhA0vmC9DumCsY+yfCijFqpn0Nr9incDBfPfJQuEFuLLv91JQBiETidAqNDAhZiki/uJ7Al9YYOEjPD/QX8813ps5LdahuoEzmHh9YmiPiQGy8UI6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBu8Kgs/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBu8Kgs/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB9FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757667593;
	bh=uPya74w4EQUOrbkHzln+3j/+Z/DSXO2ejDXZ8ZDy0QM=;
	h=To:Subject:From:Date:From;
	b=eBu8Kgs/K4p23j6m/41EdDaLUsQyLkNMUwOF4okGu8q+y5Amky1Yzqs/aA/qiyBBA
	 fzzNtdfn+FrYA8IBM/TKGV7B0EgCrVv35VfUPyGJg13Eu3YvS2BYP2RIqosalq5fv7
	 OUM2AhX38FBXW4Ht5m9DyfJZiFy4npBy4ZMyf1GLqZBcEVD2YzlbDOIQyc/QtOHZmh
	 pfL2qXz3EknXsto9hi2TbxbcL6d0ms2tEqcMtUwgfYwduHbIxggl/ueiXsE9Zq5LqZ
	 tv22dv6GE+gnjyex8DOAmHvA8NoeMMqij20fjGVMJo7+u8iu+oXu8Jk4PW4qYcUzL8
	 OEsDIhcMAKvoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D38CCAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175766759363.8300.10721752192216774617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a77f2ac1d5d4c5cc2bcdb8ef4c88e86fb640e49c6e3e9ac78a1c9554a05137e
Date: Fri, 12 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757667593
