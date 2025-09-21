Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B2A26D4E6
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758490194; cv=none; b=IkAUFQNXpFoC3m1hKcE+OfPHVS13n1h6zSFnGPAcN6fxzu5S4isEFZ7jPPrGLUcYO9MOAb7l/CKhYoqRuZnhVLhMIU+iOok+/a2+wq7z3Fh8ZvhEk0zlAKxGVY9Xqyhj73HKhlbDn6MOUBPTxPFVdT405bBNWQN8qtDlZysBPLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758490194; c=relaxed/simple;
	bh=78eKAHuySunQmjHq5heBZDz4n8SlvwoLW8m0pa3Bbdg=;
	h=To:Subject:From:Message-Id:Date; b=T7ExuLJWtu2I6Uxpbn4a428MDhq0Ygd9l5j/rscALRbjFnDHu7NLxaZPKbGyDzGTK1cIkbvM4xTp9VtSEpWbY3MyDr/bSKaUm/afbbXxgthchRFGvWaaH0ZCR++Vy0BJEItdfZDleNe97fPIE7v4Xru0RAsyC3lIJ+FVOYtCBmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oB45J6aP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oB45J6aP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A911EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758490193;
	bh=78eKAHuySunQmjHq5heBZDz4n8SlvwoLW8m0pa3Bbdg=;
	h=To:Subject:From:Date:From;
	b=oB45J6aPH3QNQWD+M3VMmMD1HtDQ16lnVSG0QEFi6rSduC+MeJP2AdbQESqEYbtGO
	 ee05M51TRBwX0zm3b9fs4VwLbNTaQns3OqaanvdRyGH5FKZ3BBlgqlgNFPR8cdqNGO
	 LobRiymSY+OUJaPnALTn3IFMsDC0CbgHAFAODj0pX630xnUZSrIf3ADAU0AQN1ueiq
	 KDAfZvSIAZkgtWqobAhQeIC6y/Be5kpW/IWxsI0hds+oCXZ1gj0Ma1tlsbKJ1Bt0Tt
	 Rtj7s/3gmWJr5egQ409jAurMwnvjkulgq/5nmtFB08ZkO5xCbk/gK5qsBgeqgAVKkM
	 Nkhx3kGOllnsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95317CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175849019357.3121.17823930277566993135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c445863f9760b0cd314d92500afb2d7437eeb1a644d856b7631687c3cab64e1
Date: Sun, 21 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758490193
