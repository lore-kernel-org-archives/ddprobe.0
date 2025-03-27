Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397541E868
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743091194; cv=none; b=FL3V1+QpAPVfmUNZ2DhUjBDcEJ4h7r9sRYQvyrux7LgCIWxYSr2zhKJytXG/qNTI7puuvfpdEqX6NFGzjgjAi3D9OHr2u/1PpxBBVv7TCbQoE/nOLmlWPkncztA1oIK4+aPV988raPgODNWsk40gS6l6kPqN8Ka1pS/wrjkiMvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743091194; c=relaxed/simple;
	bh=3vkQgtdCNXTcC/PvjrWeuoPkH+rCzYaYBl8KtzdTIak=;
	h=To:Subject:From:Message-Id:Date; b=cvaagY8a0Zrp7XyWxqBPuO8NFKB7fLKoDCar2uFHpWuoIzonJGs6XGjxRD0JVxmPDGkkKDsNj4o1yFd/5CLlEyC6dFjAo/rOn1cwaOWFi4BXVoUWRlCGVrsH9qNjIrAJ8vrWINL3IlLpwx2PE1KSrFz39df5zw2oY//fioZLcUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFX4bhqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFX4bhqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A447EC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743091193;
	bh=3vkQgtdCNXTcC/PvjrWeuoPkH+rCzYaYBl8KtzdTIak=;
	h=To:Subject:From:Date:From;
	b=vFX4bhqiA1veD/gvhrxuDNOr8mK59Q2ZE/+byNt/ErnOLcYsrgeVkHYznNCVx9Gb1
	 DQCwllOnQ5zmDCEjDXioBkSLoqBrliM6kifR1OmQ/sUDESCBIjYlQQY1p7/ktVQ+PP
	 FueuaOkMjAsUVDx9BdqU3tjBTMr7rCYs8SZqLWftBaC6y/AfM9SRaYiO1BEKlXIfHf
	 1VIxnfrX4CPors7DNNf2PU+kQE1p6tBLBXlBc7gQagdi616hNaIC85/rUXLIeC6KTu
	 z/5bkp+LsOT1/9205Ejsh/dyrwnt470j9RIiYTS9O+rfRhMq28yEiYMwxxjwH2Eeb4
	 CrlQj6w6DI/7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927D2C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174309119358.8217.2590728629808947951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ff74cb5122e691aa19dd4375aeb9b1cec018b0290de5f7bc8d2bca0ac93ee73
Date: Thu, 27 Mar 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743091193
