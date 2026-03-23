Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104B0396B90
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774265094; cv=none; b=Rnu6yDdH+fd1bKwWcFc8R79yimvFGoS+8ao9mvwze4/ugXCGsfVkc3dj2BQY1zIT2eSNgapfIZA5rlqE/dVR5V6pku+5sFi8BtT8e6Eh9X+SuI8LQdNWIxXCYpAtmWcdLhtB36+Xtd/vVDM0VZsmEixlIynA2uKdSa4Mb0i2O1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774265094; c=relaxed/simple;
	bh=eV072VlwQTeKVbNvCsgqhWNErCsCMErmZiBHU0mno/I=;
	h=To:Subject:From:Message-Id:Date; b=rnFSg9H6eyPT4/QYlm1ZPhdNycI7dD379kA8CAdJCousgeW0/Q/GAJApQOI2UYwjna8gO/rrVIq79H7SP7fNsCQno94U5mf0LuS6x60xWjkj9mbSXHhXIomzHV9LLN3v/1DgUesBaX9xTFTd6+CpARBNq0TvY5eCIJcru6d/O3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALqAs5oy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALqAs5oy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F24DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774265093;
	bh=eV072VlwQTeKVbNvCsgqhWNErCsCMErmZiBHU0mno/I=;
	h=To:Subject:From:Date:From;
	b=ALqAs5oyeneZsjgX8KgbtrQqeLm3n0Zqu10vJOW8aTR/m71A/M0FZhQlqy3bflQuz
	 6zNEQYf7Uw4OMpZ4JH/+Sm2ck9l42WOH6oPOGPMQibusiO8zztZ3nm2aW/nrgWRAJy
	 5psxoWTOdofi0Bx/YtSZOoVoyNC2qYQt29QBkz9GhjsUiLhSujzwiB6lSD83WqJqSX
	 3Hf4m7cBe1/b7xx2JlF4Q/oB8rka6bzrtKWLipqrznqspl4euimKO67HoqiXMv+7gd
	 o7zu8YNJ/F201JLlSyKquBcFScuZsl8dMw8LGdZV9HduiFvnaYpa9B/OZi6gDg8aD4
	 b3z6CIoZAuiHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B20EC01C9
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177426509358.615.17228664879282493381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13837295990eee667bf1d0670635a41058beabd53b411981c3f3b0b1029959e5
Date: Mon, 23 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774265093
