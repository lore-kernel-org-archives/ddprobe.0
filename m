Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2000832143E
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756481394; cv=none; b=aITfO4u/5dfvyIIp83SgYz0gfGuB/VPwTAutGZqhQii/0WjDDCU/BFCD8Tp27yV96lqeFOcwttD5RnsJlPTD0yQsimWqQF5SrQIjYewCYBSGqerMdi1VSYXFw49EABfzhf1OVrUhGnOamwUTXlFXzVJm5ZVGLt3y+C0NNJ3Jv90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756481394; c=relaxed/simple;
	bh=Oza5yCyDno5gTSeggsI1XmG8vCoLz+bmZu+AnwEeH6I=;
	h=To:Subject:From:Message-Id:Date; b=NKuxOyKL0AQh/YSLE9Dotxc9viU/FX7TaIm+NNLmhgCsbRt7jRhTOllkBxe7wxWrbI4lUsELBqGSUPyEV0Wm1S53fSm737RCN5mKgGaRfKo9Kk9tEwNIPxufR1fMJyCZPgb83HIXnMyKZtkNQbDIj7Vi1L/RFwEed+eppC0ra7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRDhi/ub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRDhi/ub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95CEC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756481393;
	bh=Oza5yCyDno5gTSeggsI1XmG8vCoLz+bmZu+AnwEeH6I=;
	h=To:Subject:From:Date:From;
	b=oRDhi/ubMvsqCCg8aMBXGA7bvlaZ9adByio3ayDpBPnokp5AQWh6E/te47CbThMkQ
	 kJjLC9G+pCyAKcXggLlfGw6gBfFP8ZwUBLhaC+7JOl0YnjxqvpLne1r2nTVYDKOAVV
	 F9iBSpgZjxTeI0rlbjL+FGzXSuXCGhSYIETTl8KGnT0EfcSKBM2jWj+67kpeusC3lE
	 30HncaCNPs36lJ9/uZvt5dNVWW/yBEIn1gSH/wN9esbvzmf4WVNurvPQJPw826w3uR
	 PYJYxHtLVjc+FX2R6+IdNBrNHIzp+0R1VYPTSeSpEJ1w+oCBR75Ck/Xf06YQO3JJJz
	 gRmx1RzK6iVGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963F9CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175648139358.26060.11215981941013315538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7314cce6dfc64f2ae6c8e3b8b8b5b6f0693bf911f0e8bd2de66c9f1884730c3
Date: Fri, 29 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756481393
