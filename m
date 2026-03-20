Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 015A63CEBB4
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774026294; cv=none; b=LTh9/CrQbP2AKV/qjJTNRwY4UyXzTqmoFs9It2Mg65Ikw764wc7UzZgxwp5V/vSvActt9LIDzGz5sY7qIZm/yZFHmwMtgNFhE/fNuvPEt4JeU3c04VhI2PaOQBtqkJt3VRse7d+7uushWQqQeaOnHyiAkrzH2lNTvDCkC0CQI0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774026294; c=relaxed/simple;
	bh=O7goxe5SFT0cIrx/FbItrtnoI1QW6JwSSnnhGuMDgII=;
	h=To:Subject:From:Message-Id:Date; b=RGVmbv4AfmlWgj9vPhEKCO3dvZIPzn4Me2/2PIZPCytR10HH1iT1oblJc4bn7jeHM72rUqj1+/9l4q5RpTc4Jg/pvOQgb4ucb19DarMuh9m8Fjz2gVfpdLeSw2pXL7t71nAFMF0+xaDLeacdF+AcXJ5lPMHzQq9pJxiNbvu1E+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCyLUvQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCyLUvQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBCBC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774026293;
	bh=O7goxe5SFT0cIrx/FbItrtnoI1QW6JwSSnnhGuMDgII=;
	h=To:Subject:From:Date:From;
	b=pCyLUvQI69BDX2sQd/miVp9ZQTzkdFGU17rmeuLUm6xNFSgqtAydqj1iTMZdVk1NB
	 0Rcsrw9DIwtXlFLhinqBjqtpHoT21XZgiDTNGpYAgHA6rH6Kg7md57l/IeAalJ5S2d
	 fT8UZj2aKq3vAH+wiX0bHrbqYjJFpw8kFgJXl9B6XjxWlD2BiiNyucXxzt0yNuPcb9
	 jaYRHWUo7J0Lf/l4tUEpabgfdLjSM32r/ZZqoRd1HJD1ZKMAISXqqtdtXh6NMS3ODM
	 ruznRSfvYZ+C3w/f9IBJGItl3LCs0DM4ODha4dhc78EZa/VTppfD8uBs4l8EgfQkCa
	 nWuAGTAQQr4NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB661099B20
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177402629357.28581.15002302571376615283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27f0de6ee3310a11f189accdbc5fd1a7b43abd3c0f5b64129ab47dc721cf7dd
Date: Fri, 20 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774026293
