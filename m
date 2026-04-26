Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2F713AD26
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777179454; cv=none; b=ObHI2caoLD9QCQ6SnCf7KETk+K9YZ2ia0Wz+sY/E/rJX3dRDNq5BlVKeuDMxKcciLMBnID6nca9MLi2xR5y3btXB+whpPhQti3y3UR7KFs/jUUjC41ru+HxmQquV8ltWusg360P7skD40l9sCrOjyJsVIFLfRcxMA1FmnFXXgFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777179454; c=relaxed/simple;
	bh=sshEadBHDI7Y2M68/3cdXVG+KiXD813INfccOri1Mzc=;
	h=To:Subject:From:Message-Id:Date; b=HSSwXxDfgWywfPI7MZv3qK7eV1EP+0Q9TlH1TBl/UASzj+BXgkdTd89w0cqVv01FdYiBOf0sxUJOp51OV97fmJtANXUhjEWZAX5pCW4PXc2/OeFgLdoDOdG2y6hVNF3ptWspwQpGZkTRPOY+W4GOIdNRM0tOLRtBTiFlB3925Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHEWnlGE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHEWnlGE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF1D3C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777179453;
	bh=sshEadBHDI7Y2M68/3cdXVG+KiXD813INfccOri1Mzc=;
	h=To:Subject:From:Date:From;
	b=qHEWnlGEPEaxWEQaRlGirjYJrSaF8KrprxHZak6AjP0DO48ors4IXu769goKLh35K
	 av2OOqV2K3iwBXYRdNUhgPPCV4JTtj8fG5646MMGjlXLPtODZmxwoYVqIBor3Prty9
	 agwJ/9YH3FiO+nnPXogEsQ1qILqDxSfRUcJbRXq+VEnAXgTB0KjRFlL/NuV57AbxQr
	 V0AceoPyRLkEM6EzZhgx+dYlQgj3/HB9fLBw4eKvuYLkxZ31T7XP5jt0rTvTABU3wa
	 OYmirJk88nW+4JyNAa4Xh9yyCs3h1z1sP/bwSvw8UZwts6s9ZN7VHdi6JmlNwN98ll
	 m8N3gSTFS0rdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB444FF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177717945368.13302.8865081921802094905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700e52850eeb70d5fca0650a455c35d7655e1d8fce2ad66c8757acb5381111ef
Date: Sun, 26 Apr 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777179453
