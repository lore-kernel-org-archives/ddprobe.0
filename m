Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E8144C86
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 19:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719171743; cv=none; b=PUbABY6y7wpoTS57oLxF+p8Rb1b7oOCnXx2qSw2RBVHboNVsaOGrZWyvrPbWjtmnTDMxylUnUEi0G9HMQnIMibzs11hZTJTS5kIFLH0NN6+qRX+Y97s4zg38itiLgfeRg50C944cooM1KpZQR67zt3I8Tb2a4eB/BMn0bBflNsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719171743; c=relaxed/simple;
	bh=tz0g+bmWojJ2wH1KJhoev+gq+micmD31mcSVBTlDYEg=;
	h=To:Subject:From:Message-Id:Date; b=UDD/Uahym7jIj/y7EZPBsY3e8TRgCvpIN+3DqyI8rTXu+foKDKvivNcKdQL9w0SHzCGKVLmPifgP10PXQt55gSZFFeCFFHznJ77kSkSL1NBE8qCSIc/jzUpTd9gbJyYsT1dZoXWOaMmguaW3aaXb+4/orClXSPnnw595GPBIs5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qut8NsFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qut8NsFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A5BC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 19:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719171742;
	bh=tz0g+bmWojJ2wH1KJhoev+gq+micmD31mcSVBTlDYEg=;
	h=To:Subject:From:Date:From;
	b=qut8NsFBgiGKkoa80D6Morfvwe+M7gV6JuhjFp+8/xpCUaRzc6PB/saLBHYAPX+Rm
	 qNMKLcIlqL+NNXocrE+cKnca3BzzY11OrsVUqCXEhKOFsF78D92gtsU3fYy1GTpy+O
	 TqB3ZZieL63/Yw2JAOpBhN5mNHNBLVuHZoHn+mW06P10+VBglbrLIe4sc30NmPmq5k
	 A76SACboq+qCYpXVmjLURRuPYzEaCv2sWqvtd4O+Vunh/25KXz67zUbVG4cJq3oDMy
	 WVAqpNFEgXqUqnuWyyI2eSg/eE/vVmmjKwORoml0R/BsbT6E7HGTtkWnUmYoMsY/ZL
	 UgjZvF8xKnHEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64E4C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 19:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171917174277.6691.5513251351774314999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ac0a4057b7aa6c0772f5c14f20c00d54290be6f2df24815eed3ca1444fade1e
Date: Sun, 23 Jun 2024 19:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719171742
