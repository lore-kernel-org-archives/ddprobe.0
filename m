Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2068A1DFF7
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754656795; cv=none; b=gq/RGcVHnvMxY623onsPCuskURYmyPTGHiQlyf+J6k7R8MSk8q7F+ZLFlIDUkzLZOeZqACXO2fAvRW6Y8EZuTcy+0W/LtC+idVlqYuVSjBLa8DBthQnf3I9DSdWtqxzuFlcSAL6FHwWwNalVQLZOCOu6WaoU/XjFgrFP/LJ/hw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754656795; c=relaxed/simple;
	bh=jaJJRKV5cp+B4SpIwGf5/24URBBVmv+ZTLem4LIPPDc=;
	h=To:Subject:From:Message-Id:Date; b=WAJaObU7yYXHoGPKw13uuWfcsp6Y9GotSyU3RzSwmO7kZ3o3RZTcmM0spF3EreeQgt5uzuqVl5RgJhhFQ9yomFes0R1A74ToQqQxv7BVzHG2otWGP84sD4LIrrwogCaiT6neI8MEtCr9VZ/14BNIYLOB2K0SWZ9AQxU3xGf1pMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eiAuNBNv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eiAuNBNv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC19C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754656793;
	bh=jaJJRKV5cp+B4SpIwGf5/24URBBVmv+ZTLem4LIPPDc=;
	h=To:Subject:From:Date:From;
	b=eiAuNBNvWOYZJ0NaNST9lVcwgf3IuqtYWUNHJWnD/3e68WWEquKOoeZV2Ervh6KOB
	 GKj6oQ5eEWYw9Riw/85vs3l7T9F5FHIG1+RcfNYfY9Y6rl8YjMujemSvoCSp7uGXS5
	 INkUOslwAjGxt5YW2DCpJ+HyWwJjw9sC462FtQiexkx3TkZIwq3DOMPcGPQaxRIBzy
	 DQ3WtfgeGt5vt+TjjcyJXLgN41u4ySFNafcxXMIaIeIn4dKr4JvG/AjiJJDvhEX1VZ
	 IyIr4S2l8UIvF9za7G4AKcj+63CjlHQiqX2DPkzjHWdb09gzorZb8hyC1u8UUfGOtn
	 sK604SbNqCHFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED3BC87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175465679357.4916.9129164464121691803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 185f24866530c1150e93027f00ec1a5bd677c8adbdf981d140b46f4008fc7d6a
Date: Fri, 08 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754656793
