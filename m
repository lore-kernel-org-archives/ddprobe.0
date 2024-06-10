Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5593756444
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 12:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718021243; cv=none; b=nMj+Q3BW2p4hQjVCksmgECFog8bW5JQONpLJ9aKwNFbzxaU30L8veWpz5QPX+wK5BPL5LgKYOPjYPJp+eAom5YH0jzk9QmSsPC9ZiU+dx79F6YwJEYk4tOdYT/UoOOktmdeBC35Eue+SaQv97MZwBJh2bscY7mLqkeF/wrV3kgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718021243; c=relaxed/simple;
	bh=UggNnnWr+ZmSsbyj875fK/S71kO/iHCkoHB+eujQs8o=;
	h=To:Subject:From:Message-Id:Date; b=hkuWiQbx9pArCLAz7nLbLGB2JeiFERl5WLhwHzBoh4/tOUXnU6OdvCKG7Ioegi+8DTZhxdelXF3uc9BxAk4aMzzusYbxLjNptSV6N06Fm9icLHOr4ZdbwXA8tnkDMuNPEtXPc/1MRBXb0+ztLrwyKakiuUB1e40uoqn1cFbPTco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6EhPoTR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6EhPoTR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25EEC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 12:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718021242;
	bh=UggNnnWr+ZmSsbyj875fK/S71kO/iHCkoHB+eujQs8o=;
	h=To:Subject:From:Date:From;
	b=s6EhPoTRez2cS5w+2Z3LGOO6id6gfjhLeJwtHWQtCGgF4gCygP5ZMR/xISjLWnWlJ
	 CnYm+rVWubktftbskEOzY/fP4berNqG5wcJJTmHs12S7oAVZS/fz9Foj/n/lwqnIL7
	 Pi/g+7KPvzAFIc5x+67BtWep6QOXxGonieV2Soa5FqEOt4NNBXTFB8oN/H4lwzRkG6
	 ia6exxkSaMgn9MljVAuul2OnDs1sy6Y2TwIaGuaLU4FiyR9IX5TAgZSpTB7xyzxC0L
	 nZG1zBJaueBr5KrO6Wfkpqi2+KQ+1lyr8wsgKP+M+h1qu8e+nOrw73o16Bcni8tLLR
	 tNabPOI1TKdMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF386C27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 12:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171802124277.14886.751008305900981742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b957745701928dec2267d3d8f3ee790e1e5ba5ef42dfa0f6bfaa5e64762fce41
Date: Mon, 10 Jun 2024 12:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718021242
