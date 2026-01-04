Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2184400
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767543234; cv=none; b=Gi5r9hHlWVm5bwb4vhVrSkRC+hplAY+lI+Z3J2RenRuhZpMqunbE/Cek3wVwoJC/cwFqxkWZad5WZDpBcrf2AWn1EXH95Pu9ynbEKCD3PNETEStgjRTminuxh9WZeFOAq83lAyYCifDqb9/448+Qu0vwrIJIrXDDDZyf6mfI1lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767543234; c=relaxed/simple;
	bh=JdiRx06h/aftzdAohzTla1Wkhkmm4C7mSnWT8nrt6x8=;
	h=To:Subject:From:Message-Id:Date; b=KBxLjgZURivZg5lXHAlsSvAleCDcdg5IDqrZGY8EADAazaRTROh+55+ydyyiqVxy5CQ/w/Msp1cAVxCdNIFJbXQKTvSe59i51YWlNZvj1dD+RRjUPuhmFVkMKRTKjpkYg2F+y52e/OHGw5fBA53oMTr16prC2+sTXrXGnLsS/70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgrJ63fZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgrJ63fZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5135C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767543233;
	bh=JdiRx06h/aftzdAohzTla1Wkhkmm4C7mSnWT8nrt6x8=;
	h=To:Subject:From:Date:From;
	b=AgrJ63fZhr4hjhVzcKAJxlNIqMkW27tHZLZ5c+nMs0JHt5oqCSfIiDuT2b8sGi1Iv
	 Rpq5diGXHz/jotelzhYQ9zz9KOuBs0gPlUl/j28EpYy5jE2EKs0ai+QozT4oDUb7V8
	 8vnjbsCwtGhXOqquoNdHaWk1fJoCvpgn1uUCXqN/4ScY5ART3gToBBsW30afIZwMfM
	 b9LC4bvP4MPf4nJ1lvMupz9fp7suevcSJmfSDsWDiXlGv4ABEQC7PMaNcoUiz1e8zs
	 5pAH7OE3inh4zFzArdCOsKRL5ZG5qjXgEBS+fHYWkm1mPstt64eBle0YONbf+jfF/W
	 I+sUcNHKI9X/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940DCC2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176754323357.3140.10962257502765453265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32bc73440575078a7c00bb3a51839d20a01e827bec7adef5b4544dc954e8b3cf
Date: Sun, 04 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767543233
