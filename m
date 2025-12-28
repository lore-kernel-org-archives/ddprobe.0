Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E771DF26B
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766904234; cv=none; b=ldmmtj603deoQJ7eWgJasZsX0VQaxcf6zhyeIRaiDTjV8M5/ZlGZVmsLdS0dXPGBqqzM3zEOFD6/mpWLQjJR2Vmp/3ui+Su1NhU/9qH71iE7w92Q2s0CnQTMm69mQkBz1/2SKg7YYDSiXeIUgD0PSMMHkY69+jOnnBC1YstIpVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766904234; c=relaxed/simple;
	bh=2NIkBHTYZrZmDt7woPpVrrma5Cn9S5ureEEw3QLyvAc=;
	h=To:Subject:From:Message-Id:Date; b=WiiLA87D+mCVmdV+afAfzAbPA5KYtJzf0tC/EXtMyJ1sDYVcqz/9+amRtRO1SrP0d7sxhhqfNCJ9nJ8U/ya3hreVauLWSWvzzD1CnAxftsvXdrarwO7VwwHz+0oGuaTyIyK8foFrt9iMDG4zQv4j3OoVkeGk53Mulbh8Y6sOgDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuOAVtKW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuOAVtKW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81BCC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766904233;
	bh=2NIkBHTYZrZmDt7woPpVrrma5Cn9S5ureEEw3QLyvAc=;
	h=To:Subject:From:Date:From;
	b=TuOAVtKWTGU0LSqzdGJ7dJ+326QcF+54Tx9GtmHkvs/rXpv9nz2kW1kZfrF6v1twv
	 8aDKgCgASaztnS+5S2Y+jY/DxeEIWsdTG++N5+YwYH0VyxFFG6V0Hy7arNFnwSH3j2
	 zVdo0mxZ8A4L9VgB6+TPpl1Wk7jBRVyIFDGg3Vim4EcQcbmufodLCTbpSrHslKRUPi
	 mxTbWqzVN47HCNg6WzUVtGTBKCy0MULbuVtULzfQJ8kH0x/I3oT+LE37Z8x8bO6X3S
	 1Y88xpjXjpUfsEJqfUKmvbDK7/ot2nCz874xSGWTlZIf75W09mvl5CMHAXw/A0LtT3
	 SRjaJKAYo+LyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A13DE784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176690423359.7788.9588826422162699578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a298854363a797485cf83e7e8c749aee464f37371dc9d5af6eeadb8372d44f84
Date: Sun, 28 Dec 2025 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766904233
