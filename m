Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7A71A76BB
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773674094; cv=none; b=kmMtCUbmqcze36T1kapYUe5qcxb06/Ip++ZgfK8onk6hQlRkxk7B9nGKL30gMOS1tby2XqeaLTAjXthG9luupALs990UXi/t+5OhHhOBz3yJTQ/DXHSxqVjU8Itpio8QhYS6LG2EjXp+o+2vaBU4/hkS+pIaLcyQSak9xvHsWgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773674094; c=relaxed/simple;
	bh=u8EJrX0DlimUnbs3HdTDKX6x10fB5IAuakXBLH7zTq4=;
	h=To:Subject:From:Message-Id:Date; b=VFrjvNEmHDNMsgTWxj9POfVocICaGTcDr3lWEbNWcCQT1FK+MPteRYDlskjPie8DGqAYsbF7S3UhcFkxuZeuSNquuGMm5zzddOZdZV7lSO9Zbx2PS9HuZXWOsi2vNwFwQE6gJF0owJ39Y0PmC+X1bYBWlZWJ7hGTfSKwNiwMV/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCnlMDMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCnlMDMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8737C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773674093;
	bh=u8EJrX0DlimUnbs3HdTDKX6x10fB5IAuakXBLH7zTq4=;
	h=To:Subject:From:Date:From;
	b=YCnlMDMUkknbQRj98rD/WxnFhaAzzY+jiHx91ytsE4a24mW9SHWZYcsomz50SB9nT
	 m3UgcYwEIsjrVIXanyphUcaL6OZdPOvzl0a/5g2EtuYIXej9LslSH8bjE/YQ1Wtxgf
	 Kx/06dWTb4GpEYjv2KMdvgyTsO93XdnL0bTL92LaZHMFiHYkJOCWrtzvPCY4TBGh1C
	 QC+3HZFR0ToQIiViV8Qz7nbWZ1DmpzV/ItYqe9q20tC+1BbxQx/jE/15FATuJ3K7qy
	 E0IQcUBvvDKBdIYFfaWne/I51YDsVZDsuk2ASAdUpQ+GVRE7lMwREb5VA1UJIOvGO/
	 6HQXJrcpzA41w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A27F53D65
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177367409361.17076.7632218697405408366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54aa45060a60d3a5b110cdf5b06fb9353fbfa67b17be4dd068e06a0f5c0acdc5
Date: Mon, 16 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773674093
