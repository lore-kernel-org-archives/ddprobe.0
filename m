Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABD5631
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723596954; cv=none; b=U/guwv6QJpMchczPIf3cbCh3+HgcmmzIC9J05dj3MfNjEFtl8ZuX+ciw9vOQZZM3SPuC0e6SpG31OiRTgsm6713UEmlmGIiVltF61/yO3Jijz31Jy8NOqHy/EKNC1OZfG3eVvMei6OtcLYo/PzpoE7Bgoyb5jFhICfNqUk+MYZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723596954; c=relaxed/simple;
	bh=RdTpj1L/FQHFHb+U/vrrTtFl7gfi+YUGy3KRNvA2FkA=;
	h=To:Subject:From:Message-Id:Date; b=XuZDfXHOuOlQO4wYqqHv2jLwUTDQFVZ5g5vJtB10fIAEqnrNp/P8ocb/vG743aJvusYM/duoNUyCGnB9YX+FWAPjue4I7zpVzVW4ZGzXeI4ueiYwcm2Oa7WcgkHgsMcmouEgkv9mXxQnAA5YZ/A78iOUQxC/tam/4aSj25xwEMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PU+hFqJJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PU+hFqJJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F23BC4AF09
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723596953;
	bh=RdTpj1L/FQHFHb+U/vrrTtFl7gfi+YUGy3KRNvA2FkA=;
	h=To:Subject:From:Date:From;
	b=PU+hFqJJu49wvY5HXR1S2LVUIYS/Ej5Do6cVlwMIZ/RFQO3oIfyRyJfh/1fuAbPv6
	 +jI8BmK69nIH+NhvMmPKuRnOq2WKIlrHsm4cjty9WWN8Wrjz9luJNo6rfBiub8ZIzI
	 qJ+CdJ4eo3HErihZ4t8M9Q4C5tF+BMFriFNw9PK4pZzu2BAHHNpbMyP1TWy86fNRcq
	 xc/4dZHapPr1n8nf4rEnJu5sBTSHc3L3yPqo20NqVkxUIblavl8RsMndM3BTi2/j0q
	 9fIag/6HQYtAa/YwUQPaHAqoWF6GlRL1nPuLW3Aqbr326hzI827XfgbzZOxOf5Kink
	 IIQnCEqMX9hUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912F2C52D7C
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172359695358.3831.17964593598003386456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b06fe822c40ed2001e8545e5dec4600e960e0c732b3526c6c132e5c04194e11e
Date: Wed, 14 Aug 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723596953
