Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1589D4A33ED
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 17:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779210634; cv=none; b=lKnKSABeQEruHOaXtoX56HkGqlyMJAWoWkbxdZnb4yDsPJvq0eqt8TSUuW0Fkjivxz7LuMSv9uyfwbGZwLlgxUOJGpnFyaZsYv5sMJ3cHY5uwdUhw36pE3H8/XUXasi6yZBnIAAIkRasrtmsSVHCKGnIGstRH38QXEy5sALVxlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779210634; c=relaxed/simple;
	bh=BbYNoLlYdV4u+0sBEPT2dN5NcF1Q7IjkNchNaIODN5g=;
	h=To:Subject:From:Message-Id:Date; b=btNX3OQML/cy7aQ8D2C40jpXAmJp3h2zj3viIT4oD/dGzfHko2WXVjjIuF9MCIQbHb/FI4hIpm5ka6tFvnSsn5hj7kcPx/O7mOdkH3x5eu+3FkfUL6H5r1wRS26/7nVK7pYLLpPfPGPTUFVpJWZItPJtCvlqzAht19fFMRRYvXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWc0X+0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWc0X+0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB023C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779210633;
	bh=BbYNoLlYdV4u+0sBEPT2dN5NcF1Q7IjkNchNaIODN5g=;
	h=To:Subject:From:Date:From;
	b=dWc0X+0Wt1lm/A/oSr3RADOXueMQykIbBNDk0zoJDaLigY4pYXjp3nWiIJNs3nxyA
	 EMcIffcwHDvLqiYo3PWJnnWav0VwEspv0npDGEVR7VUJHavtM+7MHD8IvAIcc5bb8z
	 BrmWhEO0UR92LqMy56ewgk9EdOCFvJnriMr/vKXzPpPoKiRi0GDrt4FVCCwsVywNwH
	 ELrw6J1KpBHCIuaqiV/SLo4lcW9mpgCAXFeMOevVW3DSI61KiodmEg15yKsNTEwBDP
	 71XbdYUsQ/ER1INqEBli9VAGl5D0Y0FEPndYWXXcBku8QuPtOKXynUDpA+WWD3un6g
	 2WJNuaLDTGsYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5FDCD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177921063369.10753.1482716359249094340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd5cf2e1417809e9506f3b206c5f2231962a43728c1b5cbaa0733b3b4778869b
Date: Tue, 19 May 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779210633
