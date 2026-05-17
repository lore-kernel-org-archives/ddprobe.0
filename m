Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D3C2857CC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 16:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779033634; cv=none; b=sNPIdZRRrRoGHtYHgMxIvQ2QEeRXE5jBpSjVw2E3UApNggg7d0vhy7Kv0jmThco7E1kDt6ehyrR4JODRA9v+yyysMTJh0b90aOAAyi6Ca/NWO7NrL9oCQ3KJDT9pabyF9icj/kwZBvqeXPTkjARqG4lzm7XHUobIv6FUa+78W0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779033634; c=relaxed/simple;
	bh=sB7I13kL25tvBvqSU7JPlDon80zeqYowDJ/VF6Swvyw=;
	h=To:Subject:From:Message-Id:Date; b=mjbe9jhEr2F+h0t6tHHHIwH6EPOO2nr11Kio0AQmZJzNzEMB7TfI/tcVnrUzVYlEcYMpZRPtgBPaNdT082QuZ9dwy66FXFyeQTmFp5NX4VnzYSJE/10h/EjNDCl8i2ctBtsU41yU3Z97RkYKnV+Q5NddscmjdlOZTsOc6RqzLaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgDYcFZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgDYcFZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD54C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779033633;
	bh=sB7I13kL25tvBvqSU7JPlDon80zeqYowDJ/VF6Swvyw=;
	h=To:Subject:From:Date:From;
	b=sgDYcFZZEFVj4jvPJJCjFniGgI/drBBffKnhal87uQbROeFTxoSnAr/iXuhAQ5sGi
	 tVD2gUtRRK8Yv8LdokOzTNtKDlXQup8Wq1SKV5c33BKyrkAbOCHBPVGEcCn7q1LUIB
	 7fepc6EmKjxmAgfiYhE+BveE1cDVIjsxrnEugsXJfQD4H+QViP0kZRqryfdikd3IMs
	 tOTDH/lV0bkWKRtnmQ8x3LlbJnbWIsxB+vFB5jcHj4+wbgoNxe4KcI5xkDRUjRt/ja
	 EPz7tCtoqd8bVkjExWqsp/HwTPkvnREwr1sHUnoqrOsWpTOmh1a5+S+IEUt1cgmzud
	 VU6SnirYl1z4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDE7CD4F47
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177903363369.16965.18058042411865032066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a9b6ab2f8f3fbecf825bed150bacc22ad457cfd09f31a444ed54fbe6617360b
Date: Sun, 17 May 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779033633
