Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBCF1C84C7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758691194; cv=none; b=reWbGFdu2z3Q58gOw3xK3lD8PBiOBEezfpTayK/kbLNzJfzFSUUfk/3E8/6/tOcpVCXsBM1wQ25ZyIlGJtijvnbt5WySbAbnGhLlGJ3Hb+tP/xc+6rBSwGDuYFRH1k0A2IT1WKvPbHlvX+/C+CMmzexG7TEUJTXTdUq+/dsJPpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758691194; c=relaxed/simple;
	bh=PLvXtbL//zORsGeSQvwfvl3SNip/QsfQsreXLXDGaJQ=;
	h=To:Subject:From:Message-Id:Date; b=GAwgPqFGZnLss15bx1DOaKp2Pon82VXmjoVPuTzS2Gm9vIlI2JAvdHh8vv6QjCjy/MmbZsb3bE2B6YAvbQYPjpKqQ+TUFpm10eMiJvJGOejz+NsfWo76vAdJKNR0qZeiXTyeFp53CrgjlbhyrOg7G1s2G25dXH1vXO1GgyZBVaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDgZMv1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDgZMv1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A238BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758691193;
	bh=PLvXtbL//zORsGeSQvwfvl3SNip/QsfQsreXLXDGaJQ=;
	h=To:Subject:From:Date:From;
	b=pDgZMv1Znfq73K2qQw1eTG9ZxV5wZ5yHBD2K9vAzhuNjsIYbkkrnn35gAuLwmGqfa
	 kjXo2wMSC/1CBI1no1XP1G/EbxeoEdfynqsUPhPYIaW6dx/741s3fRKuL+De/3iCV6
	 J1ex06N8XXce9Bnvo+V6Xr+0N0uVnv/8grvKnG8CPMZadAGvnHMTy7gfaf7R7Y0AFh
	 Ji3W6FMm7hQb02XrKrN4f8kzQZQIOTY3JLaW+ZaJvql8Jbtl2CCQQSCUsE2NPWhx5s
	 QItQm4EYxx2CrVFN7yRs0+00E0ONxzIkU/nSTXv8Ne33zQ9ACfnyE3lUnPEh/Ui04h
	 N0ShHaCrtc0wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905B6CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175869119358.17450.3181084053105506251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e6c940c4d2f0dc3bb7e8e45dc29219f383bec4ad3b5572c851f01adb87f5450
Date: Wed, 24 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758691193
