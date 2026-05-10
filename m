Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F383322A2E
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 19:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778442634; cv=none; b=IhVSyaBxG7pJmFxUUKSKIwAtsBkw7aNS4HAdg52ZYBxaAPR0zQeTe042aK6cxZzfj2J3ZyEVp3eV7Y+TRRKHHKBwQAyC+p4TRMWy/HmsX8DmksWq2K92kSOeZoo81nVu1OWxLCvmVh6d6HuEyvn2xa0LWU61OPOnokLGMZFifCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778442634; c=relaxed/simple;
	bh=L9qSzzYtiXhFVGxedS+D2aTHtfXLL6m2YeFGNByK9HE=;
	h=To:Subject:From:Message-Id:Date; b=P7+iIUbd65WlFtR+f30yMfzg8JuNpnNWrwd/FZaeYBNR2yTQyuXJywHq4+g7yz7lypnmg3j7kM60rHzBrsjN+lu1mAEgs+7qAm4nh/f0uK/x7QV+oEqN3ePKmN6WfY2coAqOx2VLWmSxrMhL7dS3vaWCTWKi9HKgaj/qIvG3PyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpxout7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpxout7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25ACC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778442633;
	bh=L9qSzzYtiXhFVGxedS+D2aTHtfXLL6m2YeFGNByK9HE=;
	h=To:Subject:From:Date:From;
	b=rpxout7fwWaMM6ZfrCNsHp9nZ4NoqTLLJr9fyZMzbRaDGpHOg0/tkvnDS2xXY25Yz
	 nk97lxNM+knG8+kyR54MqFyGp+tbwmErwYP2Tiz6Kx//tHFaczEP3+i1ayz/g/xiPW
	 sbvvE6rEnZxgoF+CJ0mmNFBzmd5Z8lTYcC+2lqd+vtVN7hs7mBMVZmEQ6ubiYrMcSh
	 zB0QMyOgDzTN1FKKNrXl+ehaojJoYYWBgcmAL5dmnQbZm3kpAItOJpuVctuWPvFkPf
	 Ox4j/3VcYsmq9Mn0nMzu8MGgC8M69z1Jqno4kJZs+dDbguKpQgbPlRbGhdbTg/Mrbz
	 NGModclZmfUNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF56ACD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177844263370.12663.10346426579071099670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3143efa6dadf85ce798f3639a73bd920824f02e1d8f9f596954fb082607bb1fe
Date: Sun, 10 May 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778442633
