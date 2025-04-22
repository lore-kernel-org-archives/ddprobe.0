Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3265B27BF7B
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745321395; cv=none; b=f7XRps2qMSfp3gTBTV2Tn2yD5MrvL9eLqvk/uqVLYR9pmwLKdO72fgtZjRlq/1U+HNo/RwFIXcwThtEeJCQPEyXqbhiyBIJh5sr9MKfi8XTw+rip83f2h/rt/aDhPSAlYwLwITNQX8P74FJj6JII0ae2qo4ZtqeZxj9Kg305xiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745321395; c=relaxed/simple;
	bh=Tgu2vKwHqi0Y82w2zfmgMIvLlCF35O9qul8GRbD6oew=;
	h=To:Subject:From:Message-Id:Date; b=ouZnMGY5JeF+HAqvrx7viKI8Yowf38IP5RDLe91oPiCLRMmUF1kZIaMOsOrliIgEnBCGDrNIvv2zO3E91UjffV3rqzA+a5b2BdeLmi/JE/iSDdv7+S5bp832P1In91C0poNZyEX4ew+DGRmedTPWF6Y9Dz73emyz5zujmh3GzXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XL2oy1cH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XL2oy1cH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC4BC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745321393;
	bh=Tgu2vKwHqi0Y82w2zfmgMIvLlCF35O9qul8GRbD6oew=;
	h=To:Subject:From:Date:From;
	b=XL2oy1cH3QFUe7rDU2lvPN+4B8zVDL09xt6CoguW1+0PWrPQT8AyRSLndMliOeLyF
	 AMNFjKiWZtr1tPGGfy+VUdm8specEnmmItKDXK9HGJXKp4lntJoK9f07vulhiApqpp
	 NGrdad1nrDDplKPSllZlqtj1nXEt0ddTuzj3PMk1afT/b6XMthreHx55eqS8UB42DA
	 rxzAnq/RGDL9w86l/DT2Nsd8FHKeFVMktdlHUi2crdA3bxM6zx+dI5/+jJ8LCNFFyN
	 TEAkagCrU9nkW9kDpzQsM4V2EaHa6fp0OGKUis0AC6+oh6LOtvck0vkP8TNfvxc+k4
	 xN1HeHv7mdpaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93998C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174532139359.22862.16446420789015176608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0330f7ebe5cdb2a396dd05e216491f9ed578eb1cdf121c8d6e198c1e01512a9b
Date: Tue, 22 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745321393
