Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EF4E22F767
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787109034; cv=none; b=o9uiea8Fy8iIn5QfDSU+D6fLJwURBcNsL99BN2zfRMth0OE136Dm+wusVSdbcsuK9Wz66g0MddEKAGmELPRaMn/6tJo/ATdWivKiN+0wEC4XaUn3NGyqR5TTyRKmqgF9e7ybw2htt+0wBxo1D1ZaS/WrMJVH4ma+gpkCyNtcDf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787109034; c=relaxed/simple;
	bh=PnJFLDodZZonMeofhxd47qXRk/zs+TAy2PLBbnWztuE=;
	h=To:Subject:From:Message-Id:Date; b=VweLUKekdnrC2LxJVZ21HSD1De+srlQa68HN7vzC6Gn7TAUcDoj6JNHM7+fCyysphKuSp/Ip+RUDSDzSujz/QLkcpcHyO/V3e7xl9HKF5OUXf/JNPwWRdOsPZ53gz2EOB56cf/1Ut+/w61oIzH0VavfVSwBI7hbZ8rTuIhs6YNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMZjXJPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMZjXJPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFDD7C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787109033;
	bh=PnJFLDodZZonMeofhxd47qXRk/zs+TAy2PLBbnWztuE=;
	h=To:Subject:From:Date:From;
	b=ZMZjXJPeekw+kqdku55Y3v0oN9hPXdEK0DtIZXg4/0zOriH+uaetROjUPhX+jlJgl
	 9zYfAVi7WpXHh8X7ACodEYBvSCMiz7422qbagv4QRxG/+8TwRsNln0QwpblMOamm8q
	 01F6+yvF4XBzMtUWaN1pCUXSwIfT8YKr+qqHe7zFptPEXMy9R4DK59GBCCCmThS6pw
	 InCBW9Pf1WTPIxqOZSX4K3jjTvlpu57S8YJugldruqo/zXVnotpLYcEYi2ahbXD8Z/
	 r96rlqBhu9hcVgjthiAsM/K0b03sWNCegec7oJdqKttIPM6/iquBX4F1lcFOvAPUQU
	 6hVk1FWVN+hzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B51D3C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178710903371.21972.10036738341276383071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d92a3092acd5119c1cf5a2901361399e08c76b521cdddd2cb812fd45e795a06
Date: Wed, 19 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787109033
