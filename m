Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E2DEC4
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752022194; cv=none; b=hy2k729n1pEjv9PX5PUs+oJXsYWmKs3Clr1X6y+xSV0R9UpxWn9vIEYNO67yOtaiXoMkbLdDtPwWS9ydIpxX84QLQz9e/XckhEpFiBqKMW+w0yXeW/NrSN4kVAQLrn9dTWBZ6b5BO8vb8ZolMJfRnkT0XCyY0+coCAZtM7HkM6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752022194; c=relaxed/simple;
	bh=ZVyOm2hPwtGDuQyJpPMUaiQXqZrnEobR3odbr0TPPkI=;
	h=To:Subject:From:Message-Id:Date; b=EGjZ+C/h8KXMKsv3HqYCsOB4LpqlhYMoQJ+CEGpW5IYZRpAB69AQ9pnnFyoBTZ4Yn124ptWg73k+Di30Kg1kAvQmBvH8sY+udr6W5AtFSKyjePGz7t70VaK1slXdIDMM4zO2q6dGw/WIjIX2i8l4YQdwzJPiDM2OvvHn2poisAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FD00sGd5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FD00sGd5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9196C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752022193;
	bh=ZVyOm2hPwtGDuQyJpPMUaiQXqZrnEobR3odbr0TPPkI=;
	h=To:Subject:From:Date:From;
	b=FD00sGd5fmY8HW0ECI8weOjxIRBxV4sxZht3nVeHJthX1AlfwTHmKab1zcgFl3+PF
	 jY677ArMm3F22ozqPjf1Wvg9z0HfoUmjQ6WtXjzVfVJS7Ykyp7P6lS2Ig2co9Cg2Vt
	 buuFo54BfkEkiBuEnys9GidtDhvPpyRtlC5JH3C5a1UCX5DW+6S/fCT7eKN6q0ua9e
	 Zzdcs5geqyZ9uF9GTTa4//ZDLeiU1+JyGKLtErINPB+IReNIyVwLJdUXIWJru6uLda
	 xiDOTsKJdu/dhN+mfVZ+iXCwVLrAsPK/fDy6kT2BgNSh/Hc+RZCRIno8pntZy+dcFU
	 IeJs2eF1iU3tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912A5C8303C
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175202219358.5870.15689069859417345777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ef543333ffee5872f9d09794deff34659d6e2e598f2411115b1ace7b028cf66
Date: Wed, 09 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752022193
