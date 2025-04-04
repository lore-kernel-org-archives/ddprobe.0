Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5315B1A3172
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743779394; cv=none; b=Vk964cIMHAcbRjgs4uDNF6qd1LjZBwh4PvSDkf4Nd2B+ki75wpG++o15FRnwR9WVZYiVC07wysHzjUIDaRBkIGcFEqmQ56aioluTUbn5ByTIiM2o1t8iJA0WXdBsky/0RP69jwGNP/7Lf0OAFWB7e0ZgIdxN/PLC+FSrH+26ygY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743779394; c=relaxed/simple;
	bh=tMDcklhTxdUU/GmdI5+H+EtLKixlHNsI1uDDBdML9bM=;
	h=To:Subject:From:Message-Id:Date; b=EIRhVI0PU6hMcH7fW1p8ZKHQh795EXu5K6P6bv9gPUYDujhsBrweCtAqgM/Ov34ogYlK4+t84keS6IGsiVpfqBuFcTDJQW58eBjXH4YNPPOroDP82jQZ+oouQQ+PI+ZHKdSz05li0ASBOVaepniGl+2cxQSH37oLvMhV+ArblyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNa1WK/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNa1WK/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3942C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743779393;
	bh=tMDcklhTxdUU/GmdI5+H+EtLKixlHNsI1uDDBdML9bM=;
	h=To:Subject:From:Date:From;
	b=aNa1WK/Fmgx02OmFV/a7z0Mgo4Kq3JvyASMgGHxutWZjBGedE5zJz8uaNX8snuf72
	 PKjg04WCuRZ+MyjkIlzgoWqW16ehhjqQZSe4dRYAayvqOordtbimb/4EDISDIVRdcv
	 9KE0PGC6r6tRxyCWU9l1wWgmF6EqrW3FTIAQKbVCiS3PRz8yMw+RrOu8wVCyfe0DoO
	 JnNhl+eH1E06RkeY/G/2IbhDl0YNUbIQOoKveIGJXzkfDdDc5vjLwRb/M+iVb2+7Ib
	 GHhuakWHWb4HGe8CRRPTycRy9Qt5yM9nCxLnaSYxOb3iNP2hUq6/yURhazwBHlXwnL
	 GYOav5VOyRKmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9619CC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174377939359.4005.7479001793486203292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0163228fcbc66434bb0b8fce6a029ac4ccfda8f7a56223df9e3e238842b373c
Date: Fri, 04 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743779393
