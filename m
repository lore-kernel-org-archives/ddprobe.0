Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D8D2DC793
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757738994; cv=none; b=ef2aqw4aw5PdmIn781nrnird5pa9G5vpkqvxb3GoDqs5nWWZxq2BzMwjj8sjswr/pamRSJtrS1QYioR2PoahsAjdLVn/f/wASaiSVaSn2/fwrSxXRxYWCU9f481HdQohp9K7wAjFY0nl+1q+O88KkR9dc563SRqmQwfK7jSe6so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757738994; c=relaxed/simple;
	bh=1An/fYyGHpQVJYns+Sysu1QAqNpOhKN3jq9lO5aUbOA=;
	h=To:Subject:From:Message-Id:Date; b=KpyQVPZXICFIyTNQZZsqslOJv6IdcJ7S1ci2vt6g0L4bp7MGTTDpojlBQnmXaiPGjkXj8l79RBbDGVUfCtTFoK/AwouxQGXVR88wwNZWhlflqG7l5w93NmV4qcocd+EexHklvuaXZJAw8i1+xQqTiEH/puMUhz7wanUJBynN/7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ViVGfBaj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ViVGfBaj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB717C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757738993;
	bh=1An/fYyGHpQVJYns+Sysu1QAqNpOhKN3jq9lO5aUbOA=;
	h=To:Subject:From:Date:From;
	b=ViVGfBajBpNGoEQ0xhSHShBXfNiG2iBVnmrfzMe4bsIN2bMO4rqNlpft4lKwMpqav
	 7Bv1noYkCrlnL+9e9K7zvMMukAbNmNfF1J7/wNiEERFQKoaXhXI/lAAtHm//fo0OI+
	 enY6hwObKJVYQug/5+pw1bbSbU7Hu+nBYJ5xgPQ1TZfBTHsCs7k5VG+mSiSwk1J7iF
	 xYL239qkhk2F1ar+d2byawKvJ9hQc4wg1Yf0sY05YtUZRrlcFuc1zk/bqt8SaZXY9m
	 hV1S9N/jwiSOcE4+Xypd/sMZPiVUPEhwfTS38ofv761/nb+5g9/220j7x3V6lZiGxR
	 TRQ3vF0QitEmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99667CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175773899357.9348.34284251714805951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e156de9e6729f601aae844df0806166c7304edc0f5b994417c14f5340fe3f7
Date: Sat, 13 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757738993
