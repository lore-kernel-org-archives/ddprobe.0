Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9E742F56F
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773144294; cv=none; b=XbAj8DCcolDd6KopmvJgZLtIRGloMsKvdedch47RIsboTUepukEJtqsOcujzzwVJ8h3BQ/egaRNWfkorydKXQGyIjLH39BlFz2A3viKl0S9grB9hM1chqYfzjsWITZZO+GMxw59p0QPmZ6oPOEjBgzgaTDffz+IL4+BQSlIywsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773144294; c=relaxed/simple;
	bh=5iFQTAJ7juecHjQodVv+N9BiBNhwRNgdNT9IF2whCAg=;
	h=To:Subject:From:Message-Id:Date; b=ECf5nzoQLnF8/0jwLvKwGkCYPc0y6csxmzFfhOCidHexHl6gv82ugnPhGxK2MKSNAQRLQb6T4DcitLNU4oqevWlKR3GVBXuzXRFuVBwqarfzGD3hOk+qzzbs++3dZUh3oCPYOWzU8Nkwx7zb9UBjR1ZohQp2wM7z4vR7kwL0Tps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mj6zs5sy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mj6zs5sy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F63FC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773144293;
	bh=5iFQTAJ7juecHjQodVv+N9BiBNhwRNgdNT9IF2whCAg=;
	h=To:Subject:From:Date:From;
	b=Mj6zs5sy9C7h7qFszqgCuudHwMR80B77rY05FEbv+h1mgm3D+bWlv/qXuVXPeExq4
	 8UdPEuXKiAwpAO6ssYgJOL5Gu2PH7K8X5GXeplVTLMA0ZrxbgvcS3EJIb6EQ6MdRmf
	 hSaaM1kpcvPMcFjTJW+jtKLtbApPAonxX4nV7YJPxyX2jRpM/1oajVv8HQqR14XDqq
	 lQzzBwjWhy5mRmJOMKQSiucJXZ5PruFx5P1nrnyUc4bKw6Jl5CGAmbUGHOyt4xpFKk
	 hs9N1iUMGk80RoJ43Q6A9PsGvT70bjJle2QTaJOXJRDizUqkgG3MUjysPzQLDX2DhI
	 NV4KBT+tRlM+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902B5FD2D62
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177314429358.31344.7985761538576374964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51de09b286f76464862ca47925b52e06f7c33453b51c7b05deb941aad64e2443
Date: Tue, 10 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773144293
