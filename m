Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D0128C869
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758061195; cv=none; b=j/hI+Ne//HnnH41wZ3aHmzAjsH90zDJT3bo23xp1yV/EswrijrMojPrz45eEktcHtPgPA4quN1Bu3DSC0ExpV7XPNFr1hJ+Nh8EOFfHeZhRaa9jAmd9CPdhYsTdODYPnAHTGUC94OhZXyocMwemF3bytWb77Z8zERlYqQSwSctM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758061195; c=relaxed/simple;
	bh=leF7HZeW06G7QldQDsI6tJFQypmjSB7qrGgtiFbyOnk=;
	h=To:Subject:From:Message-Id:Date; b=ixH55/hHakOm1TeRQppIDr0NCFOk2Z1ry7SHxKf0DQ4ERUqhnb0IUT8cA9a5zyj1KshDveQ0JzbZk+gdems7W+ceoMn87VAr5Ui6WzV/v7TcwlN/kTm7cJMeBx14ADhX/I4jCB8/px3dT2UMjLr2F9Pv8r+Xv2HkLCfv0tTXeTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqHnuvja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqHnuvja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDF2C4CEF9
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758061193;
	bh=leF7HZeW06G7QldQDsI6tJFQypmjSB7qrGgtiFbyOnk=;
	h=To:Subject:From:Date:From;
	b=fqHnuvjaNUZoNmAg3pChSz02aNPkD1UIB5ttPK5kmXcF0YRCwyjL0/7VD7aeAcXXs
	 wSeJEYQelUatCHn8GwyyjCQ8pcCCHP/g113ePPdtW8CKiC+y2+oA7wDgqevhBbfL11
	 eVR/01HbtIaTgEcHDOwinlXRXa6T5cYGccbV4qY0wPiXaXfzc8AiArz1TbaUS4OatM
	 wlEV+zu1zd1uYh+3Z63qG/fJdw2U+MF3jqZRdgJx8+bUbrwg1pknYkbDFF+mV7C5jW
	 svRbKA7z156sttZoJ9vCaBG2FWA9lg+N/gMnM/SbUu1phx7InXE84Hq8QqGH8bSESl
	 fRxMEi7v7cB3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90769CAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175806119358.29848.14985716588319093090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58488243744cfdb81e9af198ad6166be79c82ad4c0c48043818419d96a2e0f56
Date: Tue, 16 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758061193
