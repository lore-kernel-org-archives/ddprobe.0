Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4190CC2C9
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748173194; cv=none; b=C1pF+adXfp43t3W4P09GH3b+GSQUQtHVNOx1hOr9DL2vKOPnXsyFJUrbELevsOY9Evf7bI3tN3inW/0eUkKJryqejRZetoYYRccfBMi1Ut5OKXMyTbYsUenQxGeyCtg4BgZnoNHH6I1KFic87uDbSIkN14h2X2Gr2oIVWgVBhnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748173194; c=relaxed/simple;
	bh=ssigN/QBegCKcrkM4ta0umWXuyByRLV/knFl8PUuO9c=;
	h=To:Subject:From:Message-Id:Date; b=PTF8CsEhMKf8aNyoK/fNVHiOOhLQkPlUGeRlTILKWKprrJ1j0ez9VQy0BBBs2sWFgEeLK1VJnc5GUmVi/BtTCqh0PJ4+PZ+b5nHsgUzJvKe7fvPmtEcsyq5GwxDLd4uPqC6XTL16yaYyZxsMFRtZ9z6BePHk1CyoBRrcwFUYQvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2wx5SUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2wx5SUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA209C4CEEE
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748173193;
	bh=ssigN/QBegCKcrkM4ta0umWXuyByRLV/knFl8PUuO9c=;
	h=To:Subject:From:Date:From;
	b=t2wx5SUG3WEERmt3zhdlPuDg88epYLWxtsur41mpNYqKMCbgI9ePdXL9dzUvjlYbj
	 11WwIc1OP1lGlzLuqpaezZP38vvnf5MY5GywYvoYjwVxXNG0borkjiERfdsO7cVrTT
	 z3iaNYXsQdkuT+MSV6u+pWNYZrwGHyldtIFklLAdf7Ya3UMzzUfR2yW9qF+ZzXQWvk
	 FvdHvyalVUq3sgAzr6f+aqX61sncY0EPag8UwgfwG1FaN/zAsFSETJ6I5cn1uHp18M
	 Br2jYsSbtoTUdaHVgoxXM7q317saaytC79n9ATHuZ1xzDm+IQQ/2i2pCCbjwMBuiqR
	 ayJrw9SFKffbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C99C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174817319358.7702.1177262176794013987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6807ccd39a22a7757595e5ce3c8dbab0eebebd3536f9332e09d3da6ed9d38ee6
Date: Sun, 25 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748173193
