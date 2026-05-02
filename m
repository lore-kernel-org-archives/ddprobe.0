Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1581C26B971
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777729654; cv=none; b=QR0V7hWVcGMjudHRgwCRXqn7/q3DB/NSQuvLPa0RBOkfW2Mnor0rwa5Eo2vCFuhxVb8N1lsFtPu3XGQVQjo5HK73BbFeSJkN4L8TxgeFr+ebObROsu9wFKTuOr0vSUz9MiqNGMDASJSQogYXx8oBctKVApnroveyxNBX2E/4E5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777729654; c=relaxed/simple;
	bh=b04LTGkM76WbSLjCaUhokCs7bghIMz8FWUsht0DIuik=;
	h=To:Subject:From:Message-Id:Date; b=NmHef4uTSh3aKgP1Xh3CN4kV4BnnTQLluDVYpRCW7BASZGsFskDTa00j4/ZU2oImbWT0k+66aD0OGMqzGzjWXrf29hD2W0BiuaFGSYmzzNnLWmmpiY6i6dMlG9pDFJlO/xavc+qr/hn7D8JSddSpw3Llb/zYj02oG4wTeOFJhaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDwhwawF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDwhwawF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B73C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777729653;
	bh=b04LTGkM76WbSLjCaUhokCs7bghIMz8FWUsht0DIuik=;
	h=To:Subject:From:Date:From;
	b=HDwhwawFVnkRgUDCtZ7EUf23J8CeNa4XLt/d03pTwNN6QyqkJCy6jsGeDYqfX0Ajh
	 lrpu7NmP8t7lvz9XMyypwOSDt+wRoP71vOwhhOUkDFgYt8UUjkbiaUglZYaoZ6YspY
	 4Ji5Pzm86urzT61vuFl8sxkMlVfZFPaNfyx7IZRtcwz9ZQQL2o+Yh2m1su834YoWfl
	 Wj8ZRXicuMypoff1dgab4V19xq1KxTYy32w6fmS0Ob6bU/Ns2TVxDjE7X25pQrATfy
	 VqZtPos6YGJoDqLXgy56keOMXGRsA+vbzrLXTr/dokQy4mDSuj5hflrXeIzoEAurrO
	 lZjDnnbkM4q4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05B6CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177772965368.28509.4831654790879979125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af560dcb59c1bfed9de076164aecb44bd8209b577dd0ff13e46bcf99d41d89da
Date: Sat, 02 May 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777729653
