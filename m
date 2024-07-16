Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532AB14265
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 03:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721101523; cv=none; b=MnPz7ZwOuVgXMQ/+D5BcxWnB+WWipWHww99bYyR1Ht1uRZnpzohAvY/RPa+75k2/8IRPo1Ng8H+SaUsF55baCabNdskcQoTj7bwKaXpCo/bzJvi6bQwxwkX+sXzmPP93zgXfJC5kkA90nObe8OTo0dGUx11/WsmBqKbBG4UWOvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721101523; c=relaxed/simple;
	bh=yNHrC7oe/k2RugH8UnEGTULP1yDdFFmpDWxVnZqdvEI=;
	h=To:Subject:From:Message-Id:Date; b=Oli+kWKqKHdsvaucMUnVLXXjhbayneos+LBfc4az/JOx3JYIUWJ2ZNtvSRFz/QXG/hZM8eTLZGDJCzoi7UaAXlPOcxYuVX2vv9xDiZANnVTKn7j7DebmmM1q476AwHKR2HzKoWhtUywsMJLOLuDLM2cJzCSwK4SuNw5nsAy3Oog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=foTYEXTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="foTYEXTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7714C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 03:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721101522;
	bh=yNHrC7oe/k2RugH8UnEGTULP1yDdFFmpDWxVnZqdvEI=;
	h=To:Subject:From:Date:From;
	b=foTYEXTa1tIb4UQGClr9YS/4Fv/UuKNS6fom9tU/j62Ccqye2t1P2EV4kBlaYlLZf
	 duW/cRbhI08jMDe7uZ9iQtt+wLGQMDmHjRy/S3I37far8DXIXdMyMm9ZYnujrNPMeg
	 fQXlPfUYUNDQKYdKOCeOHmL+ghBj01suthOInBNZ20WBa2NkAFPTbuJSmgkOkWEXrX
	 ZMTvw9wD0lF3I9rwR5jIN4vzkVMnX1aRhLvNJ6nI7GugeqssP2l8I4wcEka0vWVxAs
	 2AqGUA3byYoH81CN3bhf9bGsxP6Te8CzRasFbIbr/C0Mj/BLVWDSzl+QxXi7Arw08A
	 s17ih0lv+JroA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD606C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 03:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172110152282.12371.10106887500964357137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e366989193db1a04d78dc6477e71f7adcc90b4a41a58d22bff75662d3e98bc9d
Date: Tue, 16 Jul 2024 03:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721101522
