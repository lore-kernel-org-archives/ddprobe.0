Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF0926ACC
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 03:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780199674; cv=none; b=fM72oqWa14pSJWm/d5yXmtHUJjUGD1EvTB0QCzz4DPcQwlAwkyzQ9FqgnUPQZdB5gt9a87rlq+mu8lKW4kmUr6lnYPm+iV/gDS7PCbgKdmGY8J5CHacXnmtMEOz+kxxXs/2LA2JEM7ewe/aTQecuoD6pgBSwBn+huMfAPb3e63c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780199674; c=relaxed/simple;
	bh=tnYfP7pmVIFJtQHoVGLXyyZYFcNaCrz4Sf/oYr0KEqI=;
	h=To:Subject:From:Message-Id:Date; b=rHRpdRa1bzfKEZI6pb7lkfFjz4YbOVBz00Q+kPLNQm/gF135EWnE7nTh3h2De8j2E7ejpvkKAMekGWOiQGCc3mWFqKKjgX0HOPPvVO51f3rDvDhO5zQT3dGg1Fr+9OmCrNjSot8Vt+7g8xdYo+3yVcnH4Ve6U3G4YEOGClSW+bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8+KCmB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8+KCmB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3777C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 03:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780199673;
	bh=tnYfP7pmVIFJtQHoVGLXyyZYFcNaCrz4Sf/oYr0KEqI=;
	h=To:Subject:From:Date:From;
	b=d8+KCmB6erjDlkkx+SOTgW2Laxc+VIBMMseGjwH6KgmU+hE72Y3Qeki5PVK563ZH7
	 AMXNQnuAUHAcgpWZK5vpColD4h7SwAgw6yynwomo7bGXZiy5RCFmCx7qdOIlQ/lAY1
	 jXTRTliPomggMq2aUhnIew9gDrAst4eG2JKNPYIUIOR61KxLMyuxXtg5lzTjT5NDQL
	 aLIGauZa928wmik6nlwSA+Gqa833tWrxpTZKm4eBpzYQK7Snnp9b06yy6cQ01DlnyP
	 QKo5TqJo9FO+emNePGHINH2DWXkfrZYGUTpCM0L1kj3k61l04fccL53QBpMJLMlfaa
	 n55rQbUEgWJZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86DCCD6E51
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 03:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178019967368.15122.3962088450386382624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0138a430a29005e05a31550bb89c9770f1a8658defc0fb442e58879b1c9933
Date: Sun, 31 May 2026 03:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780199673
