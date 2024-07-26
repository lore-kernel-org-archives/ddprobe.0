Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2777D17CA1A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722014154; cv=none; b=gJDfvVzXVGby+1kjtLk/eDbeHwFd2pMLh5QK7AvhJGm4vHgQm0saoKqVY6g5N09wcDRlLuiMO8slkkFRHebvO6ifhjH29YmR3OdNTHd5KS/Yswo3zfm0tfOxzfRwtH1REa/5qprMSTEYYbCgKSyhDw3h3NGDJ5y1v23ueLawaLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722014154; c=relaxed/simple;
	bh=92ldX2SIe9jMhtP0Oo+RucC2jcaWh/U3Hpg0JydSXAM=;
	h=To:Subject:From:Message-Id:Date; b=KwO5uaOg8S59Mxmn7cg455XgwJrX0XjKuAMAr97GLz6lzqdoYFgOVeWKLNIi6Q4Yr0K6yFiUSQ6/z5kn0EX56okfyHfrTBe7iKWBODJcQDBIlSKnFEs8ywt2Bbsw+lir7/Lagm9eIOR/LM6txwbCvrynnWKpR8wKZvWF3JJSVuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLcvv8O3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLcvv8O3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC83EC4AF07
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722014153;
	bh=92ldX2SIe9jMhtP0Oo+RucC2jcaWh/U3Hpg0JydSXAM=;
	h=To:Subject:From:Date:From;
	b=VLcvv8O3BBHmqbgQ4te+I8mYWXpy4roKo14bf4XgPDuKfyy2Q/2yuoSjm8/xlyC7p
	 3mGqz+RVjCXygoUfkkK4jRoDQ+4wamJ2CjUIyu+OxYn+Wuch0HXS2PjR2IZDvECQHa
	 FHLef7wN6NaqyG9ClyguZ4ZhCQfH545hsF5ZuGb91GXQaF1KH8xNRfybLzwCdpXc/B
	 ZssPx0cEbctrrMqW+hQChekhbFI61THi2kwpMTi5FHbWSOTb9+GBXWJbydrYY+J/u9
	 VsxWAAfJu5bK/gXUa9+DDZvmX+BilDERCeuZYx62uBFuDaHUN60SWyMldUk5Bz6IAP
	 YsxIIJNYqlDKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969C6C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172201415360.26741.2055865029559055683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 015cefd0c257c78db307726456a80e44d5a8d9c1683bcd538c9e22a0b6da72a0
Date: Fri, 26 Jul 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722014153
