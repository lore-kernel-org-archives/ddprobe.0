Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476AF332EAE
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 13:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781617594; cv=none; b=eLpQ/zBHfB6cASlNTScUvZI/FQWsCmdKsunIBIaTEo5/oAA3mia8ac8o42gu+LFUjQHwDQU3qorFg0mVSkx/nvy3ng11m8LA+tfKX4Mo95UPmfoBR4WPJ6pusuLY0SKb/qOUfY7tLaOfAfU67Sf3oKOroX9rdrXK7PFiRXhX3Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781617594; c=relaxed/simple;
	bh=jbyFScMOyjqKfLQm4uzbzSmbCuFB78ffJz3lphsEw8w=;
	h=To:Subject:From:Message-Id:Date; b=YErrCfLhmkH/S54ptq/8dbtMNcPYAyXjxwsB/8TGLpc71C8c1zYNwqAAYOQtp1ptWZNRH3jvzY/g13SMq5DtHk9Ip1uo/5cjFV6E7b5ftbDDSD9fM/Y4c9djgZS6sm2cFNWbkhqAVIJzSJEwNkFivGszFPn8qV9LeNgq1NWMt1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=biaMjFtd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="biaMjFtd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC79BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 13:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781617593;
	bh=jbyFScMOyjqKfLQm4uzbzSmbCuFB78ffJz3lphsEw8w=;
	h=To:Subject:From:Date:From;
	b=biaMjFtdk9ihzQel8PT8GUXX2Ahr0dIe9onvHUrxxijMsrBwXnHRniCwMElURAkqL
	 GKO1EHn/YhYmMlWgmhp3v45DHY5CuJzO3bu/hvDNq4fPcyqaA+txsmkOdwEMuXjAzI
	 Cin9Cmc0xK3rqQQz9gtRwzn15Wc34yIAH0bqzXz6YREk69pXXdSPbB3PvyNtAFngk1
	 36ilVp9u8hWffAs1KOdmDwEDaBUrWiowmiFt3ycYyLlmXPprTVpq3Cp717WI5JVPmL
	 81UraQbbXXBBARLtDgKjG5DS8Cqh20/6e8tCipW2y7Bl2dyZFG0yVf/88YXNWBvPcA
	 oCkdT5gHUosig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CDCCD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 13:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178161759371.27248.6667921998775847341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a76ca6dd5d08ca496196323bac51a1a3650d1df3e4db1d0e7d892b6dbd80490
Date: Tue, 16 Jun 2026 13:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781617593
