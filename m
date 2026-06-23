Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3078E356771
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 04:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782187594; cv=none; b=VyoGy7s6eLOO+BIsFQn4vMQr9Za6L+ksquZT9cHZnkTgFCZkugmgIz3mtHzzaj25aRJqx66tPjAXmpoDLue0jIH4nfDEjJBfhtGLuMPWpIUZ6YtubYP6L+5iTaSd1C2RTAId1PHq8zxSSeZA8N5xJovWAXjd6bZ/tXhKCe76VFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782187594; c=relaxed/simple;
	bh=pPV/0p8Xa951ACTv6vG9Yyvo4xrb2aoYL62dYRYSgLk=;
	h=To:Subject:From:Message-Id:Date; b=CYO1TJHZULTflITQG/bmBM46ksXV4C5gA611TqVN+nLLu4Dnu6JiYZxZxVVJ+DIzi/Y7ti/UgiEkG5vXB0FGMbTWlWfmEDLS8cV/2QQ/4S4arzE8KS13c86DsFHMUsXCKnGkK6SY019+TQNQbehvT9syk6AY0ZaaFw6HaOu6ryM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FciCiIRu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FciCiIRu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD43EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 04:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782187593;
	bh=pPV/0p8Xa951ACTv6vG9Yyvo4xrb2aoYL62dYRYSgLk=;
	h=To:Subject:From:Date:From;
	b=FciCiIRu6lEiEoM+xLgfYtRA/SYP+FED70VGYZZuooMgq8tbVPyKGlXCLXiz139zW
	 PQsC9/gtHRKcJr1unr0XT87lgmk64JjC6ReZuY4qDF1IuhII09u/EbtMvailc+0SDA
	 nMf/QE32TW5T/ipNWmlSH1NtemJs6Ga2FHUoXeCY2kzcJctapWGOfkWaHqbrzywpTK
	 mjKdM7wW7L3mq/zabYKqczr+DoDMcckyKo0AnXf5G+8/h0uPjnKyigR8T50wIrMJqm
	 gfcVcfM/VDTQRRLGfON31AKYjNkPT5WZ1CcIlcoIQRmWyBaN7SnmPOg2GjqY9C2Yih
	 qgQAIgrbcMd/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF360CD98F0
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 04:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178218759369.22943.3690891158006703328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73772552b2443287096a2289d573fb6853aaacecb93aa4cee77d6af028e375ad
Date: Tue, 23 Jun 2026 04:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782187593
