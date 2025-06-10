Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A48D15E90
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749524394; cv=none; b=j/A5WHR5VyQ+WQ3k7k5r316YNI8iooCInz86NK4gzC4+E09C+uxuA/BQrX/dIzsPwuQQHDV4/2ZrvQjIpY02N4u8smogazyf+wj24xudOPzQFnXwVrbIFArEygWzgmP1kJGjBRKxPKUqft6z3u6SIo3iOxLehd1y2hoGkmeHaOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749524394; c=relaxed/simple;
	bh=IJYjhREckgEZ1KB6Yu7hCG/jQfSyyEubjAB7u2kBd8U=;
	h=To:Subject:From:Message-Id:Date; b=GhmTZvBw7PgLrpR4uSN2ozaJNb9lMPIewZzLkWg8C/CC9cq9+VSNVWzcN0mYmFP/49tGWIA4pJZfESGOrLi/9vrlu9Vp2wQMkPgHNxjjNPYE3Rl4BHFkGlICA+u0xcxPRRCl+DRSvUtq4hsD2ZXrw6mC0IhnAnPpVPOpkqFv8Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fg7LmFvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fg7LmFvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57CBC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749524393;
	bh=IJYjhREckgEZ1KB6Yu7hCG/jQfSyyEubjAB7u2kBd8U=;
	h=To:Subject:From:Date:From;
	b=Fg7LmFvXnaPJNkE+oCDwRYI2Gu64yXI0BgMo8QjfojtUctFjMJLHmUYcPL830lj2J
	 g02b3pVe5kpdEQYTjD6mOHHEcOiA+WpL3KF/PeTc1k/alSGyPyJ3YXgmPpat94be1f
	 VHf3O0uNR8jpfJYXFSMfkfh7qxqHOaNyKSWpBfZuN9PlUAVKj5WaTNjJYfz9UgY2ul
	 rRgv+J78bfrmhkSccAGIjwxNoCbYz1APzMD77VlYmrNM1NyIGuz74fu2HL1REckNiO
	 QqFEc7mhSUr11w7zl+HNYAeuG1WPM1PRyDmWg/0UxOuzlTDINgScfaaz5nQ2lQhD2n
	 0Ka0fOlWQOc3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BD1C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174952439357.30491.14286328783471297222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58ce94bb77cac6edc29a0c6dc0a25d72202e45b168afa5db2b8f5f1f705dac0c
Date: Tue, 10 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749524393
