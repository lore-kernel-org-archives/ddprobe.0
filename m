Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7398734F27B
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 11:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781436394; cv=none; b=j0Fw1lPoFkL4l2YNWF46EzlF5mbnE74WNvcRoloNfFhBucFwJxRVre8sPSQGr8Uyi8XflYudLjj7863vgTZQIhAXNu2NUbzrqOkf3y9QHlbyfJjDPp+1VOakeddGne1MomOPDlYKvd6ow1z4r44qS0fXSYoDy1YFZ6euieysGFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781436394; c=relaxed/simple;
	bh=+MGvoMrpWFbBQjNFbMQT9Q1V2KwuuhIydxKoEWNwGt4=;
	h=To:Subject:From:Message-Id:Date; b=Q27W6KFD3/oJGWXU5RwdOanYqnQBO9tbgxLL4ZLGetRA/CddVt+VNEv+8XZ/8WnIkv2QzbpBTcDnPcwN+xwtfC7Ft9kN+NDRAQafsSZTbultXxntAnlEvP2tb4V5/OUMIimf2G4/1pXwmzfP6y8n90uPOGdT9hk/hd9xsXlPlSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFOxIOAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFOxIOAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC409C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 11:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781436394;
	bh=+MGvoMrpWFbBQjNFbMQT9Q1V2KwuuhIydxKoEWNwGt4=;
	h=To:Subject:From:Date:From;
	b=FFOxIOAOzt2h0XvEIT79drqjx/530+2j3Cyq17/lxmNIk1NKatNvPLQ77pNMoq8W3
	 1XipB11yDWepcPeB8fU7coyVmWjSGVhmkuS24avZ/fe/Io6mRgXKiQVspGLU0ZFy74
	 nAL+dm0/GUupRfOqYtgf+A4/bRTlg4hvPcoUBM2Z/nV/nqb/RlzHlhGm0QSxi2P4xi
	 qIr2jqxGm1LfO07ViUmHd+uwJsMlPZuLtOibItWRQqvEQS7v+5GuCQxpBuwLny3gKS
	 S27OENm9xdrXrNL7dd4nk91ZLJGbVppBHNSnBeEb/HZcIW7h2sNfE4LZg6TrQJf8ie
	 YdZbFlSYlMryQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5543CD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 11:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178143639375.18905.13944816794082034122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab94b5d4bf46a825db9d87808a6ccd41de002d7670fb45f0752af0e1f1737f55
Date: Sun, 14 Jun 2026 11:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781436393
