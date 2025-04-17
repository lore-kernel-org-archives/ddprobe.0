Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383F720DD4D
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744928994; cv=none; b=TOmJr7AxStDN+ilka+MiYfBR2NolYlRo103sgZGm9kZy/Tb8NFgtSgLG6clbGx2MEclnWdvQdy3ITfDyXW04TiTL5kT8w30gMNJqwgvq2E+pgN0L68Dlsj7v1QZIBS1F8nftrvZ35g4yYHqQKV2/2s/dxPbmqSGKxCI6InJeROg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744928994; c=relaxed/simple;
	bh=oQaJziI1jIawWrhwRC+aHsfzNlqssXBXG0YUWMpG1u8=;
	h=To:Subject:From:Message-Id:Date; b=tqnt/wSioQT/iaUzesW8robP/R/rTuRk+FOl3sv0WRCOOk6mS7LSsGKS0QMBrxRMMJKawKRKCKQ1NgOzxoGhE47m5WXMI62X31B03qu6ex2QmEfP+UFb+XZiBlBczoF20Uygl+9z/bR73rkvDzcqUqM2KvyG8iO4xSjiRc6h2Vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJKSefro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJKSefro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F50FC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744928993;
	bh=oQaJziI1jIawWrhwRC+aHsfzNlqssXBXG0YUWMpG1u8=;
	h=To:Subject:From:Date:From;
	b=fJKSefroTfgZpYOtOI6zYEFiGbr19KrRsdu647dYyuE1E1F5U8UMhb2nXcIb4WFzo
	 kjcK0b3kwz/7OFBGQDXrt2KiJoOUbcZ41+vUJEOTPWFX73igcw0Ey2AP4Dgk+0LWMs
	 CFBL5cHcf3in9T7GdMjJ1/bojuigyzt4QqKw/4jWyXUHMHdb0Dl5VkOBt/52BfJ0m+
	 NCnHCJ22BIO8FfpGkds7v0WiV6lLbDXM9NEyD2HMwGb6uTFD4KFDA/uO9ttBmKhUal
	 pm7YXf4ZqVqSQm8zYMRAAPBre0bzhLxaiEgiyS45mGvMcgTxF7WUQ0lUUnPVpK7XFi
	 4X7P158FWgJJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5F8C369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174492899357.31589.11268134841298552082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba7f266d1da829bbfc8dd2ca2f06604b840b83a1115f6799649d71bfc6a6014
Date: Thu, 17 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744928993
