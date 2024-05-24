Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE303F8ED
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 18:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716574403; cv=none; b=R9aDqTqgvUIcjKXP2A0bGpMwj7XtRpeX92xGck8crQU7DTDQCUtpqckTPDx+u1rtTiMCDgHJsqD49NK99Yb0Go7JPfH3Q88PU4dfJ+xltYP4le3zr6wh9PD/a1i1ljTYmtg3EpJGggDa4/ELQFporET+/nNWAGfvVd8d1OIyYxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716574403; c=relaxed/simple;
	bh=Otz4ekUuJrTx05ouW4v83E9eovJ7UWzh7k+jAOG870I=;
	h=To:Subject:From:Message-Id:Date; b=QMs/rTCWYGGqPMpDO8teOqKfh9ihMn3+TzRh/No6O5say/uGeasWYpAyM8bebVKrkzUnR9kYjdj1C4lYyn8zYZd5LBIJlbFPkqHzoIiOyLtynJdCdXDMzIlE4102Oc5cy5l8rrI6XM+HxobVAk62IZc18yzQo2T0uK6pLfhQfMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEqcbf26; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEqcbf26"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E7CC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 18:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716574402;
	bh=Otz4ekUuJrTx05ouW4v83E9eovJ7UWzh7k+jAOG870I=;
	h=To:Subject:From:Date:From;
	b=pEqcbf26d6nYo68TF6HpCPsLcSgbJoplQe/Leo461C8S1062UxL7q1qGyrg3AivH0
	 CwpYzOZhFSNJ33M0O/EbtBJiVvrNcvzSrPbXkU7eqp4hlgnw8HWfEgn2pTWvNhO5vg
	 ns86fbZeco1w0cO8+Q/lGoXJxW4NM66SGtSmnK3NSXwWInEfh4rlyyJ4cM9yge65gr
	 pyU5WE97K2i46X9DsRaV1jZUTZJk9Y45lrYKleGCRAfZW4/CZxapVgz9D7D0e5T1D2
	 Ymw7tF7GUseG+HkO26yAFPz0ki2vIk/h9zcMfJGsRSUKcS02ixQJe3GwwoB4n1YJ9l
	 kiRICFKmwH2vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C56A2C25B79
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 18:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171657440279.18231.4611499400072283146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43ab78d326905adbb8b5718eba2e370af513b42ca488056efb28e602a3b82fa6
Date: Fri, 24 May 2024 18:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716574402
