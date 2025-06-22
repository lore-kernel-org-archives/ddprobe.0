Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346AB19C558
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750604994; cv=none; b=ED9r+K/cWGJlEQN5laKyZe8NXFGwW+gwIVbowAC1JUMTJ2q2dP5uHRoRIG0mDml8HFWK40riGN7agS086g13Xc1rJxH2eMHyIWlv5D5fr2jceZnXsiGRT6xONofM0/+jTo+0r2/RheNeZt54ZaeUzoTsPeaSqNQ2XlnAomFN8WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750604994; c=relaxed/simple;
	bh=ihGHfGlC1xjvPcZdRw7JObcLpquXDBTPwT8ZpLh5mCY=;
	h=To:Subject:From:Message-Id:Date; b=Jkq+YqMbV65wIyo1af7+cSzfBc0kPtWL2gg1yKCaljrEc1xO+jvBuV71ig70GHDKnco1QEbJ9mwz4uc1kaxLtJNh5e/QubEe2q+ZflRImIAv4Tw+imvy0xxz64tPC762Pgb54TsQ4tUyRXz2Rt+q3ceBn7mQ5Cwdu5W18380bz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=guqfVv0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="guqfVv0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A035CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750604993;
	bh=ihGHfGlC1xjvPcZdRw7JObcLpquXDBTPwT8ZpLh5mCY=;
	h=To:Subject:From:Date:From;
	b=guqfVv0e7pJLbu901l+4tsm61HUAmnBwCdarv5qyd+eioPB0XyDKfA6GrBmpByGKs
	 HyqRDjUCRu7+DtgCth0WU419VNLLddyKnQMbmF1aXN59CZbciv/FcOByy3mIk2/GsP
	 oWQCsK9XWBeHt7fxKrUmpVS7XGKwcc86iY/dDtPlNlByCJXxyuENlqSRZFJgPKGzeV
	 lL0gbkzrhjQv4dKNt4E/Bv5TDYawaCnnRxmM7F7nXYZ6pjDJJQssjAQFZocwC3VVnm
	 XZZ8UKOdjPokLB+DqbZRomOoxAQpkqDsJzEvTwAAjC3COCE3MmjZeNqpOmCcLoZgYG
	 epNOlT7TgWJgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90387C7115D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175060499358.8203.5257062982951210513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d118736c494901998df7098c350d7dbbcdf722a35e0263c7e23b651cbf8fb6c6
Date: Sun, 22 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750604993
