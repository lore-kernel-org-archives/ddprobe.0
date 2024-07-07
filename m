Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6040A12E55
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 22:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720391183; cv=none; b=I5vWTkjHptC95y3RUkWRxTij4SEOleJ2wdOXbVf4C3uEn4UruTmMgINYdOHe3fQV7DPqw9d6VPlNc3N8AQ8+lUpMlMlJLONMWLOAS0caM71HhpSC6xScW8Mb61rUpwRGY+xWszFdkb+05MXm9jlaPLKA5lFB9PT9ZdwSLMrwgPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720391183; c=relaxed/simple;
	bh=gkfiWIrUvDeXbCWgoNUS0yECws7Uze7QokpKB7JB9MY=;
	h=To:Subject:From:Message-Id:Date; b=Q7ik2qn1+4HZ5qq78LFdk3c1dtVMO36+rD64LyNvf9CQXBwFvmxQwpoSmZ+hoF1l6As4RhsPrq3+0ee4DAD6WwQCqTvder4oqt44gJoFhVFg4QZd4LdcU0F0oUA6CCb5DeZhyT1pYcBz7AnpGlYEOneCvEHdnlDJPkDlTZdVxH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkEyuQjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkEyuQjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62A2C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 22:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720391182;
	bh=gkfiWIrUvDeXbCWgoNUS0yECws7Uze7QokpKB7JB9MY=;
	h=To:Subject:From:Date:From;
	b=LkEyuQjVKUxLwHs7UiUXdANqp6u8tFrGH354RnwgwPZZ+h6RtEARJdCD1ZMD9j6Ud
	 5phe29T+/nhyLoKKysaceSwMUbXopMhrCLbjfYD92Eqj3mBOpIKSKYy3+j27fdiFkQ
	 kuX6BqoBS811t74NFUOqum/Pe+DV+GjqeOf2Npo3c6yxdTZ54QHAdCap4/6jQI35Ru
	 EWW7skpiK/TVcjG+G0ATT11nA5pdyH5lHncPBJ1tGFzr+esIExl7OXBy+jtQ67rpur
	 k9HMPJhKrUPn/EEMFVXeLLRQlCC3KLLdLAaBLbNS1dupv5SvgwpLGjVg34xXa9yeoq
	 2Bhu/754zyN3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7609C38150
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 22:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172039118276.31915.2805611809473615320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b300631463225873f84aa5dde3bb7a42917094768e9f71755027616aa56eeb44
Date: Sun, 07 Jul 2024 22:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720391182
