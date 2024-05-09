Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F6D101CE
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 14:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715265143; cv=none; b=TtmWbmfhwWUw7szjyV5AM99Y0hn4XsNTus/HYNWbKxaRZMFZo2oyWkMNrpglv+z0DRjeWlSZJLpfsnJAfm2JB9vY0dI0aLWZUnJ8fECT+T2Gbbk5uJvlUsRunsKsE1TQSUXDygc5tN/t3btL3UCXgUmU+TrCCxJ2evXdDL9bH70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715265143; c=relaxed/simple;
	bh=u8Xd4Pxw3zZYZpIOfTtyI4ogfzvlrytLqYggNI4rCDQ=;
	h=To:Subject:From:Message-Id:Date; b=sX76r5ergyMEhfe5FBDRVWKWWq/KS6aZMXihYwqwvOqBWJGVfA6CDCElw9i43Mh4btaA9cBT+JadBbyOTRzynUehhg/JZj2+RBAinjwtwktWTPN3Auke23SbufGf1Znm0I8GP1TE+FQ7PQoKUuyj3ZpVq7DNC//3xDFeKdrOCrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PI9dNQO0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PI9dNQO0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3919C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 14:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715265142;
	bh=u8Xd4Pxw3zZYZpIOfTtyI4ogfzvlrytLqYggNI4rCDQ=;
	h=To:Subject:From:Date:From;
	b=PI9dNQO0OKLlmzCFZfNMD+TIChPHQNMYff8JmpHi0eSX5GRVKMS2fqB1lPqoraCKQ
	 cuDPBlz72Nsa2/hNoPtWfRyUAcCXGUh4kId3VlqccueB9sdNKdl/eqK1eDYGYNLqnn
	 hQRnZvwSrTri4Wkf/C4/iDyiJUi3acGjJuQ2qqyJ5Aci4Z+/PbZxaa4vkZMeRCGRh1
	 vHxYKEEn/dpmM+UVu2TNGN4mkWpetuJbwChbefvClMXHaZcfFgAa74W/yRf4PIJZE1
	 W/QmCN6PokGno2/WWZgqIyA1YDRaxfUt7D5ZoDgxQSQ5xPrt4orKNdQbZB9TaAE9rk
	 pN6uqkOwE75cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB79AC10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 14:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171526514281.750.16036864835494967488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aba725aa54ed32927d5e59d389d596dac7b18edb64809e20693c805d4cd4806a
Date: Thu, 09 May 2024 14:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715265142
