Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C4D8C01
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707793097; cv=none; b=eiisv2Da1zO/sew8VOIu4PWHzKz2R+j1dKCx4d4Q8xLcSd9JV7eR32UgWIS7ce+We/xvBHJItkKiwdyDtI8ZEPboMAurJAnCsf7vbR4qocMLDmG6mmp98EiI62i7UUkhYDqbKr3gTksslQG+PVZ3YcMiJ4wxkHWfa2CsuobjFR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707793097; c=relaxed/simple;
	bh=Ax7lKxKpZfDxudYEAZDSz5MDIQkOsWdMXFl0tvv52Jo=;
	h=To:Subject:From:Message-Id:Date; b=C5C87/ACNL7QXmZkYSMeIs0AJTDQS1Q/dedeJbOPm9Mg4W7aSyYNH4DoQxLDlC8S+7XEzWnyFxG91/p+YliKYVa0ZQg37zw7B+S43v7yiGaZezU9sSF5sah8ku+iLhXGqWHsrQoFbCgrdKhAJwb7vaJEck4YQ0QnfJL3fhW2h9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6O0yind; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6O0yind"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86BC2C433F1
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707793096;
	bh=Ax7lKxKpZfDxudYEAZDSz5MDIQkOsWdMXFl0tvv52Jo=;
	h=To:Subject:From:Date:From;
	b=m6O0yindfnrZwV2jFEYcuVC+a1dIBnvg1qfdwBE5As9gEwg58no0DdO/HTkeLA9kq
	 ih7OCrZnSTL9psT9rKLiCr9VwiigB9dMt9wO8fMgLU7fExY9/j0r9ez1zIYBSjOBlw
	 X0bJ9LdpPPwZPDdae4krMEAkyW8DbxfsK8rb7nTpopyfjheBn6TlVER8C8ZLgIfg0Q
	 FSqbmU1U0Cfayp0Hw7iNwLRqGGzjfFpF7XfJ0Ocmq60Mo0cvxfDJy0BBy7lZ6Z/QmJ
	 8gnjgobeS6uYPNO7Vyl+Mmrd2VB9Yuz6ybUxJTQjovRyfXJHht0Smox4lG0Ptlm7ZA
	 7Hn5nZH2UWR3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 673DEC4829D
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170779309641.8103.13321788119217827313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d039dd74c144af7490ff596935abef4165dfede7df9f5bc5f7b03537949bc9
Date: Tue, 13 Feb 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707793096
