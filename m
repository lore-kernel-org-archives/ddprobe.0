Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A9E233935
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 18:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783277314; cv=none; b=HqSUiUAhI9sdgDPlho9heHNBnoMu/QQXQqDJJZdFaosamU3auZ35o/g3majHA+4RJ78fhlpW5PENMuD47LeflBDkh3Hu9gDPO1VMOA8No7aAX71svpNfeKlQiPa1Q8R4ZZuGxalTxdEcAL62QvacpgXoa9d2kOCLh0VbndSnACc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783277314; c=relaxed/simple;
	bh=kLFVl1fF/rmUJ2jqbi2VYwfpYBG+mqYqymyIYMeRGv8=;
	h=To:Subject:From:Message-Id:Date; b=SaK79ZlQ6ee/52Mj3zObOV1luNITsPWSJ62gdLYuXz4XKuRCY+IVjZnebaOdRDFlS88sDcu5S0RwFxLTCDsKvnoXClXwE4I9v2eGvIv7k60lndoSl+/nyIvq2zt9fBOA+Lp2BIeg/qwDPq7n8LzfNoNyof83vvjFjcyLuCCgnCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/x1tdq2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/x1tdq2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E0AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783277313;
	bh=kLFVl1fF/rmUJ2jqbi2VYwfpYBG+mqYqymyIYMeRGv8=;
	h=To:Subject:From:Date:From;
	b=T/x1tdq20aR/CXjDiE5LwJzqbuz8uLzCFJoix5j2rBK/eV5gAeF1LuahstX9OEsXt
	 gXO+UQQ5DB05Sib58zRThnFkJ1odaNeJHQOWT5czOA7ufeLYFhUcYmNnxsm4PTpUSg
	 eec6oxRX3/B1ytDA8o8rLySN1IOc8vbONwAOw33Ytc4PcHwqRxoIhLyoyDSmLFkDzj
	 q+ZMFTrGHchXkqimSYE55AGbyFbsGKCcmlEzbkuH1f12H4HH0ClSm1kyejIBy1vCDm
	 W2FJt9XuzqJiy2bFPi/XplP75zLzplGVgVevSaA2kj/05uTk6UrykPwSrfYCSe85Ro
	 x/kEAxVjHzczw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCB8C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178327731368.28754.2379729172498013505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeece897647c3bf6670fe3890cf54d34747023f227e33474ff7c43592a2bd635
Date: Sun, 05 Jul 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783277313
