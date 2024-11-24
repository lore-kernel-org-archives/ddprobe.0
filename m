Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B592500BD
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732488954; cv=none; b=srNB/qR03PieisURhK0wcs7Mu/AmKv7vVec/T2xx1Oumdjz7DCve1ziPcc+oOXkJ9RapBfukRfSubnglqWx3Z0Ik/dh/mlbp8lSNaQZT8qprTcqLho6fN/4kDir88jN++cw4MH/3o2guE+5ONCgmnZZDX50QE+jaR/gvdRp9B84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732488954; c=relaxed/simple;
	bh=Vdk0ejEN/7IjwPMJIDxd7dpJRuMqzYY8wEyuAtACLAg=;
	h=To:Subject:From:Message-Id:Date; b=VUmSSO/FBXEPIWsgPxYWom8zI8BHXir5Nh3ASaJMKkiHJ/YVW1wGioF6qvlOZWDEEPgDYjsIHsMzk5J9OdTTA5BBHqdl81S1L2z4d8t5Ax0nhRPqvrW/s6ET5uJwhhS5EY0aIxBFH/4a2zwVv5ZirvzwwrwaGxyL5W3ovZs7Ga8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbovYvns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbovYvns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B418AC4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732488953;
	bh=Vdk0ejEN/7IjwPMJIDxd7dpJRuMqzYY8wEyuAtACLAg=;
	h=To:Subject:From:Date:From;
	b=bbovYvnsICqGwShd0mHH+MD9LomtzcbDvbZOe5fuMvqYX0EgrO9977bTCOdsgNvsc
	 /CnXeXM8jFlu8rAjTJzkOfWMe4M2xUsZ2TQwJSdssOfP9fX81fBMlk/0LN2OyvuHva
	 pnc6+BOOIY6ZZeSm3E8fL8oQnn+R9GN7Qw1UXauHOx19Orkh7M0MhKcY3GjjySS0PK
	 NNUI1pIvfSy6lZhmJ7dW6ltEQUFsOPdFzyP4PL9TWbmbt/3l9p96DVN+afvMnYZq2H
	 eX9bF2XaxrEHmr3dkI+6o0109Zb7wxYZmFRkxEUDgUGXjnmjQ5enxaqjeT71S4/vgG
	 7Ga86/rot0m9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45D0D3B7C2
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173248895366.22957.13283314432614496476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 063ecccbe7120a7c782798a1e9d63a1ef448498b946db85cd860f96f85cd32b0
Date: Sun, 24 Nov 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732488953
