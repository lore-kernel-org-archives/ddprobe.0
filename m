Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6F71F5F6
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738520154; cv=none; b=PzZQW281PcrDZmD3o4Wb0xB98BKtpMIe+xIpSjq0DLozWdWtlEGfWt+0B8cK8oe+h/I2BlyLQSzoxPrQwq6vEVaRCF1Q0bYKjSM/Awc8e2W8IoExkfFbIhfSoA6O27HAsJNQE1DJzopZUbDGeOD8xoRFJJLDqwWdygw1AFD/u44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738520154; c=relaxed/simple;
	bh=j434BIyouWNrEBxTbiaDXgTT5z6ocNoxLWg4oDtz7Bc=;
	h=To:Subject:From:Message-Id:Date; b=h3dzL5raX2UBjvj1bJHjcjfm8mGNh2E9zv+wyVZxqTrT+35oaxjtHJIJwZkPZiuCGHRD690nGxBcuM0sLxd5Ss3yR2491laeOFOLY9rTPLaOWFRUWSxOJJxRuStNRgG0YqVF0OMwuVegCwi1FP5TsKeVLGQIkRUFEldaF/3VowU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFhAmLDS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFhAmLDS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3454C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738520153;
	bh=j434BIyouWNrEBxTbiaDXgTT5z6ocNoxLWg4oDtz7Bc=;
	h=To:Subject:From:Date:From;
	b=dFhAmLDSSa+qcPBKNNMxTPkQVyHpl3jftVR+NLX1/ue28gI3fQlnRwk/arTCONwqB
	 hamdCVrrW7FZG9Ipvb4rwCssUouZAFrEvCbrukVn+Cle6+5hXg10xgfkZiw4Bozj1x
	 StFwebI89wQBUboFnMI25ZyXRNO39ONGuGtU026Ol459wCUbSfq5Hgp4f9QI+HpWaF
	 FSURvbUEu5jblOyPMa4K3CiJ5ura+CIpgiAJxcpElsVir+WnWBjHHshPkBklbqW3bp
	 qVYVajWJaqbdIp+coHLN6dU3WqDJyTZs5eDKRY93RL8FREQoNAgCsYONTcBwXiHRZR
	 diB1jMTRFNUag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99ABFC0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173852015358.6157.16482011384590054193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddf5c6e75d9c6c4b8188b41d097ddef8ccb4db90b49d9f1d91a148d82ced8c72
Date: Sun, 02 Feb 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738520153
