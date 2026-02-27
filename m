Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9F436492F
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772183094; cv=none; b=N4UlqJ4pXJv3HWJ04ejJthd6JXF7ynsa+V3ZNybitXi4Cn/4tyMN4LxfDzXJTBmKOBdBI1CH3YMp1Zg96oZArEotgLje7z3igHkanyvNVMUHJU4nzGqwG2GDaBnBtsf4Idzlx4sexLNumQUSAiNzmcRIqfLgtPXvoKMEkMr+p5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772183094; c=relaxed/simple;
	bh=qZ1zsN7n6BXF7/xTXIz9JNsf45woxPOtTO1+JiuJisk=;
	h=To:Subject:From:Message-Id:Date; b=FTpSDVTKGJlYdajAGlIOp39zUD/22NNel0kzf/xy+Rzux126DcbZnhH9/ilDyWpMTYbg08pmI5sWQ+xTh+3/yA4SoxKWogYOJ0SrE8y2RrhpdIHJ9NxEFz0xR6l7jubGQbWgcoYODySd99VMNw3zYvEjZ//ieYiZgm5SRxCGcko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCIdmeiE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCIdmeiE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A587DC19421
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772183093;
	bh=qZ1zsN7n6BXF7/xTXIz9JNsf45woxPOtTO1+JiuJisk=;
	h=To:Subject:From:Date:From;
	b=aCIdmeiEP1WjchCbtLDYOVB35QsWKNw2ySOmKEgKsQfKl/pxHjslXViPVp4opPcm2
	 Rcp0OVmy8/W5vZZJaYBv6Qx6RzSTOuCFrxNoPZUxP++h/d+IY/EtNlT8DAuT94JgQL
	 0P0vnYFOZZRmIf+/42ESWS430IhaWnY8IWlHL4RRVLMxI4hlAgo9P/WaBSkUhNLyLc
	 Fm6xGtfbJnfVojrGSYzueBzP42t9uSdGkXNfN4IB5PxcEZehlIRnHeEsJXi0dzSG8D
	 3wRck2zBkrutz0zScFV93tzPaZf7oxLYvI/y8MdrmvS3w4O/vQGGYPOUUnsOUljPnU
	 ivU8Lqu5BhFdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EABFD530E
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177218309360.608.4635961351486779078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cca5140ab71982223d92b2d1bc6e6c2a8828be42384e884be7452188f580355
Date: Fri, 27 Feb 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772183093
