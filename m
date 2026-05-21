Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C752727F3
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 20:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779396154; cv=none; b=DUNAS5wkROJVp3ZMWOEFojVlvYYSb+AUGjAGOtsh6M2FKHPnhu7OdH6FBWwNnGP1Np399AUzI4xidc7D/3f7PrAeM2AdQ69vybCXAeTOsBAc28+zJ1gOeTP3ib7Pgw9x9h7ZFegFwtB41bWhjj4aS+y8jncYWd9v+DhFbTR8+3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779396154; c=relaxed/simple;
	bh=U0A0LN1aNF4WOLZt3bDAvGDjbr1XSCv6QcHx1YmfMqI=;
	h=To:Subject:From:Message-Id:Date; b=sY+0yh9Tb64gXGd/FH8xbFv6xqdLQ9NNRTCUwp1NJlSg36WBMlKRQvJ+aaJ6b96sY8bOS4aac83k7TO8f4w2gmSZnO0F29NcHkjubBVK0GavGGnnxoxeF9Zc7DZVX1wFU3A7Tpb6JRLjZnLNX/aek90fU58oMurRdt1oAglPtJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHxCDg7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHxCDg7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30E5C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 20:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779396153;
	bh=U0A0LN1aNF4WOLZt3bDAvGDjbr1XSCv6QcHx1YmfMqI=;
	h=To:Subject:From:Date:From;
	b=gHxCDg7KZx6gr46CS+wIjTbmTH14j4tsc4XD8AkN2DKVl9Qk99HOuEVS4Toepsp+W
	 8qzxCP8EKxr5Wuz6w42nVqCjs0ke6l+Q7/360PodpZhTiGhSPBO03J0MFgSmzL/unL
	 wZYvg72GAMczIIGx/pMLR1hNmDAId1JMnqANdEfAznQ0c6QszbhzGLBksXm15NSJMY
	 QED1G8NFafME+J/auiffXfODtY8Q8MM2g/2wA8j3iKthGWLT4gWwjEOzZArMdB32nu
	 RYby/6JBM3IIFweuisenp1TcS+cKMLPTn8Q0vnbMDkvrj6zcZyw1h/VZAhijRzRMck
	 ZiE2/ImcB+gkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DC3CD5BAB
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 20:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177939615368.32514.11180836749548324359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f73b12a07b10759873894a37964ac9cd8af7cb8cfb3fe073dd0d92663e3e1ec9
Date: Thu, 21 May 2026 20:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779396153
