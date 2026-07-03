Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F95336A36A
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 10:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783073314; cv=none; b=Msk6EihevoyIPMmcwOwyWJ6edhZicAIRo3B1KAwdpigYp8C97UdeICiBaVbODgqt2FWgkaSFuPqk9CsiD6Vzt0BdIGYZZU8KEZ2jsAxuNLhLzlDNDl8yYVTN7ECe5Lf6j5zc378C8Wj68uyqpFkXHNCp1NkHJmMKRJTfM4ScVBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783073314; c=relaxed/simple;
	bh=4f2TdekgX4r/p0vSc67i7ywti23I5I43aB35Wna/HQM=;
	h=To:Subject:From:Message-Id:Date; b=V5znnHQZPPRirG5vkZVBSH/APrn8l7TcPf1571NmBBjP+0wT14unBjPxhfCPxB8QfMRCpOEIXQqaTnaqtH6Ra9JWI38lSQPPg5FIljz2/B0+BaI19ucfkul+3apL6x2kqINaZBNQwGyqmN8DWVKFxrnl7K7vKsWmiHSJ53Ri44Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBa/I5rb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBa/I5rb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0783C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783073313;
	bh=4f2TdekgX4r/p0vSc67i7ywti23I5I43aB35Wna/HQM=;
	h=To:Subject:From:Date:From;
	b=CBa/I5rbJgv/0nQtuBnE5BvIaW6yny1ZsZxaervqZge6Fc8+nBCYofrBEN8DRPvG+
	 b1pPVblKUdzD/9lkZqWgdYA7I3ehAU0ZwOg/UqTWvDpx7tPVUMvylP0SNqpwx1Cy7+
	 oTSS1UpXyiLY4MNSVbz+UuiDtAHMOo+rMA8cPBdMzAtKl68D2EFyDV6Q2i3KVJG/F/
	 azoSRPljjOcYUghz+MPTcJnub7mwcKHFuAA5hjZ/1LqjTxlhGeiKTjnbpOYhiVTC30
	 g04c5mpdALWeSsKd6F4lzp7aftOcjcIGpbS/4bQdeedHagcDYgyg9pXidk8dZe0qW5
	 WJDZyn5k/nBwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD007C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178307331369.19082.3317846744642503304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 828405c90a6668319dfab5cb7f36a9931e08c8b651ef5badd566658368c69fdb
Date: Fri, 03 Jul 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783073313
