Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1002D9EC7
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762382394; cv=none; b=VbdfKrFgWQVjNM7r04hw89DDyMlksbtyH8ucqKOuZmDx40Q5zQ2gY5vwqvImVtOT+bRO/jQ9JD7oaIo4SL7V/3syNGX2exHO+L04y00oiaTUHKJWokKMsv9s85+VMJgUMpv/d94Y+6CVXZQVPjrKZjRLcSw3TH7UNCo563er+nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762382394; c=relaxed/simple;
	bh=HODyVvYdBMBrJpJetHHnkI/jseJbxXmosqsIEQmfOZ8=;
	h=To:Subject:From:Message-Id:Date; b=Dwqzj3J7U3SrCFaGhVl4/EkRrCUCaLldlpDlJfxWwD9/8JkAc2NyNx7sVXXrfJx+hYztzCrxwjJtR7SwtKDwVBwo07orKp1/egKpLDo7p++ii/F/gnsMz/CFDqteCsaFYzr0fkTOnC+1XqXyyvWBpaUQUf10Fr7MVYMhY1iQkIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nAhuWKcj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nAhuWKcj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FF7C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762382393;
	bh=HODyVvYdBMBrJpJetHHnkI/jseJbxXmosqsIEQmfOZ8=;
	h=To:Subject:From:Date:From;
	b=nAhuWKcj1RMtnNdyi0hvDPLKWBNxLcBYA68o5+rzysWTO+iVEpIuzOXj9Szui4mlP
	 jpjROFNHTiRhCgZpRTQHxPHBx6c61sckZKgIqFHgA2SFvDQdl8YRb6iz5snVmHUjz3
	 h3E0WzQQ0wBrMheyFTk44Vylm+NwCNqa31ri0gkxnIIpDr6ApGepXvCDfFJzI5QIFe
	 7QgCZ7xRsOXDslfDXIDADniw8Y7m4TImak/0pghvHTtr/hc43qD2BYMoxeteMO5w2i
	 MCJg8pzDH0a2QJ1oklofny/5odmzg+5E5LfDCQnaevy2jU/ORRzBTUC+ZXYTgjvMdT
	 +qoVhsbieTerA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B02CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176238239358.16302.14919702222059677117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 788cf13d1e582bfc43f4051179bd08f49bd6214987df73e853e41eb242440cae
Date: Wed, 05 Nov 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762382393
