Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F33262FC7
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760085594; cv=none; b=IrC4uq0yHCeGIha1iZ1P95acJ1m9A0d+LJQu54tmDbYCxqAlr74HDk2ov+69O5NBcbF2Yz7MSYPZk9vC7jbpnHGyP3s9ahkk+jA1AT6EO4X91rIzhpJb5K0KUEP55FlGz1D6smbDJy7S932njY9VnvEIFgB/2i13EwyVKtHIVY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760085594; c=relaxed/simple;
	bh=PwGnkbXf3g15oL+slgfzzytN+UQdTP5BQSRFyUza9j4=;
	h=To:Subject:From:Message-Id:Date; b=N77J/1VE1wStB0YapZ8FA4XGZbyiohX9mgW7nvQTSGrcRvL+CaAOAVK2cDeh5FP6Q9d6xpUmaAd5zni1Z2SwvmPaOK06H/3d0bZLR7e/wxQ31sCUSVuDaXMuJJsNmxaxKJjdE1NfQltX04PNU8n7EUtH4NFu+0YiQA4W4GBly88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UoWI1D4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UoWI1D4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A359AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760085593;
	bh=PwGnkbXf3g15oL+slgfzzytN+UQdTP5BQSRFyUza9j4=;
	h=To:Subject:From:Date:From;
	b=UoWI1D4YqIy2T0x5CtbwqK1DG7+bRa74xnUqVLhPBa3OMlgNvapiyadZDA6ssh33I
	 RlFc1EF11Lh4oOFO9T99kXcjLPJncnEEBOG4nqsb1a259kLrEOQsdjxWx0P4SHqi2d
	 Xc0HX5CEu+U3/3VvYnMolNKwpWfcCAGnc/S3izm0ZHEDa+K4tQ8q59EsGB4VbScWDo
	 vS3bFzYGqhup3kx3O7KruujczHpK08oPjfoD94VsxT1yqjQBYjVuZUm5iMdIPQr2mc
	 wiTLhwDW5bMMtd3QWOd3GE44PXxl9jgotX+eBeOCGJo4YglzvL5AzhrDvuXneJV0Yt
	 pVyanbwvZqEBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A8BCCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176008559358.22129.4412121860806894851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac0594f75f8e1fa14b8b2bb100d8fca0196d72505024c405c2bf8757ff8534a
Date: Fri, 10 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760085593
