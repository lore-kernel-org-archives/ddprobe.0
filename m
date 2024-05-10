Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6824218EA1
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 18:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715365343; cv=none; b=pWMpaa4NvFUFEKqlsCmnxCKGkQPtrVMVwGvkRuQb0QgOenyf7Eg7+/cYP5o+jc3C4a26FupXGHANdtkYhBl5Xe74yBr3f6vZmpwpln0Jq+oMgZABX10Ao18ePU/JkH/dHx3wjYdx3XNT9LfSquqyVD0/I3A6Dm6SRMsEqX+qqYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715365343; c=relaxed/simple;
	bh=h2KSvZD4tPBQiaQW8pC56LXJohrSPNQuQR8bsYnwtuU=;
	h=To:Subject:From:Message-Id:Date; b=RA/PVtU9nL524BNFMrJ7WbgA5AnrNL4knkHpdXPGPf4IEzcNClJHltDhGB44ay3Xf6tzYH3uNCpgjZ1jbJMFrhZI//VDHFzBoynnjW9cCp/pj4vzGv2sLvAmzQY36/kWFeYvOZe41mF5y3OD+ephDWrIp7xKSBBTTWurviohB4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UL3ozvn/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UL3ozvn/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC792C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 18:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715365343;
	bh=h2KSvZD4tPBQiaQW8pC56LXJohrSPNQuQR8bsYnwtuU=;
	h=To:Subject:From:Date:From;
	b=UL3ozvn/tiqqKKDCSGCbx4aG9sU1nSUctw390PE23WbjocDaSkUV+uKRkxWP2IxIC
	 uvIuoWsovfA1FfOrdoXJqBitnRh7w/ZE0+UfVHEXmTffzwhAl0wWMGB3wZI/N34/co
	 Lpa89puknFUWu4fDLVge3+/M/+n/DhOOvcoYJc2oWz63A0X3lf35r40/ACwIVvWHc4
	 OconuyJX/fANSVk3q+XwwCvDfZ+RadF8ddEv6I6PISs3F88Qo6QGkZq77WS+PqrrnU
	 eAq5c9LV69+lwJ7RMs2iVhYNyAEjRYod7y1fs0vMAPpKOOXsU8ppp9rPyH6rPHYOWn
	 QQVQqAw+sNGnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4186C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 18:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171536534275.26197.12726407372635195164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a7ef33bf25afa433fe269c245328107e5956c6bd2782673f41430b816a8b30
Date: Fri, 10 May 2024 18:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715365342
