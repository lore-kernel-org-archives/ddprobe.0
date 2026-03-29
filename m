Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B6630F547
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774784094; cv=none; b=NSREba1DSS7aLingXTMD32X4SMmpLhbjmmAnYzBxgFOW7mmFE3TQ8YAFB1mUIfS6uI1f02AcsIit9Fi+k89W7m32DrJOOmabnRyEPhAbqgrejCXHPJu1I5YqtVQSWpi/VkII3ik8cXZ3vNKAzK7/lB/piZbxOEMQ3Ftu2LkyfWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774784094; c=relaxed/simple;
	bh=KQLxCGREXol82bhO5Uwkk1YeM6Ua7a6Z2U2ASGenp24=;
	h=To:Subject:From:Message-Id:Date; b=QC7nRJYrWxPMgyfa+C2GhQJmfJM7Y9WB3MyZ+EmlyBXcL6akWBXFnER6IFBSPrkDQwxkMoJJBJz2uHOQFOo+kdNMAEXVTwl1Z8jR8i6ZjnG1WAwpEDY5Oczk+r2QQ7R89Il7RM6q3qamCkK+1LqeEn2yBu4VbHTzeg6dC+kmKYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQ37KCqn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQ37KCqn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFEAC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774784093;
	bh=KQLxCGREXol82bhO5Uwkk1YeM6Ua7a6Z2U2ASGenp24=;
	h=To:Subject:From:Date:From;
	b=lQ37KCqnn8J3j7eKhfA7fEuE5DKunFJuSK8aX0F71E0dbSA6cOwmmb3A9R6iDILdJ
	 /4B+WA/q90FafqfhTn3NrCNfdMV/R12Mu78ESkK4OAGcUzfwOJ5RILvUizJ2ectqeT
	 D6NCklmCqCbi9Vu6LTir10hozw5b8bxC2W1Xbirm2c9Mm8QnNNijaofAsPIb8ZJq7A
	 AYSY1zxUXO5zhBvwj+9ui97N+eErXuW/edudELeUabAmtnm5m511T9cKz8gJE5V7wh
	 RNHTIrYA+kTvDfREWoAUCrPPyehc9L8TEseKg5pC6WM0KjOV00bYTDeG7DeLzOZGaQ
	 OGq85D4hvRkew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91191F3D5FE
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177478409358.6327.1163004462256368045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c81bec88ae9201be82c216ecbe71276e9369789288bca6db0bb0c1b07741f04
Date: Sun, 29 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774784093
