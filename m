Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEBB37E5C3
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 12:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784377714; cv=none; b=kjEhq7t7ih6kakijYon+9r1gphD7SbR/GOvDaLXHHGKcPSkNkjMZk82s8Z/cDlNw3bLS3sKDsi7FyDoKhO/0Ps9R2cMSKTX01qfAtHv5bTObTJ/mVVjELHu+Kj/UAq8hCaWnanuykNgLjTqq15gRK2uMY+Cn0coDEQ4ntAFKj+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784377714; c=relaxed/simple;
	bh=G+d4DCxFRRf8bT2yuitFu5393ANIuVC01NhXqNBcfWg=;
	h=To:Subject:From:Message-Id:Date; b=eOXOOCKXIjBHYKvFw7wlLinPk/pErChxCuEF8gGbdyhCMadDA99C3hDveX/j1EVEiMprr3kAA7a0jFQJRRpC4SMyNFr5TfxQtd5AzXvAXT3xkGIijAqMibPk3VCE5cWI5pkn9cBSytFpmzsW/H8ZVD73p+JT7GhHKLNuRbtSiow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFmc+fk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFmc+fk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0337C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784377713;
	bh=G+d4DCxFRRf8bT2yuitFu5393ANIuVC01NhXqNBcfWg=;
	h=To:Subject:From:Date:From;
	b=HFmc+fk5bxy/xBzFE+8dPQv3RB8dyiL89ukP9Nklr915KJpd28Stcg7OUj5uqeLf8
	 BkK+87tG14lvaPHSOroZm6291AAx0+yhvjiK2TneQUBaMT7eFD/FraUWjilqwnDG2r
	 gaGYx3PhIHvgoQpnBkqsM4gPv+e5Y8o7IezwRnsG8FERv9xGVXIILLExr+6ox9Jutc
	 g94hOkTz/6VTnTQnKLOdPr9lunHKUAxjPvNfwxeVmBd9krLu3c64HhdYUHBUQvxREd
	 i6t1wA9sKZtZfEYjn94RDHqR//zPFInhDKFRDnQ8R5d0XpP6dTT64vEDW580ndsfTI
	 pNCftoxtGZLFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFFEC4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178437771368.4793.3560864339797949637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72566fb2ba7526f62a17c19a350e056dd5aa0e4d013c62887e58e425b5e1ed80
Date: Sat, 18 Jul 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784377713
