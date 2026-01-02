Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3756CEEBB
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767315834; cv=none; b=AyQbCSgjCD3JnO7Trc1TTvJLa9lrnTpSA6OcxVnIFhkqMFKoNcfXG65jXpqzjPETw5vYufPydDUlCKD2q8DUyxurB0+CL3FiUrU2oDTDATIOV/BJ6MxsD6+vgiEajzKI415Oj55xIquh6ZCiO+ubpWZ2CIhup1Hz9dhpbm3IPYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767315834; c=relaxed/simple;
	bh=Zyhmalm09D+zF2ryPWnV6hzxkljmreqsYOoO7PEKIUc=;
	h=To:Subject:From:Message-Id:Date; b=jEJnk2Jx1ojArfsTA1Kn3ANFHekY/pa8Xoyjd0efpwEXwD6TIgt9copcNeB/cVxIfhFwpPn6HlQw6ZOZ6s0W14RsB6vVSQJnITNbHhcChQ4+teSCD3Rqc2Lzzqbw6mfi1VMzN4/uJv+8w0YkxlDuaQB7mwhjFMqToP2LqY/iuOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPrNKKtc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPrNKKtc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B3AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767315833;
	bh=Zyhmalm09D+zF2ryPWnV6hzxkljmreqsYOoO7PEKIUc=;
	h=To:Subject:From:Date:From;
	b=vPrNKKtc/dbnjp8T3/LAqya8Ojge3DGprWmOwvN9emOXe2wN1bziZjKKMtsuqhcV2
	 Ymma516zKnZyIz5UAM27i/0IKtzzhErwvnEl1OthU18gJVQkorSePomlsIcxIoapLO
	 ObnLDggt9hoStnxg4bHZc8kGTKggkWb5MFO8hW63WihFiMFn/vokf0j7INuxhajLwS
	 WvyrtDeDWfV9eh1bd78ilmFulgghdGpWF6PHsk1w2qlVkTWYaghCC7nads15kXeZlI
	 mojLBy4yXVo0hxh0qW/ltzveBoVvkp1dEUaTOTPOvv3ctXyrA16wCfYO4UB/1yCAHP
	 Enqo4GoRpeS+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900DBEEB57B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176731583358.8796.9957238619312866757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 367086243dc205a75544139456be055c33956970cfe10d70133f979f1803f5a7
Date: Fri, 02 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767315833
