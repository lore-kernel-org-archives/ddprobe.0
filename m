Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28460279DDC
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751613594; cv=none; b=M8InSQ9a6MVnFG3X2gaCQZvCEN1a/HyrDs8ePak/86Zt1XRuXYezTnT/wX1YosOmfQN8SgYt+lN2UPH8kH9W9cG1BgCzU8ziThUgjdvft/kZPPl8VDy891VmoCFkCh4aFKdmgXQ3ERg1ICKrVP2767lRzvt+XMbiFIykELTIBE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751613594; c=relaxed/simple;
	bh=/sGMyulmJu9Q8enBM95NiDAHCAkw5osqu7BumdhIVmc=;
	h=To:Subject:From:Message-Id:Date; b=TZsvIyhjXxst7mXT82iRJrUnicEvMiDNIpDUkeOIoqRNMBy6lPeB0TcFLGMovCVCmHlezEmxjdvNh0eLWYTcae33ej+SYX41PekKKuIO77BMDroi0SCxZElCV4C4LwwhgbKTQMTgeA5OGhpf9t9CytM0FguViV4C8yJPw15T3rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cx2cvhua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cx2cvhua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8808C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751613593;
	bh=/sGMyulmJu9Q8enBM95NiDAHCAkw5osqu7BumdhIVmc=;
	h=To:Subject:From:Date:From;
	b=cx2cvhuaTF3bbPjaybsRYVzs3M9qXX+n72Ex+mqYk2OE9nuwOG2pAtYqhGQFoym3Y
	 jzeCqBxZsb5bNbnlMx2ayULLonJZxvexiSv+o2VEqgwF7v2yriclkTL8VyFiRsHI9u
	 3YB5G1ijhf9IynjE2sNhgSjkrT3Iz4GS/hFHUjfhqmDuAZLVwctXdo784tNCMULsXg
	 2oNbSiYp9iUxb2RzHocHd9+HsLyj3V6u3mWvEsvFqkfN8QPeBSQNpOcd1PMz//PJA+
	 cmNtpGrLYj9mmijJwohviFbu881bqyQzYSM5RWZxkPyh1zINWiZwWqxr4wfgMN3cYB
	 SNsN1RG7Xl0HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E581C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175161359357.18755.1367836654799653253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b00d1d856f536ba70ac3ef69ce47dd6dd1a20908eb64ce7fe4a21098a83e007
Date: Fri, 04 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751613593
