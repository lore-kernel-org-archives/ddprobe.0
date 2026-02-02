Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E37F1EA7CE
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770000834; cv=none; b=pfAYj4fq3D/GkzF3sDfzWW5VsVZ6Ekz/MZXV8VDAeS+EtXfAVy55qdgW/emUUyYJ3aCTSFt9B8IJkTed6Ud+v5v5SlpPYHEFBrE9m5Bpmltclah+53fevzMnAy6rdTY9RR+Nu2pj5URm1F7Iu/jpgVQZDjUF7IOqRbkGhlQxTeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770000834; c=relaxed/simple;
	bh=5XsfMnCRPd/EGuvTE6eWULoTg05A0LzWvYzrVOiOkW4=;
	h=To:Subject:From:Message-Id:Date; b=VNJwaEERdXiZZXBBd/W1AjeU7oczDMXD/7rK97tASInbPuTgcA2Iq8TIPtX5OaVeWTcxuTDJwMIinsBX/QmEWgBYDClakL/JwwwpIM+GldTppJGbCPUpY2poucbhwOKCctcmv1DrIAPCedTu+m2uccysiSswLhV5OZOiX1dvuiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZIAG5r8U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZIAG5r8U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74C6C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770000833;
	bh=5XsfMnCRPd/EGuvTE6eWULoTg05A0LzWvYzrVOiOkW4=;
	h=To:Subject:From:Date:From;
	b=ZIAG5r8Uc4obGl9QCuxy5mDHL5OjF04mP51KeNeaycFy5LSnp6U1HZcMgevVaYDNr
	 w60nr7oPukPe6iz6RAK259+AMc+ohUaZMDwM8Q47LNZuN8Vm1t2xTOIuIWU+atbyZC
	 rZBFN95fa5ov9QyICXSLG42CxrVWiiFj2mrdvPT43Zm/QboGAJ/u0LauLUDJ3ruEuO
	 5JzAYMfi/wsyt6KLdePpPOV8uOxnqXTqJBinSu6D/fxGbSisMfOBKpijfE3GUFTWu1
	 BQvnOTusT4CHRLwGovUFM7uZ0bxA4sqUJMJSv/9eSMbR/41R6BtPQMpm6pMKOkwQcO
	 UCcyRmcLALWUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F04D172BC
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177000083360.14493.8394756287653520151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99fbd3c24d4dd38461c8df273787046c1b1abba2aedf5b22bcd1db1057aa0229
Date: Mon, 02 Feb 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770000833
