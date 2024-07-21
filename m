Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9BC322E
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721597754; cv=none; b=ICqAu21OEEvnRph3OertsMd2wbHzHYKo0JiZofXzPqo0koxtNgqv+Age8/P7NC2nVBj7gWwFULKXPC89pqqLOPsZjo1EtijL9mf9WBSUdCe8+EAtq+/0zH1B8ZarCGwkPpDvpUO2d24QPco5/AX8BIX4TI+TkKby49h3sWAnsyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721597754; c=relaxed/simple;
	bh=p1WYHHYeoEvPQX46Up/j0EhWGijHfl1fL81TjuuVuBY=;
	h=To:Subject:From:Message-Id:Date; b=P8+BwKpzeRVODTzZ9rgyfItsKt48AeihBwmxkuQxqP4r15FnWiVNSzPI0g7HCehxIG2UgAmmB6RqSCKLk0IDcDAE4Ny9vebrVAcQxVXSPSIyJvH/584L7sZaoKAXT3jTz8kudaYuhH1GsdIpcuTPteZUZTKnK+mUbZXQceCHb5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HL3Us731; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HL3Us731"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB66C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721597753;
	bh=p1WYHHYeoEvPQX46Up/j0EhWGijHfl1fL81TjuuVuBY=;
	h=To:Subject:From:Date:From;
	b=HL3Us731RsJxIynfM3gadGwU+vESENFz88Qv4TqSrx0MwD/ITCeYHn1r1J0YMN+dp
	 Gl0Eg4RZmRv5a1Tf/QWvfklL7PF/79GihaC0FzDZ9n8Vi+xTWCpHF4EahiQbhxRwHN
	 EWqnF4AZkERaOiqQpOl5NhWNkC0NFqQJKblouz0bIW/XOY/buZMBiVOCmRE1vzUltY
	 Np2AtcJm8OPjuchtGJ6naLy9wI9cWJ9qpfT2hscpd066fBCvz2zUKhzG/NUtAB0wkm
	 Vo1xtnRbklFsSlrLoYURTpu3ppbf1W2VXIJe1WLlj4UIuFx7FGjKhO94JreUyt7PoG
	 UrUKRhUhz0eFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96876C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172159775358.29372.14707847874774076901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 636d1a52e583560a1d1fafca1f71070b22d4d901641c897e2b2a06e5258f968f
Date: Sun, 21 Jul 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721597753
