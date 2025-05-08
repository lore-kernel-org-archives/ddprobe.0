Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D52205E3E
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746688794; cv=none; b=uXFAh7e5a06U296nYxk/9LwOX91BAk+c74DIaJ4MjxbblmqnkqV9zSZp9kC9blqJ2xfMtiSWgrU3O4hN/khzg4u3sqt+gW2Co5u8UVXRwLHTwEwJQ1Lzt9cld7C4+v/K+sBuw0kZTSE9ciXurPtpUlDZ9vgAbPcJWA6XGE491qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746688794; c=relaxed/simple;
	bh=DoyAQR8agXwZwk8v+DU5zUGKf0b/T75cAe++R5JjR/s=;
	h=To:Subject:From:Message-Id:Date; b=ErSANAvbwF0UrY/UNq2uUIFMmSgahwtQVOF3x+4yKUcL3HrkBp1ZHEg1hwrvdi8+ea31hb3tjtBtkpDYV0+aMHm7iWC5jzdGllNUtDIkjpeGAIeM3BEQN3EnOzwPzKw6y1eSB47YwVC7lJJR419F0JdfBz4RvoySroRdxXPsbuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Je7C3O+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Je7C3O+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A353FC4CEED
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746688793;
	bh=DoyAQR8agXwZwk8v+DU5zUGKf0b/T75cAe++R5JjR/s=;
	h=To:Subject:From:Date:From;
	b=Je7C3O+oBvH81s6qRs2m/ssM6CDqOBQ1buEgLLj+J2BJE9ij+ah5o9NGv8mdD1QdR
	 8i2gvz0J7tmRiz+9T5qdqlPJmg0cvkKfEEYL3oxAr+iO4MLA9HayWRl79/OJOErF6W
	 rh18XPFZwQLgm7WYlHbaw3matnXLPhqCZmSQCNEIselKwdqvVzbTse0Q1//oSK6OPP
	 wIvfl5tpoNanVVgwcx6Px3ECsKtEIpfWW8sxrlQzNDGDB7bPPLUkRRsBooBHhUFCUd
	 OrKzHwJILu+EzpmoTgRLy/NZ617I+JA6F6Cm6JhmBjj7IRUIhy2xWIKnM2ZrhcrK5u
	 CY2W8hPywR1Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F41AC3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174668879357.30260.11324059608400494201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c106102720cde62ecd0c83c430b8fe4434179fc6d8797cadb510a35175750900
Date: Thu, 08 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746688793
