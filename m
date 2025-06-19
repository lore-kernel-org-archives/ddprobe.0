Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA6523C513
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750315794; cv=none; b=BcMyxP5+hwQhbHngUnyGMMHd7iHzEN+VT7g30bd9qXj49WUIJwLmflUuHln/VYDbok5ndmbHUeCIja1E7a14KAAJLKwB5/Z8VpCOgXfNOYuyxOSBxorxPpUU5Y5QjhrRiADJhxhc/JOI8K15ftMEAwvaAKrXNRepRqpuv1hGPIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750315794; c=relaxed/simple;
	bh=0sp4bb7Mm+SDfN2OuTN0lgm25IFOqA0gqTCw/X8EI+g=;
	h=To:Subject:From:Message-Id:Date; b=uynWDxh/bRsFxNbG4v7gUu9trBnLxHNCtQQovAhE5rQNZD+i1IHPlo8r+ILBu1sqfurZE6W8RmWqzvwkCfM2x/eVow9M8u64VQLq7ysJ2mF1XpBcaUqyFscZcmfSv0R4p7mkPr1GigxwjkE1p51rJoZkC5VF7K4Mm7tNPBJ91gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLWXmGxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLWXmGxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4434C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750315793;
	bh=0sp4bb7Mm+SDfN2OuTN0lgm25IFOqA0gqTCw/X8EI+g=;
	h=To:Subject:From:Date:From;
	b=CLWXmGxhvsA9RauDYGTFCMSWBT54PaOw6j1PSOa7C+M3Rp5e9jmfZOguNnkt65E3a
	 P96kUunSiKoKIzVy56ILUxcPktdlFEBUd+ERGAHLts0Qh1wRJXxjm9EBdGXfMeT/1b
	 Y2Y9PJ3QnsQ9FVI8llJ+kqLQUUYdAzkyvO8m7AWRmzcjKycYJo8GvPK6mnjH6QNr22
	 dhTXaoKp+0xdpnxcXXvhCUxeIXTo0HuL3CkZWGvHce+n1PGDjK/TgWL3ZtdynNqe3Y
	 fIIFy1+dnu8lo3TwJck8NgLDYJq5GoPkschTdXQaEAO0gATcdAWvCGzOROsoXpFbc5
	 h1OBhPIX+FNCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC60C71136
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175031579358.31991.15165744445354590834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f1e31d1d74fd673547ad55bec69cf46b200c6b6ce505b910ba22fab02b84307
Date: Thu, 19 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750315793
