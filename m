Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4880122F19
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 15:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740841734; cv=none; b=TlIWqlTtAuBhmOgRxXIrNa1BR4zwQFnEvUFHkeH1ktnRysgqv38cCPkDZa5hPDkyx38lZEnqVLjxmv/kdI+edmdaNKt318P5/8oYz5fhLcPoW44/Yrj3cZkkA/O7hO7hfC7Ow3H0uv0TY+IfvkaI9ATfoTXnpVrN91mLMy1VPB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740841734; c=relaxed/simple;
	bh=UJZdZ5oeRVI8x0fPHiy3Sl4itHULVi977ainK05pmiA=;
	h=To:Subject:From:Message-Id:Date; b=Rz2LmQcxGaCTyWsuBuJpeLIv2IqwsR7ZOo4QicmAHrjMyirsVj/ARAQuOfusXM+8AcoGOkKoe+0UFUP0jE94dn03A2etgKoN0CC6Ok1ynK+qLK3zRk5SXQVefDXeC1aHssI/XUWQaqyhn5Cnqa9k2Tw+2aIbfYItUEJXWDZbZvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXFpID0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXFpID0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA39C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 15:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740841733;
	bh=UJZdZ5oeRVI8x0fPHiy3Sl4itHULVi977ainK05pmiA=;
	h=To:Subject:From:Date:From;
	b=VXFpID0wi+f2nXB2PB5p8s35X/DvQAnKQgjCJGbSBY892VVl4anRua4dmMQtHKjGW
	 XkySmEAXbDSIAES2v6p7IfxUQI8oAZZxAnfNwC6XEZjdtlUlx5XvXtGosZXtNSUuBA
	 RVU61AGZPL284uK2DSCS3lnprP4HNP9fdaeHp+nvRea0rItwfcCrT6/hXhQ/rNf0S2
	 7key7VgAVmWC4+NMjINYjB++dUcMccCKjZ7SNSIkBMxbMNtUoevMtW4QO6PvHfM9Ab
	 vRVdLwJYnargLRcUc3oIKErWjDjyuYcLlb5z2N3bJarJtMjZHqIE4OcLGo4pOJSOW7
	 Fv6HVkactwnNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D1AC021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 15:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174084173360.19305.833859212766589309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd42ea0dbddce7d4a4b17d422938b07d756ae0c4a2b4d1682cdecdc6b1aebd3c
Date: Sat, 01 Mar 2025 15:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740841733
