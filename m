Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C47642073
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711697897; cv=none; b=fN+tDjCerO3QUKBcNJUeMTj1AFYGNSi278LHyPE1YArLZv3TfNzZriECzgYAx2+AEWqoP3WrnIarUIDvIcjpwRYjUHEKo3YODvMFYK88LvijN/GdBDjSQMiS263RxmWs+eVN1MDtpnFKCd+/D/MZcrAUN1+TlCzP4dThHsAWVGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711697897; c=relaxed/simple;
	bh=lQKZr8+9LJzsK7gicOABaI8/o1TQqvReoBNAoyuPj1o=;
	h=To:Subject:From:Message-Id:Date; b=ZvvAe9pvGLFpxyBs1ouJ9uEDJu9N1oSsnHUudHqvAZwNwG8sIhUVlZPS87H3cPfQcT2uTaD/xhzy+LZx7Un0Arx6yGt5npiOcryCrRqMjLvFJJUfgjCQoKE28N43n+Ats3FxMf1KaVCHjF1O9+ecl5PyE6HKgBMfDieOOLJwCgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7EkO1Yw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7EkO1Yw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D674C433F1
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711697896;
	bh=lQKZr8+9LJzsK7gicOABaI8/o1TQqvReoBNAoyuPj1o=;
	h=To:Subject:From:Date:From;
	b=k7EkO1YwzZ6MmtEKTKsC91A6U+wZu+W0Dp1QDa0Q4yNUMwCd6otU0d5J3qhEExyJq
	 3GAPLNZM76iUuQdm+yHx3OY9Xfaq0uqP3bYGTPcsdUcOJRtxLPLUbpKdcAG5O18w/T
	 CwPgiTGKb/I7n2DIzQfCRXjOwk5nO5lZVw+sri+Hl19XFfut6aTYen5625FwHOo1Sq
	 zneRWLMNc+DFMiyVHLRdYznmEHfYKmzJvYa+vvcE512L0C75Ba/I1wuueBSfospvav
	 Ckf63X4WvE+jNfadUrxPIJ+RqjIFkIfUklr9m9k4usVYsmD0XhHfwFkFX7oQ1/WX4q
	 lA1cERiawd3ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74614C6FD1F
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171169789644.11958.9438897455461640407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f685dc41ea73ac8d6088d9f1231af32b0d0660e02aebf514aee4c212d5522cc
Date: Fri, 29 Mar 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711697896
