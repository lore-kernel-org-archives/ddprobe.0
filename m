Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72C1E361962
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789852234; cv=none; b=Pb6tNKNwZNc/cUb3qPocOMGioD0lLaEzk7i2iWrnmiqoP1waMEKL+Lc4Yd5knhxoecJd2z6lC2ThiNBQujY/oPv1Fzqbqhr2rZzalbD8dCpvk3CbQ0IpXPxqack8b2YGnxpjdxeRaokzGiG3PWuMYd+GxhV6cr3OflEn72VhKm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789852234; c=relaxed/simple;
	bh=uhym+GAFluURX6mvUzgMz547q5gJDfwEvVFHo2CD1uI=;
	h=To:Subject:From:Message-Id:Date; b=I1lEuESFjKX6c20IP6+ef06iZlbJVyAbKSQBEkUPQkvUYGiv7+GrYY+7AOZnW/EFf1es5ORP+aAVMRYRdhNbWDJ+LUHwY4L1wxq+Kk8Judf2Raxcbpj+6RKxEe8lAhu0IFMBvCzooUJl211IQ8ObJ8s5ozhxReSDozqVzaJyvIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUExN7PR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUExN7PR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F93C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789852233;
	bh=uhym+GAFluURX6mvUzgMz547q5gJDfwEvVFHo2CD1uI=;
	h=To:Subject:From:Date:From;
	b=EUExN7PRrwwIh9ZA2toU58rxWT9kIg5RvFO2ty6QN+/krSvqhZKb2b7EMien+v+YJ
	 U8rAjIcKaEmKEAFNvmJ7dNypghr9jAEiARV8CJMACKVc8xbl+kVH16KFFZkT/aJnjW
	 L3ZgY4KqisyBN0Q8GixgKBIvFvmL/lL37co8WFRiehGcc7VceU3nY5BUy7PcrW48qb
	 sVjnBkGOv5ewtzLTK7nb2Rwl7Ps9WwLcJn5fA00XqO2arLx5exwuJ6EL5HLRE9Pp+C
	 UzVubxMXhh3e9z8oPSNvc1PQClZfvYe/9adeU1q03Y/iK+v4UbuHWe3cjhGj2j/TrI
	 CvYXRBuTfYqjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B040CC982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178985223368.22876.12451699509263275063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e337cb5f8f362ce63c9a1cb2d9fe234b2f7d85af69c605d38dddd230554fcfb
Date: Sat, 19 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789852233
