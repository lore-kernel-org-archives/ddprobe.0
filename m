Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBF727472
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768185234; cv=none; b=jh2x/r2533BLuvMIzkFQobgJv43cWvfBbTR6aoFZRNUKEZ2BMU2LUax9FlmVRGduXH8BzEAuQujUd9YXx49/a0qRQ6Ayw0QZT/PBTQhP4lon7hgYvaG8VZileHSvzqHlg8nxUsSL9Lp+OUqavemnvC208933lP6dEz8m4hCZPpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768185234; c=relaxed/simple;
	bh=B3gF/OhI3ZjhG/OmCWiaRMxQoxxhIyg49u2EqVvYLfA=;
	h=To:Subject:From:Message-Id:Date; b=hT/amujP9CPPNT1zMybhTQTOw6S1E64QGxYXAgMTr+217PsWB3NdGkqCP18DcmcrMw7rK6NKF9hjhwi2S/8r//taISvZ2VzpRM7IPjZ8eRIDRuLTks0BByd1V7ePT6eA2RQ2aL1unLZ3v1uF2V8LYN/5n8C3qLzRUP4pJmiQ2ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4553uoj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4553uoj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE87C19423
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768185233;
	bh=B3gF/OhI3ZjhG/OmCWiaRMxQoxxhIyg49u2EqVvYLfA=;
	h=To:Subject:From:Date:From;
	b=F4553uojgLfD6JP2ELcqOL2hXLXTIzseCmGcz6fiGi38vZ3C2jKZ5RlvPEfIYZYS3
	 J/BHwV6DF/wM84zLkH7PGzYPQv8dJy0av+k/97vARanimiayN2JJKUb9V/e3wSSSqh
	 MsxehuxBp2APMMDLLsHOzsPO1rHyFexdCaZ+WgWQ5jVZ3fIJtzeQeH78GoXgs2biRW
	 MMteYVnlGlgwtC1weD0IqjmrPSmZrpZnrIiYCEl4WZWmSr92psUhLXyMwAoUQLHqwk
	 aSfzGFYdQJI6Uhj+23vCjkxGskLHx32HwyyEYHEckLq7xKd96vSf0k1Ojz6xprsyrJ
	 jfe+oEvDTF7sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A2D2502E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176818523357.17909.14859580679338074094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b44d1a5497e958c719c5b9d5adfbf636befe51e51a41ba4c0b5a932b6b282db2
Date: Mon, 12 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768185233
