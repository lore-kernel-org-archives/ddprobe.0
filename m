Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE7D204F7A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736461554; cv=none; b=rjCMSQKLv1b4mb1eTjOMHLh8tpqqSSSN13mSLWNaTW8pxecvUpCk9hLAGuEDdO2pSgu6/ELBCTvE5v6oz0DUTFZrR7jxqR7TJ4sW0iWX+SfW74HpDdv0XeceIHmkHak2dBB02y3zVLmiJMBPV3hx660JqfCuEkFexXwjexHdOVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736461554; c=relaxed/simple;
	bh=S0rKosADH37sWhf3GqbIRSgGmUQoQVDM+cd9XjO2Byg=;
	h=To:Subject:From:Message-Id:Date; b=rExk+sxPtl3CYXwF/5BpIeNS/qhs/iq52rs4mtIWTTNMYEJ217gs8Wgc2z9vEgyKpuQgXIQga+2iQi0yo6ig4xGazF2oKel/qQ04BpyQeOMQhCot8D+U0VZ58KAoN6qNC2quYjt2wFXe+d+0jG6pNPsZPtDlKEG6JrjaAl14vUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0x9K72S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0x9K72S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08C6C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736461553;
	bh=S0rKosADH37sWhf3GqbIRSgGmUQoQVDM+cd9XjO2Byg=;
	h=To:Subject:From:Date:From;
	b=f0x9K72Si6XlVZyQ2dEi/9AP0Iy80BtZpYHF7xi0LgnmPRbjNQXfMYnj1bkwxxxac
	 pxnrs2wFIzT1KdGkAL13HX9SYhZVRUJ5CuUhHy2t/q62L4A8u2Anught1jBITYtLEV
	 VkIXSxSmzFETY/0DSuVyFDK9kPPiO+AtlJ4vFD5Hh6qi6410+ah8UpuCsljQH31qhu
	 6V8yz0LCYxr3/gd/Qj/kMrjkjW4w6wAYi8CeMSQIdVMJi9m45Vm7eYXBGFYc9g08O4
	 nMx3XC0rlZtm6BE70Wuvx0+7okOUSHXsVYcEctPmbCL2yQ6N/jX5NufUy08pbKn0+l
	 tTWSn2tPgzEmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAF8E7719A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173646155358.19880.17589409288177828848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a26fe2c5edcdd88e05398d9a94d067fdb416e5eaa4eb9c64edd970eaa41b2ec
Date: Thu, 09 Jan 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736461553
