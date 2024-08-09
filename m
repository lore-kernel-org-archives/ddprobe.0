Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309952F22
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723175754; cv=none; b=K0q/HZsLPIapasnQ2rqI8JrJ1VYmZWyqy4DmBCAidfJLXYDoGx278P2FCBnP3IADsTbXUY9n96qBH3HGHhZmbNMaehmNmBtd/Bz2FPahAIRUkcZF6bSWkVaGRYMXUzBEIvS+GkoLd6ktCNsiYUoZVRjfXYJvmUggyzVpe3PN3bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723175754; c=relaxed/simple;
	bh=g+WNkc011tKiHKgBKZl94Ob9MWNPptabnKicpe9mY+c=;
	h=To:Subject:From:Message-Id:Date; b=VyJ5rsmtEERUpW4vcoZqonoKyAesva0Ecrv+X8Mn94Lo+hg4bUKtmUw2Al2eTvU/ZRTsAOBE8TzPb+NZSzH3qCxoRM6eOcK5mt5AqRh/m+zn82jwi7xaM9aYUA3MboQ+nWHHR8RDLtNxBoMzYR8X1Yn2Oq+EzzlwXYJskHiKDr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/nHEu/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/nHEu/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8ECC32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723175753;
	bh=g+WNkc011tKiHKgBKZl94Ob9MWNPptabnKicpe9mY+c=;
	h=To:Subject:From:Date:From;
	b=k/nHEu/e4ncDmcWxtJz36dugOGzSkw0qGBTAtoCdgnf0jp05D7BRY91pIRrMXM1HX
	 yhyomcG+N8aO5hFWkLiZMjm3eHO3YYKtj2yT5prvN0esLbLUVgU0qGkL7pi+6xmnCH
	 6QqdHopmC/hTwj8brkTEyYqmV1lsEyC17x1MAHJeoEuy1cBe2AmMEk80CyuW4N9hrA
	 WsnYE0HN8zU4PN4YiFvJXAfxdNu3/2WSDZ/C1sQwLtbQyJOud+QqnJnYvBGu8N5TP+
	 r7fF2E2ds2NcpOpS+6tOKMnzmnUcRs3nxD0ItOzUV9BDup1F7H5wRTCRPLbFEzg0Hr
	 nUhebGWUf1tlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F64C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172317575359.8795.16273101914695063679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4308861ddd82df62ab9c593045bb047757c40e66b5814515974bc15aeb12c3dc
Date: Fri, 09 Aug 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723175753
