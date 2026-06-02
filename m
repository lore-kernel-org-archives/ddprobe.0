Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3E52C11E2
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 10:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780395874; cv=none; b=mS74XJm8hyOrLYAeykIbjKukC1tZ6MWMkspXPtP6O25bH0A/cRAjqm9EfKaBox4fhUT9vU0I9tIw67v8Q7ECZnX2gAgfFfU+79LOilPVTkR4D/t78un+zy44RMirN2op88++Jt/BC0zXE8yni248gNB/YjGSxLKWdO+shyNdkAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780395874; c=relaxed/simple;
	bh=j27zov5UyRi9F3/E+T/UeHrUeEJvzrhMNg5k8TwllxA=;
	h=To:Subject:From:Message-Id:Date; b=ixSxK2o5vANRz1rmu1vFJ0TKXLpNFRspeFIianSCOhfnL+zPNC8jc/4uuorhW33sqcEshbecikmbQ+NQAbIF2JID1VXvp/PjrZZzMnC6vvUkErLjiaCZN4c6nqjvoR+HGoWODSTJHDzf5/Y/RNE82e+IueQY69H4FT3B/cDGJTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hy19Kax+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hy19Kax+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5AC9C2BCC9
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 10:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780395873;
	bh=j27zov5UyRi9F3/E+T/UeHrUeEJvzrhMNg5k8TwllxA=;
	h=To:Subject:From:Date:From;
	b=hy19Kax+AO1dMN7OAanUYitqm8zjLAI3FFllAHOZrmcaQl9IAKoIXWctAT4RdEc5Z
	 GfzmAg4Oor+LcvJvNifa5JOckZ74k//NcmQtdU26F+dFqmEFohKJmmVCTZrJ5olVnH
	 AJz0g4njneagzhj1LlQjOUILY/Fbx5SUW00F8YVHUMD+anWvSAOPmuEgNvzEI7GLXu
	 fGE8dTKK7JAHtd+O5jwjVABtNRY/CX3EsSoKpxNioyxJnY1dnNHfsj57fjr034JV5l
	 +vl0tqA7rEO4EVLqBNOYszeA4CZGVV2bqvF5YmjO2rWRzYap+6+QRDyk0Ioy6XRRtz
	 Yt9CeEYof7TuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E68CD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 10:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178039587368.27519.15697226183813869784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93f89826659dbb1f14b60ab4b11b7984406c4123a9da82eb64b910742ff0dcb2
Date: Tue, 02 Jun 2026 10:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780395873
