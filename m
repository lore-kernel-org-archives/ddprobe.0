Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 621882FD7C3
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 08:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771058094; cv=none; b=hRMXkUPWCxrItWnrSqyyzR7cN0svReEtixqlaiDGNmgK/5gZBD4x+6iZSjLQ4JvkrQ+qZ2DzuWF++U735+ZaaY5aaQ2SgdaOJ3mXJXywxb2n03H25TrcvrFR7xJyfFcX9jx/3eTlVJHqdnQq8iAlLEGvFQaZmXF1DfEbrjGL6cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771058094; c=relaxed/simple;
	bh=G76hOv7rBlWHs1Ks7ngQliIFeB2aSQtd3/hd3WUh57U=;
	h=To:Subject:From:Message-Id:Date; b=cjlvWjMyH86e45JzCLBw+qVfA6pDiMfLOToZbnJjDxpXvPBg4rcwAUSJNtECkfJ94M6kOMhnUTY80SgslkpONS/LrIYVwDXNKS5vyWRRorMgcQyfWw2UTYfPKNC8KEP3MDl95xQCzVcODLxRHwb24ka6C/DvdMMaxIAAlSx7KNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7SFy2gK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7SFy2gK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B760EC19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771058093;
	bh=G76hOv7rBlWHs1Ks7ngQliIFeB2aSQtd3/hd3WUh57U=;
	h=To:Subject:From:Date:From;
	b=p7SFy2gK9Hkyix9bY4VhRaFRYYXwRwOFY+xk8V5yUVF0IqckZJ91HltneQpD+rJTi
	 Ayxu/qae2pZqGr7+eTYS2M2l2ZwH2gxcDmWD9fnoXEV82vX3ussZ+YJENqijqWTGIB
	 asILolig7ovxyTaD3w6DIldFNRtlyhkFiOcBXEqHfRIH+pZ/PsknQzbnz7XfUJhBVI
	 ek2LBvYMII5L0wr25qEDqAckH+D/AgaEDh1/DubxjjdEUS2GAjnvTqCYV9LeciMtcg
	 KDUVmdwwynD0EW6EYCX5Bly7+c6jn5hGE5rO37m1DwWAh3n2QztLumsNOZScxa42xY
	 JnY46ITUxuE3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D10CEF99F5
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177105809361.5979.2953339821447200804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66da9e6534e26752d86ba06f7bf6ac7d3017e5e32e1d048d7b1a1b366d440085
Date: Sat, 14 Feb 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771058093
