Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E43FC2BDC0F
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768448034; cv=none; b=sUft+CXuEpMUiob0TAX/3hrgfvh7g0EvuuH9E5f+U4xFC947ecNMIVUOvPS0lWm2rJFPCw72KFSsJNlJ5k8a2tRZc5zrLNmerRfXWzXa45UR4RjHA8KSXYcegLIr4tWomK4AP8993VQIJCWHrQgfNm0LAN4U1NVy2SL6aQ2IwKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768448034; c=relaxed/simple;
	bh=8zbMVl3oi6XtoW+wgANCgZIqW2ibHb6PUrrbZj+sDqI=;
	h=To:Subject:From:Message-Id:Date; b=jT87VeHwGLS3Q0VCAfIx+6mj09qocjeJxYhJFl1FRa/0a3zBbvg5CBijejx9qrDrgz4B9wqlCLY8visO7ggR+gJUUm4CM+VMyCGncOkdAZH63SZFDCM9h3NVQDubFhDF39NN0wFwtH5FojaOdrqACUByubhPhUnncox2TV1zWRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/TQm789; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/TQm789"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6F2C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768448033;
	bh=8zbMVl3oi6XtoW+wgANCgZIqW2ibHb6PUrrbZj+sDqI=;
	h=To:Subject:From:Date:From;
	b=d/TQm789JlhUuneyLjaOuc3LZ8cfph3cxx2fzGgLYt47oET3pd5R2Hj9Fr32iQR1V
	 IeE8JaDXRhXzq8y4/oM9U0XLTmEoWcQENyuJmp1Yrdtg9BSojTKZpKRIDMeJcWTnp0
	 KTS3lFwvxrM//YfhffeXisdZxywTHuThXxW5cW1KxWeaNJ9TK0/ozXWJ1vf9EWEIiE
	 rmeJx0+/FaEqdZH6gx1mtxal6nII685sc1rLkFaxVE6zksry1R/5VnmKbZIDg2DBL2
	 FEpa52y5w21Lnw7CdpcuRiGpTygeOb2zB15EopUOtrGMQpC5k1s7T0Caz6LuC/NLgV
	 ezeRo1ANsO4/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9000AD3CCA8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176844803358.6376.6506009089966340223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 544ecb972b7d0877857573ac5501881e91d776f07bb706367a6ee16de4ff7d41
Date: Thu, 15 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768448033
