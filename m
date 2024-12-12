Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B31DDDC
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734034554; cv=none; b=jdM6KU5zG4mFo1TFY6IJWf2h3BystgbGZaEwNBVuJ5kPmGaH32wr0x/Yp3JoZBzEubHUKHsj6nvSjJMZzoVEQU/+Wc2hgn5iLPe9ScAq9X1j3jaG7KwTz4BX9lKBjFGTQymImFNiH9EiT1NxUR0WsKdmJjPQxbw+W+oseDo3yPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734034554; c=relaxed/simple;
	bh=+ncicClds85lHwomgyFGrAhBjp9uPz2yK5tXxYAcUF8=;
	h=To:Subject:From:Message-Id:Date; b=ai0n82144jHYgOQremW4EhDRC5I09w6NqQ7YH1gD5Pt7RN8m/3pTLL2aQFetJr2ADM4p78z3b7bYJTNfm+suwvz8iNzY/Hn4UhqE+ph/pJxtHmdjvstcxe0ZaQSfjmRIeX656PLuvNT9HBBiHvuVqB5gVIMRSQQH+kx7DBkbHrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfFR7TSq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfFR7TSq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB762C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734034553;
	bh=+ncicClds85lHwomgyFGrAhBjp9uPz2yK5tXxYAcUF8=;
	h=To:Subject:From:Date:From;
	b=cfFR7TSqxMZABfacsmycVYMXm3GUjrY1l9RY9GKwF0MOd4qJyrpQtOAe/NpXPPSgR
	 +KDKUcTGdVORdUfvef09ohCvqkc+L+KktWzJgysZXKwMN2idr725rLcThGnpJFI6Ec
	 JZ+beuC3suOlHaF2i9eZTQcbrtqF077minQnK1oFqEsSC1oeX8ABh4F1wHeC3hbT6d
	 Kpmm+ch3aI1CstiIgTdeaelfvgdGn8qyvlN1S1cf9ijK3ABhYpBoxxuXPgum9Auwo/
	 hp5no0cK0WRELwoJBwb8ONdwqwaCqcEQiNK1frQbLKTd1JE9sNoq5RlFdemFoL0237
	 7IIf935et3xnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A68E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173403455359.4226.17131195558961640395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7393b4011a71889b3ffe9871d479521dbbfc508ed22be8d763f4462b4aff2332
Date: Thu, 12 Dec 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734034553
