Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3864052D4
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790240434; cv=none; b=BqyjJfRUgG4RlTWAExLcfy2Dt+7lHbod2FQgZLVtaMP9i1maoTD2LTB2cngjnaczRIwcFBybxgngVxUg/7ZyYDhgcCIjK5628nl49kKvflrA2scBdWiWrx3Xmvc1LSYng9gcg0Iu8HsuoIuqL72aBiI+XF3zakZ5rDlbepApMLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790240434; c=relaxed/simple;
	bh=erqKGqsJPhaabtqOkmOK9hSiXGvWNP+dxpSCNomNHiM=;
	h=To:Subject:From:Message-Id:Date; b=Art/hdvNuMYKaLRvuGmk80wkiKBglQI+dvj+KP1elvDAgLXtKWs6LkGEVCtrs0CfiuM9JWchdHvNLgSjsbMt+uXb70VTVA6c4A8axjO45jTL8jp3ENKYl7m8pTVwAOCDcGiF3igXw6uKXOo3fsP6b0L5Pmy3jgHpayXCZgqf1+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BooKPRwr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BooKPRwr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6D8C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790240433;
	bh=erqKGqsJPhaabtqOkmOK9hSiXGvWNP+dxpSCNomNHiM=;
	h=To:Subject:From:Date:From;
	b=BooKPRwrpF7NI2FZVD/1iOPXNjjO0fu6eJpQPIVkr09XT3vvGLiGMyp4davZJte14
	 FhjrmwvigtFXXPNAn6seRYwkhbCtT2izOshSvYK/oMjckOcc3Y2l204VkIBAwr1yFK
	 XPeBhmzt67qVomgPmi3I2vVx7akSvfyBbhaSX5kQKP4I87T2o30gpPXtf1NuY8/DZR
	 dUz7IOoxdRAH70i+G7yjHAThs11PaW3N3t48pByURotcX5kemPUECVEt3C5D9RvMAt
	 VxVkW3d1Z955XLImDydFA2j9OEpmv9Q/wRNy/ha081ebxoebZi/ehrL8nXG0QfqcCV
	 SxLDqVRoA+87Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD88C98311
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179024043369.1311.11543374823993757542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17100d183b1081eed8db5184cf4ae2c212c3b13ec1a76eb4d8a935a3c572b35
Date: Thu, 24 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790240433
