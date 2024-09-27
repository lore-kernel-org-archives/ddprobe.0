Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE4A1BAED6
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727432754; cv=none; b=a4rQNvdLWTxCHkQhh7R39o2PbPMtlOKuSt8lgkRcOISTUS1/P1zLn59flKfw4H+jdadAYlREeVos82izRPx5lvzGeukFWprBau7Q5fdpzVXgHz8VlhhCf2S57UhY7sp/2Dhs2cm7zDNSZ72W5g+8BdtpLpFXl5WQ85GO6wSvYsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727432754; c=relaxed/simple;
	bh=28ojyfyODje8rGw1VK08S37+YJyHyYxW3W7ktyjpiWs=;
	h=To:Subject:From:Message-Id:Date; b=AT6UxvDeI8ilfMX7dxN5f4F9d3foDtIAAhBX2Gzukz486I20mH/BEjMyVN2JGSXhZw8y5x+PiQ6RYZpdggKNikLLE77OH0BqFGLChd64Ijf/47NKHnoe+xFjgIEHNwQPtwweKvKRNcNLiMHiFPfaHWAsd1o0QcNZeNBN6sIAGoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkDxzSZj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkDxzSZj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B531CC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727432753;
	bh=28ojyfyODje8rGw1VK08S37+YJyHyYxW3W7ktyjpiWs=;
	h=To:Subject:From:Date:From;
	b=bkDxzSZjAB51PUL+opD6vqLPPfm2FH4gdrjymIobcJNIsg+1X/l+yPGqsiXgrsFkW
	 /q8SBZzD8PCXDdw6/K3GSXCGpDTZQXYpg78ndZDHkEGiGb3q/+yhSiwJGpac1rDzug
	 8sHl5baWK315VGu7tHbGKT9vocWoIUn5p+HnPhTtf+TDMbXuhGH6PdBxnX3SeeH+r3
	 SCd0ZNzeHMjTtoj1TSRlqxb/ah/tBIXtnsmXjNH4bkJSBGH2EC7ExQJs1kKgsVlKE5
	 fE8Xb6CU1exLAG35bo6iur7mh4tf9sQMyKaSUGT7JR9hCRzlV0GsK6f6eiK+G7bgJ8
	 mwjrfsZGJ/s4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFC6CEBF8C
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172743275362.23517.7333982059398476359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db61fdef3699e450255eae61bd6c23af4ec94d2c34eca929027ad0176212daca
Date: Fri, 27 Sep 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727432753
