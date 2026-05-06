Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256CD382F15
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778103454; cv=none; b=FjYRBPjm5hsIMnnQVvCcPgqT8RcAlU88xuRBRv74e5/3V/Y8P+FzM23q9wLqKxLTK4oKnMPR9I7uUOlwX7inlvFVITAZHqnPRR/0Hi1AMN1noVnz8cTzj2Z9xJ8lttMduz98t0M4+kaH9Y4U4Pl03jwAj4S7jOz13TFCRyB2eOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778103454; c=relaxed/simple;
	bh=PucD10xvVWd+hVkV+E3ZMH7Xzch0JJeS955sc2J9F3c=;
	h=To:Subject:From:Message-Id:Date; b=tBP0MsByOBUPRpIQyC0kBfs/p5Ggl0K57FBQt1Ij4iAMQHkkvFAkjmUv9n4ybnl7Rf7F9i8spgROP+s081XI+mnUQllk8iKHzh/l69wo9e1tL0o4AvRO2MUfZh4x/DC4ulobtVu6YS2XXKiwDzJvk9YTpo5g1Q9ztk2CbtX1ylo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9YcgATj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9YcgATj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A66C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778103453;
	bh=PucD10xvVWd+hVkV+E3ZMH7Xzch0JJeS955sc2J9F3c=;
	h=To:Subject:From:Date:From;
	b=G9YcgATjTVvgohAz91dad0yggYhiGvfVZZhtOkXxY6OSZRy9evL6Ac/84V1Xol7KM
	 4I2XyWPvOmdw3w2Ga6G7PUXUWJl2tCr1qdaPsloczDbnSj7Dyp+bi/bKbyfPU8diLu
	 EcwP9JlOmRutXW9uxodArv9ATopntYZzGo7idyuqVm0onSU8CmzBW1pdkvgiHsSNso
	 8RlDVgUe51lvD2LJffm2fHC5/T0yNdwGh6Znci73Rz0xiqF7XJLlui5+CI43x/Zpsj
	 WFaVo3COlue59/AMtBoXQPdgWeSmyNfQL5j0KchSNbJWu8vk4rRlSpV+jfj5TPsUZe
	 NMf3jU6g5G+8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1523CD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177810345369.27459.14118123563309904257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c92a2d2affcfa46b2205a4447042f23c7809d37fe8885f26f727bacf9ac816cf
Date: Wed, 06 May 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778103453
