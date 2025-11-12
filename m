Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411BA10942
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762924794; cv=none; b=lBA4ByDhOz51szpVBrsoHOxL2gwaM328GxZZwIW7SVu5h3iyMVZw58t1W2Ox/jQa/czmrac1f0AlJNxMrsRmfhvA5w0M6YCXcWyrw7iUpY+EzJBqLbKH3C6HPI80UO9AQGnRzluxNUEUki1WAf8PAUofH7gAFr+qb93h8vpPmf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762924794; c=relaxed/simple;
	bh=EAlD5qz7cmQmfXjQNuLzLnbzdrwQ06pKR8wB+575Gbg=;
	h=To:Subject:From:Message-Id:Date; b=DQMm+JunzT5su/4p4/hd7/ft07uwyZvAsHJYfeg0OXFwtr3ZgOcBOGz/Z146KgKGlRLENTDUy3mbEnmid6cOjpPz1Q6tg1UkDD+hgJ6RLdcA8JWr8SIwmEs+I69VuRb0w0P8pmrEhtoTVvCqgUbuLKmIgrRgt9my7h3OiF8Q4Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtxpctLS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtxpctLS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C66C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762924793;
	bh=EAlD5qz7cmQmfXjQNuLzLnbzdrwQ06pKR8wB+575Gbg=;
	h=To:Subject:From:Date:From;
	b=PtxpctLSpkiEmcfrcmdtgt+bJUA0x2amtwhi2f+F+Qi/bAmapXyZpYtIj7fS7UMRj
	 FteQA00ayAbQBjs3yPL8VGmvNtWn6XBpOHzRo7XTNPd2roKCaZAKbEes7iIzo3RulM
	 vzsTvHFlFBl3km4F/Ijg8bokdQ2MAPTNwMHA202zTji2z8du7jnyGeFPA1k+hRirvh
	 i5z2tghRRLFoa7v5tSdAYhAGnielaWU0zVVIdAn7Rxosmd240MMqesU1cfCB2dHsDc
	 Calp342u7ozUkgZNqL6mngw5wKkKaD/Jy7Fchaxy65EQCjEuXUoPgsAAkw9cHsjf8O
	 SYkvs4RdYyIXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B5CCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176292479357.11972.8655839591613052313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 981caeec161ed7ea031173563d1a70de50fcc5fb3d664da68216f71eb14734d3
Date: Wed, 12 Nov 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762924793
