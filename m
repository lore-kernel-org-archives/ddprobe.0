Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235EC2F4A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752975594; cv=none; b=K2vE3ZnUtzRAUd3DurWaxmv8XweNKaz+CERW9I2rjlXbxmN7B8Yg2wfoGg1iiwZshtmA5tsAUrwZAU9T3PT9Ev8LlK/unek3fS+BxL43Kdnndnslv+GXN5sjtZLW6SSmWwyfa3fdGRI97eBe57IDyQ6BhvWg6r8AYhxkXBxdQyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752975594; c=relaxed/simple;
	bh=vkeLBSCMJvOv2Dr1wQ5IMLQpuF7QpvGq+GelDGn3xh8=;
	h=To:Subject:From:Message-Id:Date; b=ae/OdwjcHKLDvRoa+/0XdaGBIOJXZWoQTpIIU3fTxS0axSC/bipP91PR4WpHpRQbpZvxczg+QfgIHnq4TCK4A3bn9kHbgnZTJjR1bTEfCF9uxaIwr1ELv/bgmASRBqDY1DSZXk0t/yXEdQrVVYBZIPswL6g4SYREyHDAVaM2Ouw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zl7uSrqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zl7uSrqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7951C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752975593;
	bh=vkeLBSCMJvOv2Dr1wQ5IMLQpuF7QpvGq+GelDGn3xh8=;
	h=To:Subject:From:Date:From;
	b=Zl7uSrqua78jsibxfZ7hA5BYXWBYeSlPkgS74Mqt0NaMtKO+JpCSe6SXgCEapAwtJ
	 5wwbefTgqV22+kVD99jdM3lImYamB6pDRGHE2xaS2AG5md3hY19Ph0eEgOiOmXoie1
	 K5UG3bbLc/mxA+dcg/XXnrvfdwtBNuy9yFlebKGZYyG0fPlmv8sM3j45919C0IhQNJ
	 XbexyvJIgyg2sOs3UgvOqIMwy2QRf/Oqs1Js6Q0Te95Dix+C1RJzlv43vEEp7mceaC
	 BQPhKVqNQtoMOn6nY7pDe6Xi5l3vmtgkpITFbcDf/oIfx6o4+oB6UHSFkGhTLDn6oE
	 NyGmWjOze6fpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95558C83F34
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175297559358.31899.251022959431876455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 346709dbc320ca730d1b1d1465a8c41405cb268435c16c312c9a62511cec7801
Date: Sun, 20 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752975593
