Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4026A481FB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 15:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781709994; cv=none; b=TzPyib//5Niq9q5Td4XG98GI8DM5Sy4A78NRZRTauCwozcfRJY4xPir5R5obTRFR7sxu2/DoPc2mpIBFC178u2sMQDHxoNilygFhlaz7jWKb57t7GJBLMFon1JlCAzki+dwOCmz9p1IHujHChs6WWBdnCKUyJLpgyKLnMWYA/14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781709994; c=relaxed/simple;
	bh=bYxkKbyLQ7k8bYCVBGYFVUs815dH2IgyOC5iD7ECTeA=;
	h=To:Subject:From:Message-Id:Date; b=jEvGmy6E7vDyqWjAgA3tXj+zFiFdKmws+2fKPvuDRXmioX/ljik6N+iRIo3oH3AV+NUj45zJSK+eRsfKvVBuz696uyM1zu6DTxIZXluis3AzM2hcr74sx3FlFbPxbOkONrkBoJJ52VBd+w+aJlNMaTeaW8PCSFSRWOoMemiv8u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qk1uHH+n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qk1uHH+n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05693C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 15:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781709994;
	bh=bYxkKbyLQ7k8bYCVBGYFVUs815dH2IgyOC5iD7ECTeA=;
	h=To:Subject:From:Date:From;
	b=qk1uHH+nVXYUHqf5sX53FtcN0e+RKSxsQhB+Yp6z6bNGBRkJAc15uISntN7/zpTHs
	 fUh1XW/Gd3GOR3GbNWNWld7rdIewOeFkYXVUvkHpmMJkdAocuVWn57sN58y3eeU/UM
	 BV/z/NLUvHANambPjmFOml3iY1RN8x3RkeskWdqbsbV2vK+jqQvi/s6WxbRu8qVbuZ
	 C7HpPoRfPuOWEUA6yPaBj0GqNaa+/fv2PATI9JTmn8dP9jpNbGMicvc/CQVuXflqLw
	 otrCo3Uko/bTxDXxTlaDvaapDxi0d1XSdYEmPBJGDA/mHJMFISTOAd5tCEMoXYPPh2
	 /J5J5jOExHFUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C145ECD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 15:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178170999378.16482.17760801049830402188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 142a3074bbe54ced825b951a49ae4fab7a2bb53da44d21a1fefd9b4456ecbae1
Date: Wed, 17 Jun 2026 15:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781709993
