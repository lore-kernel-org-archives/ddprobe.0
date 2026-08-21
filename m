Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F6530DECC
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787275834; cv=none; b=lvS5wmWI50naKtN5Kg9aM2ChkHiUAnwNjNpjXqEkpdTMXR946xBX4/bTno6QPEbxZ5ZMw+unz9fiMSzywYoxsfhELlwhcZl5hRCtDMScbocBfwY5KUPIL8NxY2+MuNwaR0z0Vh5uQIxC4J5HfGzs4O2nW9gElMdBJ+Ico8HPuEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787275834; c=relaxed/simple;
	bh=THhkGddakP8IZ7PhuFjdtx6WnrLqxuOf3PiuxXw7XU8=;
	h=To:Subject:From:Message-Id:Date; b=Z+Wb65J2vjNmaxtJHxAGHBtqFFeNmPGGE2k2UmkRxxyjETjMkaWgj4PrkQ/qTmwu9ktDNfr9KbEHAWSbGSsnOHJbF0ettRoONjhbfJuoFBfU8bxTSVKq7CWOSf8nAq8pV3HOIOMn7QS5wDT5LoCOc2yENbvY5ZDE6uhHzpdYxDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BdScSp7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BdScSp7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC5BC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787275833;
	bh=THhkGddakP8IZ7PhuFjdtx6WnrLqxuOf3PiuxXw7XU8=;
	h=To:Subject:From:Date:From;
	b=BdScSp7cQszBmtejkYtPvgYEryYqC7JcO3GyMWxdYcEl/T+faw80rxtmHTRKaQnZW
	 A6OKnbCSPThJIWZQZDh1tr4D4k5+yHhmzvm7ZlhDGoQtaXqiDUKwM8FY2Bm8UmNa2p
	 q+U5PXNf3Wlid/HS3qoPZR4sKbO1yYIBG4ZyCC2vA7VLoc76rYtRMKZRZxxkEDYxkU
	 jp85knuH2KtUzYYtB4VL4Erb+d6Kv7hqh+70/U/bkMwiOcFtUvO1VnDYPy6LZNzmV0
	 a/vl1l8R8iUBcwrETaAfVHEHGcuyge7qNQhy9qrMAKK8z+K5+8FMP2NHbl6whI/u6X
	 x5Y47I5We4fbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADBAC5DF81
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178727583369.2975.9695642752459658187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b760b97d6f68135f81016e142a7ae0f44af1e8d2da9fe647f317f78ada46931
Date: Fri, 21 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787275833
