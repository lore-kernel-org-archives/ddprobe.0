Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A43916ABD5
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 13:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716903263; cv=none; b=kqwouMUvpctuCrL0eLqO0aTaan0EPs/B7s/euHHGv+5gVLHPnfuLeJX8h6AULGcRYUmp5wQVTdpJ85PTJTXK7cnv3qR3e/mZ1qbeZw24u4AAEmHtqtoI5u6Z61Rrw5NBhaka1B+ffFmu5El9MtRlF4SoXmNrWK+B7oYeJ2mYR7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716903263; c=relaxed/simple;
	bh=X4dWKQu3GUedvYi98MWPPeyP8hri+iNO5H37ZshpO1o=;
	h=To:Subject:From:Message-Id:Date; b=QMnWUhP5utG/txKgrfF+ckKd7z0QqHnox6j/siwhGxRxghty0WsUKhodkQQAegmvefURaKC4H96oL52Q6US5zpKkxWN4jMe9Oa12ZvMT55dlK5i6avDLAUoYOMeOtEGxAwhxSWRX645CAbQOLn+VMWtJua+8b59wZN1aurRHpas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEpGloH2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEpGloH2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBCAC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 13:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716903262;
	bh=X4dWKQu3GUedvYi98MWPPeyP8hri+iNO5H37ZshpO1o=;
	h=To:Subject:From:Date:From;
	b=pEpGloH2gefP37Hd1OMa3A1M5jlb9N2K23/DB13a/bCgtKygaMQI07oMLYkLsIpL/
	 xVJHUxC4hjcupUMfUaYIH6KTSQshk14H2SnoejPxE84jOk7z5jo5dI6ebElpWI23yB
	 ea7vqZLITED+A6ER1HJlN0ln9cFSW9/h7rYE/dxexJEFoMawA/Xpn2iK5GUkTm/7nf
	 pYrN8AvQ6XKhHwh9Q61uals5EegvdBcCtuOzGdqclY/JL90MUKUJIbyZ/pnXCLiWpm
	 1eu8+V1J9m3C2NTfSeiMIpvsxWNl9ywm9hXEjMi6QpJ41USbxV9Pde1Xk5bhhy5jtl
	 zjysv8BqzcT/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0510C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 13:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171690326278.5655.6437788537614659319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 861f953c21c7658bdd1594048dcb23ad2d3345e070bd45b52316824a3f745bae
Date: Tue, 28 May 2024 13:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716903262
