Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56150136672
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791660634; cv=none; b=TCbdlCKwg6Ng01N3p7G85ct8GWD/3GZwuTsZbrvWCSADlb4Ayjn7ypkVD23jhBWaUvm99o4sPbivH7tVN0Z1yZTQQ/H2edj12IwvkpNErIaxeFgHBzmH7K6SBywBOSOzWy0I9pMs8abgMTH/sDt9Gpy9ylfKknQ0CkcGMM6N6HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791660634; c=relaxed/simple;
	bh=uyVcQobyZ0m8uWpEKszEfT2E2aQSLclNhk9xbKpwhzE=;
	h=To:Subject:From:Message-Id:Date; b=cnT0na0PMtihOc71ADxMnkvIoMQhz5v0klxN5rjBdpJKqlBSluMeekFfs7KTQFp84yXSjI+nyZ1zJkoCgDYtyRx9E6unX2ECY8+jMlifLZyESVz7AZn+OGh2is0ywrDEIkd9Qlz9xTMofOaUIOQbWIrNGYL+AvH82WzSPw65Bho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIFntscO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIFntscO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EEAC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791660633;
	bh=uyVcQobyZ0m8uWpEKszEfT2E2aQSLclNhk9xbKpwhzE=;
	h=To:Subject:From:Date:From;
	b=jIFntscOJHPVcR3nRKHK1mMZngDK750ASrH2Wz6mnsI/gBdl6dANUiqHpIcxOfsER
	 2xhphZMkuW2hULkqmNYWsyjIinoF2ryD5z4rASsZIDdabWlVrEYThHx2IRsNJUiAnd
	 LpYEPa9LjMD0cjJc+0gPyAgFGyDQvN/JqodEG18I0aQkmmlEgqmtT0HgeZzkPtcFvG
	 dnF835K/aXbNdBL8plbiCn7zTC6gll1NL7dFmVnau0kf/Lhm+KIR1N67GpCIjmRtcQ
	 Js+w7h8sPA+pqHsTN7o56ffuBpdJJf4JJMz8A2oanisdsnBLnAa7OTRfGvnPufurDm
	 fjtcJYqR9jkTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1330CA9EC0
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179166063369.5221.17953438019406528368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 001046b90c7da6dc14ce1a9c106f7456eedb9096c57f8330b858a083e6dc134e
Date: Sat, 10 Oct 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791660633
