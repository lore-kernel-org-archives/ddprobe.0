Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450323D6CC1
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772729094; cv=none; b=THPsnHj6Xm64Dj5o6CWvRkSIdipUvogh9XPa3wgDKDOwb47MOL4tFUmZEFc7QwwhjSmjp0VzwYlwYTpf5vKkqtb/d1csj3DdGTvHsMksbA3Sr8qdafPy3eRLrs3h+D+htwoK9QaKWtBqq1lL6q108eFZyIa3W+uH5eoHltpzxSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772729094; c=relaxed/simple;
	bh=aNrkCqZs8tFYegerXmcIiSBVDstd/Pfn5SDCwLSQJHQ=;
	h=To:Subject:From:Message-Id:Date; b=F8UFsv0O9qQpSb8txt1uasvMAxnKJezDM0QUY3R+/uIlFCPC5X3T/VODb62Mx5qOwkfeg7PkcWxL1eDhhd2GBo5rQQRheb9o0xWs4c+BkMebYuWvDlUUsI3ymWGxtt5oSANJotMv9Rk6PS7dslDM6DGccYFr3y0HyK+Fcz6//9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ye9AJvtb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ye9AJvtb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16A6C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772729093;
	bh=aNrkCqZs8tFYegerXmcIiSBVDstd/Pfn5SDCwLSQJHQ=;
	h=To:Subject:From:Date:From;
	b=Ye9AJvtb5YCFc69RDdtiW1TMqPmO5COx41HNCBetsb+fuLqfHyGeQa6t50nRsoRgk
	 qSsWRjtl/atbGZKY1F/EPQ8TahLHgpCtDJkGTQpxdiSbEeGVlPqJVTRRvSFpX2k189
	 Bk1wGAPy9pswURm6mJ4ImptuAMGOQviLc8mBQ2cp/yMhojKsbWYqKPcgbrVgEJht0m
	 CNwSNGmBJXXit/H6Rw1EcEZ90CMmFpEmzVUpTlHjG1PCRIscb22bnHpAuzH1MS9zF8
	 M1otPqsz7pq7Yuntjmz33bx7FyyQH0d2WhC78ieiNMaobhCJ8eOKXwJjBN2WTzQJ3z
	 yw2a8HoZJpBEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9314AF3D332
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177272909359.11830.3152527474750824087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 423c148514d03f4682d0b39b75a991ccb468808ee83fbb620c1e7be09ef42399
Date: Thu, 05 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772729093
