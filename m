Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30C41EDA3C
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768159434; cv=none; b=GVaSBblzEaMY2HLfnpUTeEQe7ViHA7oY0r19kvNrqHi+uY2rxxGAklx/JthPXA2QpatCP7bpxFMNtJGNioIHNhvIvakB0JQoHdiLkx0fEfH45+4l401beu352ohuY2E+BnkQcgla4alxg7q3MqIwwLvXrtfcC/6GOarfnkNVARk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768159434; c=relaxed/simple;
	bh=mZvhs3NBHdfnezFqTufSsCu7ozO9clBX/PVQDPUc89A=;
	h=To:Subject:From:Message-Id:Date; b=aOvTct5UqTld2mXBYKnX62y1OGzK1BqK77K8tLd7on4dKFI6O6AJx+TXwDYUy8djICG2aQ7shp8OKD1FyGisKu0IoWSu9JeDz5Niq6FUFhLaBsdlUsYsOfiY+eEUNOQZ4+2LulkDCPcHMPrNIVW4mTPM+6gdO0FYctK3jWnVwWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qa5tX6Bb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qa5tX6Bb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C41C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768159433;
	bh=mZvhs3NBHdfnezFqTufSsCu7ozO9clBX/PVQDPUc89A=;
	h=To:Subject:From:Date:From;
	b=qa5tX6BbXiPFBtPozFCN8K4eJAuSctSCBSYMBt1q1Cz/b2tEbxA3ZDPGsEzJvhgsS
	 PV1mK+Vtop+NrETeLZ9cmhDSOJYxu0BbrvghmXoEfoc3GCo3G4RFHE0nAwu6mReDJz
	 AdOXWpq1BbZ+Gkl+9cPIN1o5OLTy6UxJQQ2JdJDzJcTqxpLFlwhuj/UKgUwTfMGJpg
	 bECJ/9xcA8TWpQLifxITvIZ+sG04kxphPQibBXJnOODqG/w77xzsVZKA0KIwtlw+n6
	 SHtevNsHOtXpKltFzdg/bAhEKN6mk9LI128LvW6TYrh/HJIQWUCT65t+BalApA0rhd
	 m8Td4Ow8dM8CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C05D2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176815943358.24678.9384188428604986449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f499c0852665a22650372d915d96f9a31bb2cf66ef51f6ac9cc3d72fffdf49b7
Date: Sun, 11 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768159433
