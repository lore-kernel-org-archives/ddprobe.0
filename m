Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6F82236F3
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755459594; cv=none; b=AHrOnzjKnVP4wx5cpTECZhXFyf1VsKCf+KuSBe07DwfCxLKzaNHJGGl3Wg2lGwwMmnQZgYzcROShqp8vfhuyZd73aw/hsj0mXagZBvKjzmRyKFXhR9wpWWVTpmvLQn0MY7SxeUpd+oxlWc6jYCR589Ziw86WKxCm2auoXpkVR5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755459594; c=relaxed/simple;
	bh=OpKT4lmMMY1iMnkRswUUL4skgB3JElfnXzDM65BhXOo=;
	h=To:Subject:From:Message-Id:Date; b=XHg4LtbS0bjcnrdFnAHPMzdBynpH7EphW2QOMUwF3jPrbz2Cvz5dx4pA+3dYIehOO6gd0RCvhZ9TBibpYdY9jt3mysS/y821tIzmz2mKSikk7X9zpdmb8ImY0n2YownKrG73y4Ah0oO+NBRws9i1561Tw11AjUDm+sbXIJoaP/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppz1Zbcl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppz1Zbcl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49FAC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755459593;
	bh=OpKT4lmMMY1iMnkRswUUL4skgB3JElfnXzDM65BhXOo=;
	h=To:Subject:From:Date:From;
	b=ppz1ZbcluICE9tk5IJfM1hiIUiDMLgizlvghbGNCcxlJGp0UEfPZywrGIVGIx59iJ
	 9yQgAKR/hr2kFaT63kkkWgadNwYROGYeQCnD8KgsepvFgf9qi4Za01JpyQmP9j1s/w
	 QsrFW90TnBV4M7CUDBf+YQ2Yg9bjBeXavt6HqfueWobaLHFZWUM9Kp2rbW363z/rm6
	 U+gCTmJHS2RVFDFHiLo/iGTkhGlC5prhFRZg2Tqs0j/MGxsazfK+cKUoWpLPZE/7FU
	 NXBvNgfy7RB9h9Wjr3GpDrlmAZTZBnN8pd0y2K3YRkOllVK7+6zy5MShwgquJqb0p6
	 eanlwxwJKFuPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F31CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175545959357.19190.17044475292599791416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ca60b7a8f11a411d6f299c74f7f93b9ecc85264abf23fb89cb23efba189a3e5
Date: Sun, 17 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755459593
