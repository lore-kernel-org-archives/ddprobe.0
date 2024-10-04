Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C3A231C9F
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728081354; cv=none; b=M46q6vyKLaGier0VtcSO03i1MRs3CEdXE1Ci8fCLeu5tW6ZjwbpKjpe1NWHK8f+3QDiOyUpaJ+CcNIt5pL43o1X4CLZmKpxDwRnrGBvL3YWAYSBkdyVgA8VVO1RwSWx8BsPauzwha83HWolSJrTGrOZ3WvKZh1MkvYbOOS7bXI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728081354; c=relaxed/simple;
	bh=2X7knuWvWwFnD0AMLNIrZq2XmTJ6cimaRxIQy6Q2xHw=;
	h=To:Subject:From:Message-Id:Date; b=RPZNHXkUoVDaNoq4mJpo+nr59br2rJu6Fp25jbErdR+bfQWEqyMVFXMqjSscDElixVM+jWeFcCE6zAdPhm9aMl9XpYwlZsotAX6M+i7gdrusQ+y1RpBVhgxZDtR7T4gFthKNahmJrg/oSUbsR1mQ/m5oLLdD9vWGqAb09VxUvAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iiQgXQM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iiQgXQM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD9CC4CECC
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728081353;
	bh=2X7knuWvWwFnD0AMLNIrZq2XmTJ6cimaRxIQy6Q2xHw=;
	h=To:Subject:From:Date:From;
	b=iiQgXQM+pYwbIMQyGrxmezHWy0vatd0Sfpav8IlOG+9DxmhTQbpMoUfCDC+R9kek5
	 /DIWDtcThMAHQZKD3Zm+wbX/BsbqEfaY1XCtUFmjb1yWe4gibYmTMrZTcQ9Ol+jZGb
	 25V1TaKL2Yte+36vosLb3d7C4X7B8PqpaBLuXBToNWsyWibdR3ki8v6JjbJ1rjO8CS
	 wx4lWJocvAbIbVf4SOEEkkgCAsbHySMkw8Y2rbOSWPFknnbb5Mt516FNCYEOQB5dfd
	 BYkWCo3QVPkfqaJawHn0/pPMMzs8Z91Vq1k9BmKWWtoZk3QcSbmwdqC7sxztZwfEtT
	 Z7MQBu0DVgNCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9674FCF884F
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172808135358.25306.13607411195732340475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8551d8508c41ab1155985c464dd443408c0c615a0c69ac2873c96c955d25c2d5
Date: Fri, 04 Oct 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728081353
