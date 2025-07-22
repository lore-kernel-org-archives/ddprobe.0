Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EDD22E090A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753182594; cv=none; b=sJk7l4jwZPUCL54sSrM4b4L/aHQPO+rnk0ojT8M8T70lgt+NfMVKp0GkqXuRz6WJvgoJ92duuBpxVu0wsDeEAftH8X+EknChYs24liS9AaJY5F1hCnixN5vYSRkRQ+0OIeJETdsQEqS+Kgds0Nt2X76ZB3BFEgq04QkzNS6vaCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753182594; c=relaxed/simple;
	bh=9CZvdJdSh2z6cLFuiuEmJ3SrkBP8ZzS634RQHWD95jQ=;
	h=To:Subject:From:Message-Id:Date; b=EicfER3hhNAaj7237qIDFxWByFjB/69btH7smtRSXkDPvONYyE9VH/76HoODiL/5UPoJr7qzNdJtkhPQ66rhM5EGjZiV4SEgfI0tviYnJG0c0NBUUVy0zwzu2GJOlPhOpZo8SA4DCI0knGGNhrMPJ6mhPbfbiITmV0Xai7QMbHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsiA4VuU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsiA4VuU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C97C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753182593;
	bh=9CZvdJdSh2z6cLFuiuEmJ3SrkBP8ZzS634RQHWD95jQ=;
	h=To:Subject:From:Date:From;
	b=JsiA4VuUMU6JFBu2jAVKWFloUVZWhZCE/h2c12ouL+M75hlsmiB4Y6pcb6uWqsZQZ
	 dcnBMtDreIyJHlsDn7Knr8pzoZfkwvCPxhrlHmqr+4JVBREOdUGXhiZ39ZYOZcYP3J
	 7Ln6xlc9VTWyVUrSlorKSTzPcQrN6JlJm+4rSyQOCtwVSlvzpAji7b3+R4CMUbeUmI
	 O4W34w13AXZ/m25lMmGvcFcBTR0QSZA0nUjoYBFxU1c62SpIQrI2aTkosxCJV3EpFb
	 tJvvPDvgEp2A9H3xHVRrxOXfeu9NMmFR3RD4TUCrkqF3OKaHQnflx7PkGt0SLMbQcK
	 mKFJ5UzsFUWFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE64C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175318259358.16907.11192340886060123343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d89fbdb5b3319516dc3259c4035eaeac109b7dba0bc738b6268dfac92a71d41f
Date: Tue, 22 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753182593
