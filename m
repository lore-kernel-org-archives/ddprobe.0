Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E3830B500
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767084234; cv=none; b=W8+1NnrXLsu5g3FHOZcYtccB9ZzSd1V8V4NR3T19cXosPOobd1rVQ3hkzmXFMfyxsYslb2Qoj9RjwNMA+onHV82Dy/1SVWRugP55IDusQcClVzqkusRTY0DOVy6gfpFwrWlsQs+td1qI5wr9z6eXUEQLNedi4k5ZTusyJteUZec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767084234; c=relaxed/simple;
	bh=NMcze1mSzzeKU8kxYlLHXe2sdhBCFy8jvOswglHvmeE=;
	h=To:Subject:From:Message-Id:Date; b=hA1uiBbjY3HyA2KOHhOL42klAf+FcI+rIm9Wikano3r1vcFCdxMspg5BDbkHdh5q9z5rxjCQxeNC/FAtiLnw+mnpUh7u8LSYFneFzPftJgatNmECscsafAA5LMbXwT+uvGYOqF2NFd8Pz5XWq/RAVABH7V2neqgSUACy9t//WGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxgM+9Vv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxgM+9Vv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC41C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767084233;
	bh=NMcze1mSzzeKU8kxYlLHXe2sdhBCFy8jvOswglHvmeE=;
	h=To:Subject:From:Date:From;
	b=CxgM+9VvcwN241RkrOGO48Qz4VsrOcwypD6fQ9sBVHZEM3g5sY6X+Jr8ZPoPAKKtn
	 mXC45jS1ViUdAI/yYK1Aul8j4aslBlTg+UrKlcteblcVn9fasHioh1mhHWSzJ2T2HR
	 UnQmRMmOCder4TfBesKiZNIRYmnBeQChXBKPPxMn+kJY024nRBxTgU1EvDVjOBjj5l
	 uZhYNedUbKKAzHvEgZc++I0fMLdAs8Eqr8MHcky9cyfQ30GM/osdTWMdEG1mJHjlvI
	 w+A6ImZXFgPvouFVQn0G+Le/nsOuWI+TmUwZL4xrtKvqdvvAJ5M5QYzUe/7h5N20xY
	 +WNxLDe9H+Phw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F222E94108
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176708423357.2215.1508446974908893330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 355e33a488fae2873c170fe5311879b962ec23006bd9fc081bda9f64ad388d94
Date: Tue, 30 Dec 2025 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767084233
