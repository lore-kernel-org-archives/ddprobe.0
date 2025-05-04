Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A14A93D
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746319794; cv=none; b=ZNHegmTSVvPZzD/OpwBYLDKT8OaffbQE3vbGdT1qP1twZM+6a6MNOLfjpK6863f5VqcNrsNwviLy02RAP/eoziS2A6BUntnQq0uLEA0DuccNhxLrpr4cFWhjyO8zpwBoogoaidSxKmXQV1NjG7NMnAw54UlQsn66/EHgOWyXhjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746319794; c=relaxed/simple;
	bh=eowAF/6EH8tZI7PQ8UHjihukWXgatqj2IoT1jMaotRU=;
	h=To:Subject:From:Message-Id:Date; b=L6TGGqFsOhdrKgV4bahaIuujp/UbNt6YxkqYJalMumJjXCxIIgKoOK1ztVbasQ80bzolylSHL18t70xzBd4ArjofH79Bz4tTIJnxxVBNF4XQLWyuGxFeWYTNWeabyCgbpQlJd/pI5jkR/0kDEDXDTaknUjPTiXaJPmfabn5dTL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJnHaCrc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJnHaCrc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FAFC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746319793;
	bh=eowAF/6EH8tZI7PQ8UHjihukWXgatqj2IoT1jMaotRU=;
	h=To:Subject:From:Date:From;
	b=sJnHaCrcZmZPRUwwekBmeezL5pQJSwYjv4hoJgOkrr1w9NTOcuCkuV4U6QW8Wy9mc
	 prA0RN229hwMSyri9Hjva8EeHEfK29hJsEX+7TBORgWxhRkHv+YZYuTn7d+b6Ij8Gf
	 f2duFSMQRo7Z5muw3hE1Hzdei8qbMWnpb/GP2vsbrqPEeFaAciEGj1ELMgje1DRSbk
	 K+cU1OeHd1xO5l8dBGjlXCYiApOm1CGl4FIK49P0k0Ij+epaQ0T4LHRFlX/35jcz8N
	 EIV8QJXcZvtIK98OcqhjeHtgRX+PnA4ntzrLchUiefaIYK6sh35YTfrSZHOv4LErh7
	 xjjRYOTCM3C6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9376DC369C2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174631979357.30689.16641934330721280259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a46af794dd05618b81dccc06a272ea6d4fc40f6f511e3fd59fb8c90aed9e31a
Date: Sun, 04 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746319793
