Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0951610E9
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705455497; cv=none; b=TV4XH4oerr5XekPOniq0qF1HWaPa23ii4f2wdJp5P/leQs25CZFYOsj/hNRsuIiblg4rfrvGmNZw/EieaICsLx2xZ6fOtRc1b/qTXlbd5jFlCuGdriBRl+chau6zuye8RbEILOD+XizEyvqoit7Mu7+KT2I/+14dd4YFKPcSzyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705455497; c=relaxed/simple;
	bh=jkHz72ORe4pHjBv5slbDf6Qb8rqqdc44e1Ucd5oddIk=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=g4aM1geIqJMoEKxwp3XnGR/CTq/RSEJkPLygqvnnRGaQ4y+z7LmlfHObsP+ZZGSRVKGXuJ1Y9Dak9JHSXGI7VZnww2DVSoreDvbVQooq73BcIUsH3xdPdfo6rgjh6B4w6XAnRtInuKk4ouqhhh+/wvcKJiItLNYks9Yhsrbok+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDr4AEO6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDr4AEO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D832C433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705455496;
	bh=jkHz72ORe4pHjBv5slbDf6Qb8rqqdc44e1Ucd5oddIk=;
	h=To:Subject:From:Date:From;
	b=sDr4AEO6xHk5MdLuInMYPhKLIBYgBB8nPA6wxRjMVUcjq6qcDULNkE1YXEHLHQp0h
	 WEt2tSrxnZYe6aq9TygHqpqYWnb2dq8uMWBrQnefPhFhpYrz/wXhUCLL20J2Z4p+HN
	 TvwR3G93hB+e5uzVHtn9BY8a0XvUNizbaULGfJ3wByHqrKlPZIjacSAHMvlPQF2ME6
	 H+9AaYckVSDqNjwY7pqmiiyhhW4q+r4/pM1vv4+Cb8iwXHKY80Z9y3BwXAIbgcWAD0
	 CL6h0I21Q1sIFLM6oTBKSGodAT0OX112uMJn1eiwtqPehHK9TfDglq3knmxhIx7F5I
	 ps5rsEp2WgDlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61DBDC47077
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170545549636.10604.7659453101113638953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e97cb5e9eef895e4c3bd5da6d7c52ed9b6c39937fa2b5e20e864f249eeb0fb
Date: Wed, 17 Jan 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705455496
