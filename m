Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554684A0A
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732349154; cv=none; b=anYFsf4R9/qEG8Go9vZgEL8IsRldM1P0b1ce3Ako+YDOOQ+/D+wkob3okZD8eFNUYC7tQI1ZtfLQ6M6fVSuVowLIZ6dVTcbVusY5a+PFfVavLPmV9798nZzPyGCJ91+tLYU/XU6gfEPhW5PEj5T5uL9PNbK8HGPnPtbuFhBamok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732349154; c=relaxed/simple;
	bh=Q5dgI5t0i5dDkqWdnx4JL2xs3f/3gXJbasoFv7lF38o=;
	h=To:Subject:From:Message-Id:Date; b=NMebvlg9fFRykluL7wfA5/pOtc4cO04HAdPRHEbIj9K3DLIhYFR2sJ7KabaYzMVtWr8FqqI3qJMI8NXVRRMFI2fbQkDS4Cg+kD4vkRBj3Bi0mOtqrExvEkdgtm0dtbuQ0p6p6nDT3gANZ4TA4qX0qYatQFryZLYEvTvnw6YiAnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNOzfvR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNOzfvR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4304C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732349153;
	bh=Q5dgI5t0i5dDkqWdnx4JL2xs3f/3gXJbasoFv7lF38o=;
	h=To:Subject:From:Date:From;
	b=CNOzfvR6eRCQuLo+nsCdAzBGYXzF1s+F7w0yCLT2lXBRSOFKvk4oy2CvSMdxx8D7J
	 7O1qisDS4KuUcZFNTY/iERPaIVJb9X5uVr8h+VR1PF2uXIa0rUzZ5VGpxM0varLCly
	 S8UMBXaS54w+H7bfxHAa/aIsBjWVIxDAI/oNYXBfFj0ujRwt2rOuKdYDmYFKuktNe7
	 0h8oDz28eMYTwFmpGsS/EwfZS2Y0F3hasDW4VqWOhACXM5mHEz2Wjb95DjRIPwDdrY
	 HF3MSWfTPcbe0k7qf4KqBf1+rc00oDKJUC6SF3xS8Bd3RBR38zCQOT+dClIthdEdVF
	 Jrvd4oWCx4luA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEF1E6ADE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173234915366.26386.9613503519887703048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9da511515b6b1a4b6f53abd24a0e0f0e7796e406a6a30f036c45826d2bf60152
Date: Sat, 23 Nov 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732349153
