Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FAA24A1D
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754058595; cv=none; b=JlgU9gDm5xl2rIel7VvVHcGmgsX35UwoQLE/gbTYXRSgopNY5QbCJ4hQkZqpOxli8QuLri0rd2kP0hkv/Rafcotb1cqlditTPF5sL1RglOzqDeCvcbw+gwQXTSCyudClKS9v2Z7QGtYxBioMDHzCLLLQU5zJMU7GpDTBL4Gni3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754058595; c=relaxed/simple;
	bh=oi+i/t23vQKpOaGl9GJ83Smqv3pD2/kSJBLiFkDUrrA=;
	h=To:Subject:From:Message-Id:Date; b=mB/N7/FbgWv7ZAs1jFL5gFywZvh7cmbmTLRZ1skfm3vTJ9n5Ttc2/jJ4WpMqluVKR7JiUzgBNFXJMTNamwTzwHiWk0GIDui5OFu0ob2p66uLYRna29SXT7NhOv/jupcVkodhTQ7hmAXdRoD0y20xuIsMrLLAgwyYhP1oWHlNiJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hf1Y185D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hf1Y185D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F699C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754058593;
	bh=oi+i/t23vQKpOaGl9GJ83Smqv3pD2/kSJBLiFkDUrrA=;
	h=To:Subject:From:Date:From;
	b=hf1Y185DLzWgH0VB1ql3N6oqfa/z5YMhx6MoJdwgLVnKnj2Lrujvh6SZ7Avc+STnQ
	 rKSB1NAfnpROvSrWSU8WECnG23zC9s7Nn3ZyWrz5MU4dg3nYx00UBlnUFRwBkcTAjg
	 Lrg+J1FP1j6NK9UZrASNTGUSdAFTntam6uLb+zQofjlZWEN9RayM50YvCY9OAmTvcZ
	 GAwfQOFFFT1K43AdG6fa+PX78wNa3Mlln7FWbabmx8ESLiepVE5GffhuHRl6kQ76im
	 2b5ntddADzNXIBekBaUBX7E8XfGdvV7Kd+67AmiMzGtF9at4YFOQ7IciE+R+FUMjFG
	 2fVQsFRCHdpxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904DAC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175405859358.30054.10862378561385756004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7a75c666270f1d6dcf9fc2e5acb3682fd0c77eedcfabc2bb56ec377edf91b98
Date: Fri, 01 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754058593
