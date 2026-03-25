Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A613CF68E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774446894; cv=none; b=VpMI31LRpySFOzeCVqg4X/0n2WuOHBLUfj2Bi6o0QXruIccpw90KRXM3EjgehUCXY6URB5PNTblaGQye9qn+qayf8UyqDPt1EUFAHQNfDDkazvJqsKZl+9Cxj66ZsqZujbJBGvIX18ekanl10cWTlWZ0hLWUa7uOVoRVM4c4siY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774446894; c=relaxed/simple;
	bh=lNKaQRvcBNV258Ji80vean6JBOZsGxABh/2faobTBkY=;
	h=To:Subject:From:Message-Id:Date; b=fXWmULk+SAsNbgoJZTT6gcEeOvaQ6DbPhLKSafKgUZz7Ikng5IlHkQiQVTGmNRkzCz1moBCwy4wUl0Fr/DBd9qR6SvOzcV2pCA82fNm7V7qUE63BPi8UsgQyy70QiQzp/g5EI8s4SIb0YZQ23ITGvXYBDeBzdl2hmdNgwGLBu14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNODkkvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNODkkvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF290C116C6
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774446893;
	bh=lNKaQRvcBNV258Ji80vean6JBOZsGxABh/2faobTBkY=;
	h=To:Subject:From:Date:From;
	b=rNODkkvXCkd4WuyoHyglFMoLl8yX23UGd7PiHcB3NbskGejNPOsnIjS5Bbyu0B/a0
	 cgU9eTYxYAI1EDPWj3C3AcM6QqQP3ZCKk9BDoF4V2Z5m/X5DGxusYZXyVwvtlyihU4
	 wmvuCusXJAl+KYHI/ANTRBPF8si5C6lU22UFOmXt7bRsehHvikNLAT4PJXXZG7rZzF
	 6lyAZleYN0ezqlfWsUnFy7uta2wMNUL83AbH/XGpkCBNylpTwEyeCiCFBFZzxtPYAq
	 DBN2qtp7miLlmtEHOKruyddakLkCuLRWQT+Vd3Rr1QV3gmBrzzEnTWYULPHi1Eu/jG
	 sQuNjFJBHjfAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D583106B538
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177444689363.7274.7846771329016744647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec7fba108678be1ab4c2f7db8e6273485f6a618a384aa3ffefe84e6b2007bbe
Date: Wed, 25 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774446893
