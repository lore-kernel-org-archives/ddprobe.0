Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E8F2AE78
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777189654; cv=none; b=DePjZUyMrl0YLp8lAAelSqrT5Rtoxs9uDE9Xvr6x1tjPWpJrsDOFEBTGjj6ftnZeRHbZ7QEDiJ8rPt2d/nhUtXnyviAXvfSd2oE3Y/VyzrciECaneABBuf2fkq2nY4Iyfz1xa08zoysFW2VAmJbX+Pw2cSyxwg65uXIKBMuLCoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777189654; c=relaxed/simple;
	bh=1WNedbN4LokMf8w+B4PNyM9ZP5zYw+2Qnl6TTBUWUt0=;
	h=To:Subject:From:Message-Id:Date; b=nL36XwyAheCnQwFz+a/YSd0SjcykcuAsmpMqjKCXa2GBggUuOZ9X5EREYyNJDnNDN0neKsvGJF39IfDX6/r+XkGcC/8byWrvt9xcarWkoNZojrOWpEXHp6zYwcskWGEu/YkChHBsHOlpktTLRn7VPaK+ywvN85SR0PXKgYS9wuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWl25JrC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWl25JrC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE8FC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777189653;
	bh=1WNedbN4LokMf8w+B4PNyM9ZP5zYw+2Qnl6TTBUWUt0=;
	h=To:Subject:From:Date:From;
	b=aWl25JrC5/qnolW/qFkn0XUK2jjlncFAAVXKPqxP1oN+0Z+IOF/d4irFNl9myXbCu
	 gXy5sBCXm4PwYLVZ1fcJwZFk+VdpZkey4wWHzkPIT/EHLN0mXnGQjqKZyU/BnUb2qO
	 tEy98FPy4fGbYlL8z3fzw+Acff1mySOWZ87QEQjrBdlmdQCVX98kqHL537LuQ3oWqx
	 llFXexffEtA44HAFL0n5Y3lcKEeQdOailVoS1buBkVl63a6pNGz6kf8V1DVRK5lMWN
	 wYyqg8CKbbDpWKK2QIkrIKJ6l53g1BNQmQc6GgSXVkT2k/+mTcPQC9+HoE9uDTLutZ
	 FPQalPjNI0N0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2CFFF885C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177718965368.19250.5226325188516076841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efde64e1a4a25955bd13fa6083364fe9a0eeeb33f791680155094e88bfbb033b
Date: Sun, 26 Apr 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777189653
