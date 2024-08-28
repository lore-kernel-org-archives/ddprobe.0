Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E97196C9C
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724862954; cv=none; b=lW6GeEBNB2n8Tnq+aAB/rMRB+lDTJ0PSZjFWjJZhbLLRWlMkc/vKQkupf1+Wq7U2Idzfb0F+TEGpo7TaxE0aOn7Ubh7lB/QXldFka9dkZq7cIGg+a51a2/mXuIoMPutuJwGAzpKAjWutxdVoHs9y8H1PGzrOWb94xDF1rTzGHOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724862954; c=relaxed/simple;
	bh=Ldn+RPcNa60TrSRuKV2l0x4F8cEQcFuF/LQauqIh/dg=;
	h=To:Subject:From:Message-Id:Date; b=ia2I7Qx1Cmcze6BojKLTyPjVVtiEukkzmbIL/twDpE+9X1JLYGfXAi+JP8cFoGpLnZwf4acrfBoB/RYR+r+KRcVUu00wkCvCGu4NlAWhPSd1vtRIRC8UVml+AmSDi8ik4ruQaEW7swJJw6+hwC2XnhK46wIg7v6nrS7BmbAAQGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dw4XcF+W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dw4XcF+W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB2DC5383D
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724862953;
	bh=Ldn+RPcNa60TrSRuKV2l0x4F8cEQcFuF/LQauqIh/dg=;
	h=To:Subject:From:Date:From;
	b=dw4XcF+WMppdRGmsdSi9kN6QtOPZAQx5HrIluasxo1uFxQZ1EQSXlEju1uNcIKkpX
	 V3n5Zx1GPKY34DcbrXyqruhqAT3cX0Ac/V090CX68MVSy8EqB6yUiS/pGUPJUZPcNR
	 2cCLiVW4scqb6icJsophP2edIGFDgw0aCC140oTPOIBYgUFywl+R85urKCxXrF95rV
	 WnGEehv5RK+Gj3gL8KSp5PAPX2rNUz0lLGv6i640CDpe9eUA0jPyYpn/zYz5mDb+kx
	 TarHq59i7Z7GNBIYrbFgxzR6IuHEBl0f+jHvBkeThC8W8zce4f+/btTXFm98qFB864
	 jD9hD+olQW1PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9835CC636E1
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172486295361.1021.12053142259639406091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eaf0548cc6b8caa174f42ed0c6e86572d5d10332080b472f49f6b7da6e627a5
Date: Wed, 28 Aug 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724862953
