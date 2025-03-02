Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80CA31D5146
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 10:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740913134; cv=none; b=O3qd09TS5pum88jgQhal34M3gNR5dt9Mq+WiWhNdexM6kz2HCILbVB3co68VzWi/IuKfPDv5PF95FJJeazvUn9mPPSvIZT4u0uQ8u/eZk+w1vJRb/zaHvBSTnRtRYZbdKIuZHqvoBMNK6+SamPoxoDM4BNhKTEzUuudjNRl58KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740913134; c=relaxed/simple;
	bh=AEzcqi4pBzT/ly3tHmmuoInn7UzA2MbeeC2/rHLLLko=;
	h=To:Subject:From:Message-Id:Date; b=cGVeX5IrgtFR8Dbfp5W4ILVNNz1wFrJTFWkX0h1saOL/mNcKRnhu0SMgUyEDgXMO4hVUmLvdIL2qHuP9OfOKsqr+G/K7knLdVQX0js9jEylxAHSqmwP6cP4bFjNdXyMXt38sAa1MFB5WkGZKkIGzxQNQLd5+g/r+b7uUdrGex7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZcWRsnx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZcWRsnx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA9EC4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 10:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740913133;
	bh=AEzcqi4pBzT/ly3tHmmuoInn7UzA2MbeeC2/rHLLLko=;
	h=To:Subject:From:Date:From;
	b=jZcWRsnxSsSuqFMItiitTgzPSGR2A/++PabBadL3HiXEYzlZoNVxbMIB0XBfjMk4w
	 GIufjFUM9yUIoD1xbHQsZdakH5PEV6AaGTS8pdxusnf+hkp6mlk5eWIvIUsBbpqFOv
	 xux4jqz0NOjobHjp2pbNwhruD9TTpeFjMZ7MeNbWpKVbqt/dzWWr6XnqYF4z03Yd6n
	 sMTWQUGaxqYEq8y8tc7XoefQ5eCry47nvwNlx33cf99WfAg5B+Lskr6me4P3sMmhwM
	 AJgy6+xkL6fXY72i8pNO4sQAtylD62PR43oyvu8Ky6y27xRzy+eBLyMalwQqAHWWLs
	 jFU2Qqr4gNikQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4FCC19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 10:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174091313369.18931.10260453963881014036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 057a26961bfc89f37a5c418445db1ca61b332e132ba780dfaf0757c6e9ee9f3a
Date: Sun, 02 Mar 2025 10:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740913133
