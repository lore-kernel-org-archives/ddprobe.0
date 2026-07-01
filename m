Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8180B48BD47
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 15:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782919114; cv=none; b=HHd7R1+Koq+rNf8UltDMHtwlFFXnyxLTuTMm5k2eZX0U4nil11eTlgMomajzzszMfD75xmHyf59EkIw1F+cgj2TN9AmxvE8sfIWrAU7R+Owsj8ZDooC+ucp5a3Wigmw/otmGdIWoOfURD16EvzkQDnwvruwOd0wI391tYAFk6iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782919114; c=relaxed/simple;
	bh=5nfM+miIUvMyieLnDzcx1wT6vO264p6OCa/CeGcAzUU=;
	h=To:Subject:From:Message-Id:Date; b=O77yFMuWoL1vr3u3aCEB75J7mkhzztsl+HMEu7fROqDYvGuCRTubwlaLp1vsAuNhoFo2y3gdc4H/lngK4iz9hmDtAcSXmKzhAE1XRtj2s/wmO39To+xaB22M1A66rebkQGdvCDFJdHxFURQuJJl+QPrCOXFg5K6u2rwDOvmQuwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tlv0qPeI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tlv0qPeI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C505FC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782919113;
	bh=5nfM+miIUvMyieLnDzcx1wT6vO264p6OCa/CeGcAzUU=;
	h=To:Subject:From:Date:From;
	b=tlv0qPeINSbwHw/1l9BWNiT2brrarFVJT8aaHKNaMoF3PK0AIsxCl+h8TuD5rafiz
	 b6URxzljbYtKQpfj3EIrOZZ3qLRo9owAne+dTQZ9zdrQ+2/A+67ByE/FTIAKT2wieg
	 myL5It8LS85o6ug03gTLDfRessSIHgE9NZH4axhAIekCx29/8F9qdMQKJBJcEP6yb8
	 wDMeYWp9nvGbNVn+WJq141Me52rBC18QFSMkIK0E/sSLLH2XT6qbrmcKnStnHPJLt7
	 EtpL0iWbdJoMZGi7CCsH/utoRIXSMCK5oZRXnudUHn6ruBXSbjQRhlHfZuLU4ae6no
	 PBezYiqlFsOcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADC1C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178291911369.6893.298372706431280168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6dd70990a4c3bce726b7ef5c8c155786fe9037bc87f039765975819a33d17de
Date: Wed, 01 Jul 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782919113
