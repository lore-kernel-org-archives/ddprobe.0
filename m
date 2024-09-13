Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B8D1DB551
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726232754; cv=none; b=lKQxWvxYJtmnBViS5izvFyuxUJqIIgXBJOQ55Byrbuk/HBUmeDXFvRFjhaOg5aRBSEt6ookTOen3gDwQeIcVgqfSF8lmT521HP1JYWMl7EeEvHxO87wa35rqDIBGCgijTPU6SeIaX5Gf2T2aNi2OMohg1gTlD9pUbr7fG5/DX+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726232754; c=relaxed/simple;
	bh=9ac9Ol/NNfwwgjwjxdT+gqLKlc1W9qJV3MDS60kozok=;
	h=To:Subject:From:Message-Id:Date; b=Fl4VFZbP19x0YnO8/57XWduvOitK9frq+xjSH0puA9+nP3Ls5LBNXS+H5JIe3mDWcXhMhUaNfyMqt1cgHspKIQdzBcVzjje06z4dTenk5dTbqbezOnnMjpikBqSTYlgYzxD3aASHL06vE8Z3pfFesNZDgxNa2x7fIwQvWB5b1Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjVpL/X5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjVpL/X5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A850FC4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726232753;
	bh=9ac9Ol/NNfwwgjwjxdT+gqLKlc1W9qJV3MDS60kozok=;
	h=To:Subject:From:Date:From;
	b=OjVpL/X5djcC6a4ItUBzci+Rb+hTeyA2WzTOZz76tjVOVTg9MZp9NYl8dtgDPwnUq
	 gqg2752bt+272+bl/xlJgLYplJc/m9e/40QFjr8T6m/VOO4BQMoVFw+l0BwB2nFTVU
	 URjslmVUMXJmW3AnZSzxMcZBgotbDLORWuVqx8a6OljGDAN1bCyEpedjDzTneFhh+l
	 vIgfWuNxA5sr7IyFLQDA8A5GIWDpd0GZtd+1FnvCOrkMmlF4NcFuFOCPTXfhdTWfUB
	 ys1DsqW9dYJA7DmIZf8ypjzQNimu8RYZNfgmP8SqOdgC0LprsQ2h4/gNji8THEVSYD
	 VntbFuSobqnBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975D2FA374F
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172623275360.12393.7538521038884835052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b531825b0f0de3c69aa867a8a1d871dd5074760d15caae652fd870c9ae14e90f
Date: Fri, 13 Sep 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726232753
