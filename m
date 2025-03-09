Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507DB2576
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 13:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741527535; cv=none; b=jVKSLAloLlwgfopz8HQWojw13y1n4YlDP3wJ4bzoJ8vw6z+DXKg5aSrLjeSbIoFg00DdPI5GZJH7ObYftw1F3ATkOcSIJQ04Qts8Z+LYuVMM33yqp7Rp+dTXAvQkSlxqBA5z3Ed7PfpG3gxpGcm1shAtwCHAtB9giNdtiO1JAlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741527535; c=relaxed/simple;
	bh=c8dEIUTLHPPQqT1/qxlcVcdvVxSzoXLvyDK2J+xV3bc=;
	h=To:Subject:From:Message-Id:Date; b=GUeTbLADEQZbZ2oQ8q5fd8XY4fiNaHPWai3bSDUhLR+bkvgJHRf3VyxHEg8/tw8VQP8kn+cYa9fIsmf7bT1KZDIsEJ/gscHOKPfXJX7s2AZqn5YT4McsE1AztWfvaABgiHWicQ8P3xi8U6l5USgtuRxgLFH4YcbvuOvGP2GTe9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQ7cJ1wF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQ7cJ1wF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DADC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 13:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741527533;
	bh=c8dEIUTLHPPQqT1/qxlcVcdvVxSzoXLvyDK2J+xV3bc=;
	h=To:Subject:From:Date:From;
	b=rQ7cJ1wFDAO8Ioy8RXrhCbHtNLquURUTqktj9RkTJav4wkNPaj1zawzSzoEd+xb0P
	 WT8kL+yQJA1pcgk2TipTvgT1WlNfwtgtjvwut8jkg2G3yAknmRg/6Qf9rFynt9uYCE
	 qXywmGKQDLApuVN4StXVWbCmkEQTaLk14qLOt1at6rKnKh/NLOCOPTCo41mtm8PotO
	 QOp02PDSGYlDbP91Mkqa7Bocl8F/nBbwkhK4AtbkRbmVie2JuNibmQUET3re1tCuzi
	 KT85DtYyR7HbBI0KxYqO1lgyktOZI4fqjHqobrCF2bLCebbEhDZ1fyHjjp7xhGrYgL
	 PbtZ70OvuEqWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9192AC28B2F
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 13:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174152753358.19402.14683632506576181118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5a4a26dbf6999e290b8fd94101e750eb00bada00bc8611a61d38cb519c22a25
Date: Sun, 09 Mar 2025 13:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741527533
