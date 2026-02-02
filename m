Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B255278779
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770005034; cv=none; b=sLXzgbv31BKhmeCtnlxioewaDxZzh9ExAscHc/6UEeXtD8Ob718DN7EG8az0yVrg2/3yoAuAGSOuXs6xInMM7Qz/9zANp9cxZ96l5IpEC1lnogjySPszvQnsO3x/7ZK9tHddFbJpWqjoFP5Z5fNrsaITQI5v23DKiKIqqy1L2og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770005034; c=relaxed/simple;
	bh=P0WIT+eu5LeNo4RsVp7ZIVDXEt37NRNKu5CajY4nhEk=;
	h=To:Subject:From:Message-Id:Date; b=i64PPnU3SLf1oqa2bp6OmHEiYGAIyAPYIZYCdYzaCJaoksj6N42t9sNIFa6cK7OlVwbQUnDeZ770ut9jX1/aCX3OD2DTH7SLVhYxVGVPj41Wx1w7Cr3QXeciFIPKiPA4wpDW64c6EBPu81aSzXzcHTPqBDnRZSNNk03qwx9kA1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OB1IZx3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OB1IZx3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA978C19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770005033;
	bh=P0WIT+eu5LeNo4RsVp7ZIVDXEt37NRNKu5CajY4nhEk=;
	h=To:Subject:From:Date:From;
	b=OB1IZx3/bTJMEcLA0dHd0jJj/Dt0yZVY8CNch7+kGAZ79bICsRTCecbcslFxEtY8p
	 yUUO6tEa6qT1oS00cfxmpYxIE/kxM/eZdyuUR1ENmbMwew99ZhJmD1Kqmfa1/c2Zyy
	 EN1+Qeed69/GoAj7+V7yWGzpsHw5zNLEVwwsBdBKP4hOjksGU0eFPWyMX38VVad67Z
	 DJTQQSYAFueSpdVuQbo4augXaVy+8gKWGb9w/sB5ndfVBr8E3muoF78UWkfgvJNfZg
	 K7xiEwh7Q2vxEnnKsvVNYA1W3jUQ7hy+UqGMGfiTSnzDo748in8fFZGnOnP4yUvKZX
	 ttqS2n6/A/MTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E02D172C3
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177000503363.15508.10481841122064049548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 978ff70fa9ece290bcdb05592eab6b3dedf627ed9cdb67c37d101a87e1c0819a
Date: Mon, 02 Feb 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770005033
