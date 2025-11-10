Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C85967260B
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762759793; cv=none; b=hbgVXunvWy5Q0AZMF1ILOn7VxOpZL7kye8W8AMssuMzD779YT+kGTEQ7Uifid6vM/P/zh4t2/quoCr0BMXpiV4kVIl4n0bmMIE9mhmI7PztdtfjKfHOYD62pBLlQAc62Q+Pc4rf/22vDqQNrvcpwq4METRkqZmeWs1UJOQgN8R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762759793; c=relaxed/simple;
	bh=Js5ZOyUQscpZEIcABFs24BtTZJTXXW2i8yfxYS/SKKk=;
	h=To:Subject:From:Message-Id:Date; b=Y1cFm3EohyHY13Zw2ydh6tHOHPIXQuoJynUWiDILDT3mKkD16a+oE0phxEFPzNCmlXHUQEykcGDtA7H+EVMK/ypLr6TYPEsK0/NVLxmKVINV1LruZ93Che58oee5zuFRvnEgWxkJAS1fbl5V7U0rQXnumEfQaeZ/64BPCOwL3HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ok7+fvWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ok7+fvWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D267C116D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762759793;
	bh=Js5ZOyUQscpZEIcABFs24BtTZJTXXW2i8yfxYS/SKKk=;
	h=To:Subject:From:Date:From;
	b=ok7+fvWLWHHsWeZrx+FPfDEXVuNOAlFu1k5xpYdIkaTcn//ihsWFXYQ2BQYp1dWbl
	 P/XGI3SwbAYfZuMlrbvmf3/Ecb+Mght645Az/3ls/Hjb6BWWwfSOfwrZdgatJK+1SG
	 PLnSM90tKjumwRGQslXpc6Wn7gd+R3wPAqSWgOLvWafEdVtNKuzcJ01ZeOQnice+/x
	 gSy9vc3S099plBziBR/tUrJJ7iI8YAvcGljsjADl7Fjgyi7MLj5D+YCLK8gsGY+xkk
	 8JfGauwgzJ+yvm5wroA3rsCy5iWkupjGBogeiBmUDIuODss2+lldK/luO7SHQaZlWo
	 7lq8bONiTXN3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9134ACCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176275979357.3462.4401844432432254523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2980918af0f9e7a8134688e137140cdce807367a072cd81fc727e9780330a964
Date: Mon, 10 Nov 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762759793
