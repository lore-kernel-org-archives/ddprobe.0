Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49BEA33A00C
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788562234; cv=none; b=sfq/ay0JNHjypUceYkL5Ih/mOaahfk+dhvD4afjVduJseQ0Kt974eNmyJU/aboZddqtfKOr58Dn1KgXXvE76bh3K01sraoVoWKPgZllo577Dcg57N4C+8Be5RR5pbHSQbNUgOuxYKn6vMQzriw8q8t+pUWK6eb+j9VHzz9ygk40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788562234; c=relaxed/simple;
	bh=w/GTMqbJwoS4eIXljAanHAdTfAN7EXyO/aTSeMcJDv4=;
	h=To:Subject:From:Message-Id:Date; b=hlSXF4nmEHtd7NJH+EcBx1k4PWC4q7HWwrx2K9r1A5BtuLF3o1Nl/Enrjep48aCkEUvWd4nyKa2ftGEQMpczxH7I+oCDrLyLlBeqhbjohuyiecCvELjAVLkZlZXaj1XgPrDZIYlfH21VUWk15IZ2dyBEQB2XT9ARpDN8x3jGiqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iM0bLLKP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iM0bLLKP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5E5C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788562233;
	bh=w/GTMqbJwoS4eIXljAanHAdTfAN7EXyO/aTSeMcJDv4=;
	h=To:Subject:From:Date:From;
	b=iM0bLLKPRAUMAvb5XOZNyeAXr+2zgjVHqXBP0vXq3jHulxIEnIbb5QGXYWi1PBmJd
	 TaMb9UdFAl02dSklCmSFUq5HRS8gFenNHF6/1mcMAJaYo40ZGpXCqJwpCt7T3mVGuv
	 dD2oaIRNUxvpQn2jwpdJ74E1mB2u+XqzW80kPjTEOeAJLKAxEFstjz0XuY2KNVXLug
	 xGEIaH4r2drLktlN5bLOC/5XTPDnmrRVlqCqW89qckV7IG8a4j4Pwhv8EmnvvpTACD
	 hIPYf/4MOpS2fYXmkvijWc6z5JKmvGar/Jw9SdKIq0LbXdPqFVWWdJWKHWVWOb1lZV
	 T2lkj+CFXnrtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D40C79F82
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178856223373.25716.18313538919736220424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09c0d81438621da5e5a9e4ef6114b8b73d1562d3b90404e5579da1cd73fd9b8f
Date: Fri, 04 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788562233
