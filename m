Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D28A14D2A0
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745903394; cv=none; b=qiJnfnxae7kTG2QkTtBHAD9bSWN9gik8pBghU7duAy29kIn7kXKMIL3sHPLtOPVNomIIiF0OdE9N7mgrlrO9x5XlHxfES4Z/TqBvay2H8fUG8oQ6ZWNCkyEviXkHtB17hJ9DQbxJiPVvXmZIXr5x3otSbquFIbpCaT6wGPGhSNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745903394; c=relaxed/simple;
	bh=E3MDCbJTow6NdzqAHWaa/fHmO+Y8wo7iEik6gNQG400=;
	h=To:Subject:From:Message-Id:Date; b=G8otKQ5fT6t3epB9bJSoMU+2dKaeFaTI8CI0foE5DhJk0mqR8/gerocYgvXFGHJCXfqyUeMYfq47NfrJNqeCal33P8zdeDMn4ozJ8+zEO3GuHqvQwpRewU4PE3SXvmeNj87EdJ3CVSPFedquQTF8wONWFncrPF54rgQDQt9dd2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1Qx5se2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1Qx5se2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4055C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745903393;
	bh=E3MDCbJTow6NdzqAHWaa/fHmO+Y8wo7iEik6gNQG400=;
	h=To:Subject:From:Date:From;
	b=d1Qx5se2p7rbqnHInNmLRUiOOtgxuVagt6wfqGZeJhree43qoFF6wGYvEWkynOzc0
	 5CEBfuD0WpkrF40q8rn7StCpPrLS5JM6HmqDZeaNT28T8iwP4OIG9zbpN8rutOQHGy
	 FwPE/ON6mp2ggCEPFaY9VTFAgV1Vt3/WHjNoFAUENFJUO04m25ViP+4f3N4vtp3lE0
	 eIOTyx5Z+AE3h2OV2zl+yBB6ole7+kDBJKFck3CQJqzqz7HPy6bifVjDMMY4S3Hxd7
	 Pkw8PJ+/nlXApaCujcCxKhFoLh5nEwonSqlkdXp6RWvss2pTTr1cHZsLKWhk5VEZla
	 b80psEgcHzRxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A31C369CB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174590339357.32148.7072367233212622428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d57f01554d9c554288e8c352513e2cd65aff41cc73642aa3d3a37c507a38755d
Date: Tue, 29 Apr 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745903393
