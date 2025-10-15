Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F2A272E4E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760502594; cv=none; b=uXhjqeKr70hyxNs6e+7361KfeqfEf45cWtpjfPqxUv8fDwMj5MsUA/PMdcbLpVSjBP5B0YHJKkQERP9Po32bs5vu8zk28wrcik3JPJUSjlXqBi+Uyb6udWelv80rrj8W3H4f5XRiInt6XtgokMFOLKWAV7FzKHsP5C3uIk8rnlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760502594; c=relaxed/simple;
	bh=+D/sGVLi4tOxi47miffpQt3hYzfp/PC2uf+ERV1uCUk=;
	h=To:Subject:From:Message-Id:Date; b=KdUQv7M8a8Vmk2ChGp2m0xmxnztkQS93eBp9cP7sOz1KwoiX3V9P5MBtf4mCNBY2rSgOE+r4ld9s/tty/PCS9t1g29XpNrRVUW1G/+truNKDLLYZeXoyN9tsicg2nHs7aBUEd6lMR4s7LMoahmB1uiqJ1oNh6/+n6KlBJ6v4r+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOnmp3ux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOnmp3ux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4446C113D0
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760502593;
	bh=+D/sGVLi4tOxi47miffpQt3hYzfp/PC2uf+ERV1uCUk=;
	h=To:Subject:From:Date:From;
	b=HOnmp3uxWLO26t+kpraqjvpCTvvFuBgjukqwAVN1oQDrirXW/q0iNMe7OwePAsPC8
	 +kLDewZwA5B/6oy8/84n6JL4lcRUqi3N+voXirkeAeDhzSo1cJSzKxNQvqmahvNRyn
	 pwNWH+iUdH5Eg40Kig30hWu2KBXE/8EBV22ul4R81LagXEtJVYTwPigMoP7pPoZ2jA
	 tgQ8PvptXxpEJhZvSpent1c3NL3HXkJmozJzL3C1ZdvBgfbNbDd+XqNV3aba6xxToH
	 go8tX4TtM1rxKqFTioTs0+kslr8bgVdyXT9WLoWRNQgAC0mqBi5j+RkrS+UK4AQyIw
	 qsBo/s80sZ5iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F737CCD194
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176050259358.9089.6866757189178118307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6dc469a543e978199e8f7c3dcc27f9af80da255e16c81c5cfbc9405bc3e83d6
Date: Wed, 15 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760502593
