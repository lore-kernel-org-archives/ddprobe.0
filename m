Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0637040DFC9
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773883494; cv=none; b=pHvwPWJ6tOEZQDOc1VL6Y9DnbshnRgLu8KqgxFH1vfYmKVlgN0MqH5FyuABqa8PlJPTO20T5oKc+F+22l5esSdN5vDT93gT1PE04tYtcWUMJhbyq2SGsfMTdKcXybF2gY1ejkyBPQzIMk7DxWJTxBzaBSx4sGBJzREQK9JuP3jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773883494; c=relaxed/simple;
	bh=WDxLhiMqlpC++ib97+EJCqL2LBM3lThND7D+A6ThWqs=;
	h=To:Subject:From:Message-Id:Date; b=qGJ6vGCPU8USbb5NodC7p6fAZAsFSS1uTd6hFthAcqfzJTk+3cawaMiRkSpFPeHSNEQnR+quWm21Sz01tdBoqi76UC6A7wzjFM4WI1Cm8U17uzbpmi7AzBZfbaqFXZErAR7VyXmvNCQY3UHhrZSiVFN5JbFOTY85jhRwLC3tqZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pwFgMWgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pwFgMWgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D765C19421
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773883493;
	bh=WDxLhiMqlpC++ib97+EJCqL2LBM3lThND7D+A6ThWqs=;
	h=To:Subject:From:Date:From;
	b=pwFgMWgpFlwqhDBwNXp5d+/z0He/2L0H5URQosmqcARztdJTFOymAY8QWhvdnRVx4
	 7N2QCUK4gTrKFodCqmprTmVcreXq4LgNpW5fK2P0TnkYRADogrHXe5hg51B4pnkDmB
	 APty7AI5kj3/OprnFXv8JjvSzrWAFOvrV9c0Ued8Jpzlif7BA+hZlgGjrV69z4u7Hh
	 JYNnTpbHC9Bv5+erwBqfkmdIzRqdiKhEAbTnE2uK7yL/O/zZDoexAs3J6faUKDTbc+
	 Zypj+OMohlWI67vxivC4AuxUEmQOvlh+xcnpK0LgbAVa0USpYd7oFDDKKtEfUmfvDa
	 EytjN8OQ4d3OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F41C1088E58
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177388349357.3746.18392858721201502583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfba61ad72e6fe07f2b4890897fce8f7ec6a409ba15616b9dad5da4b58217169
Date: Thu, 19 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773883493
