Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB7A838C422
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773396893; cv=none; b=dwtlSKCquLIQnTCWf2aQiWToI10Qi8djch88xPQYqYkNjgR511hr3Petqxa7+2o/jBvmAz/r6sc998rSCga8FINa2dzKB8ZazEJIRKpGgXDOQDOjyWd1EkYVWW9z92w4HSucrjDeGyLFUK8vbj6MrwwghsI/k00nw6aquIauCOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773396893; c=relaxed/simple;
	bh=rRQqAUZxvYb78gLY9TkzOWuwjVgnaFdGTqvD1NMCfNM=;
	h=To:Subject:From:Message-Id:Date; b=LqMEpPMe/znd53NHT+wPjYR32a4KQRctJ38QyKUtV7AyhIQEeLIWvTrlQWsIshlScxrThbA8qIB/4lFr6tBgbH3cq5C7rIyUz5p1cjZDs0mpteUUn7PEHJLJ21OLyJ+OdshDyGx+O91/C2r1Hs9txCTSldm1DdU4fAt47LXYqkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0UAatfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0UAatfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9858CC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773396893;
	bh=rRQqAUZxvYb78gLY9TkzOWuwjVgnaFdGTqvD1NMCfNM=;
	h=To:Subject:From:Date:From;
	b=O0UAatfY5UG2RRfaw3xVFP9BeJMD4FuC/K3ZQ4zvNJ0kCyOGAU+jLYb+VrX4c9jrh
	 ylXWg/OhM9I8TXyk6RjD9I/Id9PoZEGIjwIUl3SWHeH73ZV9eQQYPGRi8pzqVoZhTt
	 zQie6Qo6qGvv7vp735p9N5tlLOQDtPp85Y50E7kJqTgymtwbYN1U3YYa4cIvqNTLVr
	 46PcHeBq9NqNtfRc3S3cKpa7VBi55Kx3pYNxvvkbS1gUWuDxi2IFz6Dt47DHPAOjHY
	 Z3f9upsZEFG1XB5LVR0bHefupveimgyFHy25sJq2M37oVzhPyJ0vbm0NewFNBzPF17
	 u5LmRRJNdIn0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900D8105F790
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177339689358.506.6238349170463869673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8174fadb8b674a4ab1c63b931d72a992a98b87f8dd8063834b1701fb2ab327b
Date: Fri, 13 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773396893
