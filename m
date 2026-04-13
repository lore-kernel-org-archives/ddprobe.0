Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAC01D435F
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776056854; cv=none; b=XvtQPh3bsQK0qHMMs6OvqlsVtlgqGbbt+xGPQOZvzo+c3pGHRiFgo0OtLU7okO5B+h8LgMes3oqI4ZLFEt4ZmmmT0Tpb7lsAgg+snRxTIrxZf+WnNmYfKK57BY+t6OfzTYEqZsgmyqye+UXakWbbiobupFcC9YzML1/Ts5BV+po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776056854; c=relaxed/simple;
	bh=HPWBjwnRRKMQbfFMorcG57jT+iCooemwMD6ytIjhf4c=;
	h=To:Subject:From:Message-Id:Date; b=NtFtvL9PXA7YVxWyrrRlDMfNlYMM9C6dZNnoHcpCTIT0YJIhM8zfKaa4O3SNCi+Oy1CRwveeJ5XW0MNxg6APF/Tmvl+y58kpHj09hLB//pzmfZbIuh7MsR2WACtpWlLTVdKOKY0BPAZfDn2k/004cg6ybeSykZ9HbXaJopHBAvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmFNgOPM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmFNgOPM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE39C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776056853;
	bh=HPWBjwnRRKMQbfFMorcG57jT+iCooemwMD6ytIjhf4c=;
	h=To:Subject:From:Date:From;
	b=cmFNgOPMRJADhD7uF+G5qyJcbry+b5N9STwSt1tbhTjHzYljECf1qnvunWt8s7LR7
	 aILFsVmV2o7MYWRCa8RPOpnfppefqz8nZfsYbtZ7c/qjKPOnwte6fmYen8Enkhbcbf
	 8zI8NxJ4VYRWfMwXS/nV+lsKK/JoWpzjnsoE8T959/7CAVWORJDL3FaCgWWbp+ThGj
	 TmYCk5xVad/OVm6C/H064V5lBSG0rH/vLEP4nWHSBCVmhyp1nUyg9M4BLBiN4mT/3z
	 rC7NVAo99zCiN5BZB/T9mI288Iyu1LbsNudU2mRiziWcbQpmyVCQsk4uStZ9H49cV9
	 QMhjHfRVJKS7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B22E93815
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177605685368.15834.16517879334026871248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddfe2d2b907fbefb23a98ba4aa7b1ecb3876a41ace5624ad47a34e93038a5a5e
Date: Mon, 13 Apr 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776056853
