Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280531DB12C
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759690794; cv=none; b=jXc+NVUaZ/54g066rClVaVVEPDjoTcvU68i8AL8kL71fuZ5D6vUT5NhdVpYN4qfaZxayjvVZMfqNRo2EQL9R6uhdasC/kUEjwcwCakfRsH8PQRL9ISH9xxg5LOJFeD25Ml+vQ7vr2WSyFhxWQvrBZA5hx1etrxviox1JoXIhRSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759690794; c=relaxed/simple;
	bh=nOX+zl87+5ChDnRaHbpldOsLTIlJFKUrtLnajIQXUeY=;
	h=To:Subject:From:Message-Id:Date; b=Eol1zsBRvs8v0qUqhDeVqURqmnt+p9Qlq3X55tHJ1L1b1r29OkUVLxuyPQUeWxFlqB6VMxRv3kToPXtfvsVn6d466eLKTqxo9TBN7k/ocrWMQoiyEx7jKB2f646sYzbdk142+b1eHXA+3pbPa1ykPhRQh6oHv0RVHWpOU7aBqKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBhVawXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBhVawXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AC4C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759690793;
	bh=nOX+zl87+5ChDnRaHbpldOsLTIlJFKUrtLnajIQXUeY=;
	h=To:Subject:From:Date:From;
	b=kBhVawXBlzrmF50t8vX2zvYNgtJ7KNqTv4bNun+/l+HGDpBpZtrp3Ayzqx1/m4+Tm
	 4pkisjn4+OOKxD8lpmyEtuFrUvqdv3Tkalq9sZwWPx7gXJDkK8uCDo67ECZFMfYrCs
	 L/Mm0UgoMMHajKyPCO8olUsp6BjdFiy7QL2RoKg2tbTsvyfrFsVwD38T1o/joYpRgP
	 fn1RiKGJKDBhvjzDesBbKNUfhYMtRzs9ZrYthKG0ZpnDUrm17oj6DFFItNfmXXQp8r
	 tzYyNIARS8l6OAZTid75MwTe87nm8gON7TQF4mmluQagnlpx3OQOE0Yv0VfH4FctoA
	 YEiTz6o3y2zLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E693CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175969079357.26444.7421004795383132555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1c4457cf0c871f8f890664c6a02c26f597349d5f6a5021d119b2b80325b6ab2
Date: Sun, 05 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759690793
