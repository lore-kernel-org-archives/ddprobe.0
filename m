Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E616E2EAF9
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707573497; cv=none; b=twVC1O1efxdqqRuPTzhGrffGqqkNorjcV3QmogJVKbUjY/iutdNbCof3wzt883QFcxo1LROAFM2jgacTjJllKxnoXmyE72LI7x1f2CXqPvqQzzXKIC0r/5SRGuhUamovJtcn8nqaxIEv4YDqCM0vL//yuIoj9lMtiiz33PbQHn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707573497; c=relaxed/simple;
	bh=HAcTyOLtfR9dw1rljfRqBgGmNZAwfTPJlgRrL9SAHW0=;
	h=To:Subject:From:Message-Id:Date; b=k/efY1wAW9+E7NRVLbg5m029pK2ldjVElvCM5Oj9ir5txC0C87rNSbtybT+xZPLxd0bbt1f9cTio95RSvc0IJDHBJ+TXOw72ZEUOPzzaqGaRp6fR8nml1Z+u1WrbxZZoDTpkRgNPl8NOCMuVYh+HHfqHrR43kMvcr4XQXFYG8Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDiLH+Vc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDiLH+Vc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80B5CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707573496;
	bh=HAcTyOLtfR9dw1rljfRqBgGmNZAwfTPJlgRrL9SAHW0=;
	h=To:Subject:From:Date:From;
	b=fDiLH+Vcrk1vETUQNPI1hrRy4EwW2ugVZq+Q/RaQksItrN0fkSlerMtzHNrj/Ot1F
	 PtnQnBbLQqDrQx2/GwPqzExZ75avEKPpsBQCKHlzNxsfAoIDD62OjfbznPXPtDTXtN
	 4A+yFqDxnX6h4f+8gkID4YXWFMIQ1guCS+FeE7Wl11VCfFOgfvInDNlSK7nn7kEBlH
	 oaac0bGB60dOv0tq5KKrjgOcHUzyR44RKA6SkhMybRTlDeGIQWd64TMaOyQPHGLKxu
	 pXG5P2l3BDTsZz3IPX+//6yfzLBzu1ZFfMZErFADFLipnLOJ5scz2mo1YTgXmHKcUV
	 jaO21gDxUTDxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64911C4829A
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170757349640.7784.2589491015788161072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697e6d5be4cc475a768a985dcd9337bbda06ebd6d72874e17c46a8fa0e45bb2a
Date: Sat, 10 Feb 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707573496
