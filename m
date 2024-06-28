Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C279145FEF
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 08:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719562463; cv=none; b=Ic+zkCxpMCqc9CdtKXO5j0/Lv1FznGqPDihSflVd5O3jetX4A/hm1YHSN/x14K3wGuYjBUm/Wa45/3prrgz1oojs+XNCXBA1YfrRw+CsTkJUvEjTlg1PmRlmIa1jFkR4BgrM6bhR+Hve5i2uBo5N2XGtSQADsx6/5MOCcFjFxlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719562463; c=relaxed/simple;
	bh=UzRk0iYNclLpvQpOrRsH2hteaiw3ZXgfkSAfl5549rU=;
	h=To:Subject:From:Message-Id:Date; b=d6BmEpbu7QcHifpJDpsYun3g4vH6trfxbIKCKU6Sg2RHh+h4+oO7jHGKeRqdxTmrMih3TNAB9A+z4YiT1LfW7W1fV5Xy6+3ElJ7Y7418JLOELOFkX89/gybqOaqk5uCU7LfWaMVoUfgwwBkynOfuLg5peO+dxZmJcI112EAn1Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QKfYNmkr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QKfYNmkr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B70C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 08:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719562462;
	bh=UzRk0iYNclLpvQpOrRsH2hteaiw3ZXgfkSAfl5549rU=;
	h=To:Subject:From:Date:From;
	b=QKfYNmkr/UrzVr5YAKohb3Cn/CRNLZr/MGCNsSAX+h4fvLzb2leU/m/kB1CREV2Q8
	 5kfNJNOiHKynDMSnRnqyfZykWANqTKqWpQrn22gUdjeGrDN1z1WL1hb5Hybww/hdT5
	 tSsIU52/b+eEBMD066ceZJI+kD0z+jg+5RZB2uAvu+QFA1ehuO1NCC8+kJI/BdeLfH
	 XTd7C+fTHXf5xCM7K7D7/c/lkfNXscmjsNZIca1vn7ZtRjUxXUFPu1qf76BoaxwtDR
	 +nex5ZbTMa+/QUbF8sD+yVtwXxZCO6RSJy0yk/5mfNR7lTiHJvypiSU1niiybztfHe
	 YCoa8UieK1Wvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE6E9C3064D
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 08:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171956246277.24572.7810081428064749205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edbb80919c09acd99d8b3e66c3815d8bbb61a56536baa3476b3d451bf8cac35f
Date: Fri, 28 Jun 2024 08:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719562462
