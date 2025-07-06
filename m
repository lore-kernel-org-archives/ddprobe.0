Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2014A3595C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751806794; cv=none; b=W3xFT0V4wHBlyWtr277iOBuCiQQa1cjiQ2CF9mNXcMzqtaUgjOpt+4KAKA59iuhu6PfQzd7y6IiDkkxSRoZ5uF1wZsxkKeR13s9at5oQ8yMpekJ/ePsqkQbEIibqWcxh3DMueY1hqRQQn6TPIzCDRvp1yQ4Naa9Li3lSIMCChyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751806794; c=relaxed/simple;
	bh=2gO9Bx9Z3lO3AH1H26PwZ3bnuLEuP9TkU2n5/AHJhTE=;
	h=To:Subject:From:Message-Id:Date; b=AbSvNH3IKXcUAWhT27ICW6UlsldP+MmTQHZtbtKW0SjZNUipa1ughCNIlso63WYaOvqHVcm8/nTKFqk9473AMJxHorkZpeIZIkPx8tZDFiGpdYZmK0Qeai3ttfAkM0XrySwvm/7nG2JdNOGPcz/7idyxX4HzY25VdtFHm2zFO+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SrKLNoH2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SrKLNoH2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAE9C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751806793;
	bh=2gO9Bx9Z3lO3AH1H26PwZ3bnuLEuP9TkU2n5/AHJhTE=;
	h=To:Subject:From:Date:From;
	b=SrKLNoH2dvPXlslGO28fYkqg88uXN/Gj8blrONH2XN7dfsuVzQ21SA5qtSFsraG1y
	 rzuHHWL930lzDL5XcZsovAFF6HNePn1IdpqpCxCZasQvMGZFNACJgbI64f6sOHQ779
	 ifxRasaUSVHz4CgteRpYsOuc9vyG+23YGsRkXiZtD4cQaditEprsE9ng/F0j5F/YvB
	 GfIVFHEOjNEZV2Duz+zna3h8WdmLgu3kCXftUKfAfIf/evZg/5y0pOYgmL20r+aDMf
	 UnN5Ndq7r7moznrb8kAG5JMbUCcW2w8Pk1tltGNjAt6Pp+yGvFYJQ5FEHB0ic92GN2
	 kR3alSMvLvrEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2A4C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175180679357.19357.8180790095366145952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f5f99f28401d70e58e32ea6ec62f4aec144086785f081ca4f6ddd051197b4f9
Date: Sun, 06 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751806793
