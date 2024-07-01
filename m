Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1DB2F29
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 03:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719806063; cv=none; b=Z+9F0t1PZmfm9wA5F878ZoSynCLAEkwcRWQVDc3LO7fuNI4J/Us4iUTfWAMht5Cp8aJjuPfRYP+65CRQVi9gZfSPuqKoyyyAyvUQ6SRH7CghriUW35nmOAsNSNonijwOSbIcr1uNKT8MaPs7tf8MPFFeoLRx7+9LZ7dqIrj8WaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719806063; c=relaxed/simple;
	bh=qCVzcubdHh+QkTB2zmfhcadWhgHa7Orx35BNaB1wG2A=;
	h=To:Subject:From:Message-Id:Date; b=omCyGj+Ql2voTZ5+RrNz+hPXXepu46OxHSmGSn6P6Z38N0/AWL06tzEQomsDoooKV3wZduSxLboKD696/+ieKj4H+TYDja3PVJnRcb/ZMKirV9SGy5Sv8nhXruL8C1v8tWwFJNci2oh7KlMooLsyJcr5td27V/Hg4GO0N8HfSiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rg6jLHYO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rg6jLHYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEACFC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 03:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719806062;
	bh=qCVzcubdHh+QkTB2zmfhcadWhgHa7Orx35BNaB1wG2A=;
	h=To:Subject:From:Date:From;
	b=rg6jLHYOpGuDvM2goZFBH2frIl4djeIgjPsUTSaXRGEl11GFF8cfqxOMq1EXhY9aR
	 C80xGWHmsCRZ8egLwRjAI/bT9ZqfeW3v3rpRvEvix3fFM4owV2ui79fpKq/Gp6VHy+
	 nbf03B/mB/S706dBqpu/QEBc/QipWtWxRJjf36Xmq6MGVzeTCcqd5wCSwCvKa50eT9
	 gb7fj3tk7VkRqMEan3h2NoZ6jUs0Q0xasA4ziTpgtZf+uRVUvRQOXMPrQYBim5qC0a
	 ZC4MY8dTMKnxnZAjI++Yh4Arm5eni9zqH7pnjIYNXZzHZiv4HYViXY4PmvVYLq7EQp
	 YMrDz5sjx4ROw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4FBDC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 03:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171980606277.4003.16129730268865602272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10f46491450a5b203295f0edddc379cfa6206bc3b616f856cc86093505e71c0
Date: Mon, 01 Jul 2024 03:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719806062
