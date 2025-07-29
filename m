Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213C2237180
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753813794; cv=none; b=qxCvTgSQGpUPcG4JHc4JwdeiL8WWB2FkfPJYRoHI0ueg8whR0jg5y673QavLndG+umzxX8Nsqr2JJpwdblhlFW7A2Kdjp7MqJwvRv+xKCR5JNrHR7hZiZwPPY2NAqLpntUdnhdxPPweB1DTpdVf2MGidaFd3Z/pvSu+4cC6ZhZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753813794; c=relaxed/simple;
	bh=NnC3Id+l8sYy6gHJHXnhQrlR1Aq1JrSoRS3y59Qo3EA=;
	h=To:Subject:From:Message-Id:Date; b=RoCo33Opt1drkUnufSR63+Vwr4RAB12xnVrc8WjJtvM1nDEdhKoyLv22VKbbeN7QgXyo4CQOZgdbn6Wi0VqSpO0SwAussMiqdt7TLruRW4mqzNinTKBrna5/7uI2pNhmY/fjXVgKWmgZz4+O3xZ3/X4e4TF5qpmsRF68QVyy/KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKyEicr3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKyEicr3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BF6C4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753813793;
	bh=NnC3Id+l8sYy6gHJHXnhQrlR1Aq1JrSoRS3y59Qo3EA=;
	h=To:Subject:From:Date:From;
	b=gKyEicr3lqTS/Hd1SdlK223gIgI9Qx6jHsK+Hh210psnKV42IuXHoSoxnMlZoTYLh
	 l9BVJ/iXgTuW84YqdWkAexzpsQNrY+5xiuhVVKTHrxpTobtdYksgqgraXOzqMX0WuG
	 hg4hGtAvYwAhfcaqr0jiKs5oh4yJgThQxvq7J5oFBly9lMJbnjMdW+DH20hecAcCYA
	 EukBaeDOf8EkTbBPhfbqrqYhDbC9GvzS3XTS5QwgbFaStgsDkeBTGVN5Pfca6tlC98
	 KSd58wYAGq0cnVL4SSMVDN0x/CAY1Z6tup4EbBVUOaAsjT1u2ypimiPEUHG4Ssmiv3
	 JEub6vM91Y4fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AB3C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175381379359.11346.9936902857623400347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e16e6a673e304b96617827f981af728cec3e8aafaef6329b1c5abd9569877c7
Date: Tue, 29 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753813793
