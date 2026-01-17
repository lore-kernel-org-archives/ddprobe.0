Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250383093B2
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768647834; cv=none; b=XNfh/BLeCwhm6Ucs28ZnfwKiVQBXnkfg8s8DeAJxM0Ew58SdStfMmdD0Chw/QpTY+cKsQlerytf80dqPHm7aAd/PxgT7R2H1Py/yqNI9xPZUd73i4hmLjmL1Owx2YU76pk/Iei4eMr7Z6IAkbTLtsT7yMrPvFsDOD3JlO1YUIH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768647834; c=relaxed/simple;
	bh=OjN1Z1ePoKkFS8PzVHT8r/gWFR5jlClp2kkbDEg23TA=;
	h=To:Subject:From:Message-Id:Date; b=YhymTpN+cROmubrTtLxw1/E8czc6PxJ0gBHZpW4g3AOVW/JZvKsrYkRu7L2ehFhP/SkNyAx1sKGCIsId82G4jSHFf6OrudDSukva63fNThfvgQICDPqfznkga6LVzXH9MH9Dw6ZjjLZpPKAV37BLGJLsTLfp9JYDHnVCT8lSH24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brdNFBgi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brdNFBgi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAE2C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768647833;
	bh=OjN1Z1ePoKkFS8PzVHT8r/gWFR5jlClp2kkbDEg23TA=;
	h=To:Subject:From:Date:From;
	b=brdNFBgiNJ6wIJ7RVWJV6tNx+FOOaIaOsAvsdJftPXVes5i8/9HHPPj/Qs30i3BpS
	 4bJBbEVXAmRQBNV8F+kbHYKjEJTvhVmw6MbD456/fd4aqQYKpINiopS/ezGQAl550J
	 6jAgaiaMJ8fcG0G5J2i6wJxJYfnxFyWlZocvs352zEgM2zRmFFuYbd+mTnDXcKDL2i
	 lQ3K4SBeJFOGsgCCHdykCE0VZzY89h4ul9T2mVNuOH6qaC5loCRs1ofyi8OSTM72hO
	 HqaNluwJJJQwSwu8aUOlQN7qCjuNS/M0pil7BvGEs2BYW1GFnv24+D7hFAkW/WMBkU
	 oqRuGdmIPEg3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BD3C98318
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176864783358.10388.15112809990001622870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96ff16b9483e29c0f891c721aad1a3568cc2dba5def71740edcdd920d92be54e
Date: Sat, 17 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768647833
