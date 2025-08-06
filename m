Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295AB20E715
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754466595; cv=none; b=ap7TJDZn9RcoY2W35VDqIU0XnAC04FgtHV0pHWF8dON1PyLCc3ct5a684rRU37ouQt8UGdYNvNvNnFhwArGJI9pTAGpXRh3yCyD/15J85fFbZaetF1l0usQH3whcemMaIGluHQn+St9ElrsHo9gZTMR9rlVF6Vj9kgGLgnA8jJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754466595; c=relaxed/simple;
	bh=50PrL6CoYfMvDxWIfzvOl2ynv+rReFPRchjKfpSNats=;
	h=To:Subject:From:Message-Id:Date; b=E3iNQHmQMSe5VmpDwnDvu1ZfvsLLbagzQCwrXk9o+IP2LGXtHLgWAdMtWlMQyhp2RarOAOfPCzZE+PoPJP8zcpYhosC4xEPGEMjlTOVZIyk/nhz/j39cYPWzLGfsSEvpuVJaQixjMqPneISEHk+4dP2jxykhsmDFN4mJVeTR6Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fs2i0Q49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fs2i0Q49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C364C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754466593;
	bh=50PrL6CoYfMvDxWIfzvOl2ynv+rReFPRchjKfpSNats=;
	h=To:Subject:From:Date:From;
	b=Fs2i0Q49OW5LPbD9iOEEp2BqCWZ/ez0CceuQ3dibyKFJ9hEa8ZWgBP5vn1Ny1aW5s
	 E3hLBIxHsxsn+6flccphci3j3IvL2g+c69j//vjTg+CerD+Ko7j7tCzGIesA41SCn8
	 OE5w8GNugMI0S25foMcuQC8xW2OzMGU9D7YCVajeD36pErf6pE3ldacHK81Cl324AG
	 waq6Sffpn+bvv0PEkHejfC8J61kJScyUDm74mTk1SKLgdXtbbC3x8IDPUkr6zowPAF
	 5MaTgJqDM660z/8GNEjZWBHA9xMKsbljXTq7J/VkbookqVTNpzevCDvxOWobPL9Jtn
	 KMwt4fjyNvlHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E62FC87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175446659357.8252.16185866165516142810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 428c0cd20e616dc2f42dad522a937af147504be907dc891f776a7a21e792ca31
Date: Wed, 06 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754466593
