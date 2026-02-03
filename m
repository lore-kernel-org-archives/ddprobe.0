Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B7A353ED1
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 13:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770124434; cv=none; b=daA3vrs/4ZkiwPkvpYsxOtkAfghiLRJIHFja6czFeCz5Jj4j9wVb7lBByu4u0OuKGH9LvD5TbhHTiTNdFL9hspbmT1IgruKKbTwKf/TCrbe0wwsV4ip9QE2lUJgJusrChouCmY21lu+/MDU8tj6ha0Wuw/1AkpzLzMF8SPkwXhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770124434; c=relaxed/simple;
	bh=2AMmk7haKfvgrlmZtuJMtuZmLNPzpswWLR5UUOlQ/Zo=;
	h=To:Subject:From:Message-Id:Date; b=cO6Z8IrPAoPeUrT0WuQlgVDYP+95wipofmDBeYKrnh71ON3o4zLBz2w66WB5hFF06CUIsoU894rexJkNwFKxVzgVFAGhSTHM6O/0K2K0E4XVeJCM0Sy8bh1aFJTF8oRSCoE38JSYUkvCb1UONdP1xkTWU9uJnotdwawv1ckWmdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/S4KdtG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/S4KdtG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7DEC19421
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770124433;
	bh=2AMmk7haKfvgrlmZtuJMtuZmLNPzpswWLR5UUOlQ/Zo=;
	h=To:Subject:From:Date:From;
	b=d/S4KdtGDEM7o275pOCPCoCKg2Lo6NkfQM1d3ldcB/UkupoScKgAjKi1WapVimPQS
	 oGMVh7nkXp9HAQf2zrPbTmC9IYJEvTQ28rkv/13otqmYh3o1Z7h0bc/G8adni2YavF
	 TCty+d3VMhBAF8w/w6ao5qT1CauWh5rmBN2w8iWBTLAl0odhbhhr8R8IwZO6oLrEBv
	 3eGvKBq/cnpS1B0lGHQm0CL2YL7cDOY1hEfcrtzplvdwg/cX9YWpgXyU3odrwMilEg
	 N2si5KnLGeSfL5N9H7rdPrEZkx8tmEEg3OU6lyRfb3o2N0vnEbFHpzphuXHMwebmhd
	 IdOW9h/dDzMGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FF2E87823
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177012443366.21198.15664495591102489972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 805f661b6413f3e9d245ed87a0660ed50576030fc4e2a8af1acb7bdfe0c7e332
Date: Tue, 03 Feb 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770124433
