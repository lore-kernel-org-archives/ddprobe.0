Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C9D1E521A
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760461194; cv=none; b=gn8JpgU+3VB/uG9edbPzDaOiSTALmKsYae24CZx/oXvGDp+41b6ekJYcnXze2pWCTP2KaZxLSx57bOOtBBwQlDkMrhQhBmxic6pVv4HbCXO5OyF1qQWN1oWozhbd2M9MMFRMdie26zx2Dq/sd1i8A14lkB5Pk4ODGMDC1amFQp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760461194; c=relaxed/simple;
	bh=lgLEaoUhHxkdVuFek8IEbAYE4ltEKfWafDF8/9FcuRM=;
	h=To:Subject:From:Message-Id:Date; b=tKnDWCmYTFYk1VWiTVtQuZRbTEs9if+o1pLN0qjZQrHQg0oSpZNfCpbwl7lD2+6GB8/tIbr2OfYYITukz1YU59iY/vYIDVDPDMjNk8RAsJakZduu+gx0nyuAmyOAaYHIqrAd7Rl6xpFk3RpLBGA3E7N2iasmN/4MqJRjXFA7dYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tf5dbPLm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tf5dbPLm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E844C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760461193;
	bh=lgLEaoUhHxkdVuFek8IEbAYE4ltEKfWafDF8/9FcuRM=;
	h=To:Subject:From:Date:From;
	b=tf5dbPLmvQ/32/eGYV7AKJ3XOoSwuM3VTQg4eKGtlGGxVqaNTPpqA20tNEx37sauO
	 eH4HZ5hSfiXt7Wo+4oFCooBF1JzapVRiFkvVLecs3J+YBsrXVTpWKb3myqakKuWXft
	 jb1M/QVY5hoFyjYo60QXMGfa//4mKJoXsOkMs/iVFvGruZbb8VWn45YOBTBNkcKU3R
	 056/walXme+b/BswKLw60sj1YS45K3/DI/XWdBX7OQuk+wEdtyGwAKrO3PBJSiks71
	 t71Ea6mY6oV0sM5AhrbRQXtzKOxiF2htsgM77RjF80BNRONfeloDaHbmLAUnn8chVA
	 JyX/nUxYW8l5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1FECCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176046119357.11051.12644807384709162182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84853d0673d415ad177290b11650a3dc6783bb374bfb014c34ddbcc4f9911ed4
Date: Tue, 14 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760461193
