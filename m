Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329A93A3E9A
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776829054; cv=none; b=RJqUqjrg6yUFSxrhdgf7jyAZGAdi3BqD7x34XxSaFb7xZmeRnSlv9e2lTtXYKIelwCliYkPpwWmh8iwM52G/c/uVGkYZSKhkZgGqSzWN6bDK5/SHiNM06RLV6QtOTX+paPSAV8E+0qPjKHNZC0KCfGQGAxx/bmTQd/qVlB170qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776829054; c=relaxed/simple;
	bh=xOhQ19VFq2nlnUBork/SsUJj2mBFrcC4CzrWRPgqiqc=;
	h=To:Subject:From:Message-Id:Date; b=J4Y5+vi/Y/COlCx8sTakndoHaDpMhk04COb2J6/gxGpM9kPGmLytolwxfE0FI7lyiTMW4Eupx9DSKtrks0TjMzCWt24/9f6EaxuP9CzUNkQoOmS/6nFw+sWxyu4h5LrrPsnWm6HHNNTAYcgGih/cPUB6uVlscXqZhUMqS0qLb1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZbS9rVe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZbS9rVe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3ACC2BCB6
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776829053;
	bh=xOhQ19VFq2nlnUBork/SsUJj2mBFrcC4CzrWRPgqiqc=;
	h=To:Subject:From:Date:From;
	b=GZbS9rVebSqFNr42GCcrw7GSzTTumnZjL5LCx517/koDiVqjD3v8IGImEuMoH3FqF
	 KyJvVcuW6F3sOT3Wj5RW7paUzs84dkwdpP6TeS4+2k0YdwyYR11yNSbjojXJLuYjrk
	 Ju+EyrbLRsi1NmtZmDM0jA8uRdTuu9oGIkH3kIvpsmMLg1Krqr0urrDUvJ1HFX46S+
	 qGZU5cQ2VEbTNTPhXNJob8PCxo7jQAWzmKMzVfcI5m2DFpR9trYut+4Mq95ywqSuhw
	 ejo4w5LgQzZhJrrr4eUQC0E+hcs+p9d8agbnh3E7Gj4Ube6tmaO2joGKeY2ah33iWb
	 LeNQCfwr1sa2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E2DF94CC1
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177682905368.10307.13920404783804940785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58fb91831efe747ad5ac179832d9b0c9f1a40cf6d163748cad6ca560ef66b89d
Date: Wed, 22 Apr 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776829053
