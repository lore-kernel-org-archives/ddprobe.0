Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3165C1EF01
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721987154; cv=none; b=euuDeQnCCPLJdzxXKufahLCE4owUeZESfAMoJg/B69+NYJXLcQLm+oIYmBFv6vt0Xe6a+d5QpZanhCioXkxux+iuHZWyEASQsIuJtRgftAPZScMlqSv0gT+8uJQaVg0mMK1/tg2aAp3Qj9xjDjYW17P0SSkuxOshJUygShhFCKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721987154; c=relaxed/simple;
	bh=clZbjxGOcIhY+Ini/QNBzF2iL9VBurXkimIhqPxKF/o=;
	h=To:Subject:From:Message-Id:Date; b=U59AV26jGNRzM0dwtGAbdufSn835rM96632gskfntBeCx7iNudMFnn78nPYNOejHVD9HheG5Y6I/WZTxlCT+il2+EocnYoGTtBvspaDLjCTov+DWxd/BPXKwHF/vkCh3qeRT42ywz9aVyvW3bHsBeT0KuPYMwiQmsEycZMmlgNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqspkKuB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqspkKuB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DC9C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721987153;
	bh=clZbjxGOcIhY+Ini/QNBzF2iL9VBurXkimIhqPxKF/o=;
	h=To:Subject:From:Date:From;
	b=NqspkKuB6mRrfjrBKYKfpEC5PK56Op3aH7s04vdEc9E5a8tNVbtCO5hyi5L+Bs29i
	 aaGr6EXYVMCjcvCVIWWNxyUrz6J54S3ShCQtV9xyUBL3+Ip+rGcDyvWx6pYwriXk9c
	 law4WmcKNqGwjymEX+0zPfoab3A7Hz9p/Att7/FRGx2ZWsL1UQkyI0Y2oe2pbT4eKE
	 Xr14iuTPiMD0No8Shgss+KTT6dL8ztz7ddnHov/+BaCJ/zX9GFRJ4vdk5VymYgnMV+
	 oScWeXRmovwq1hrntBtURi2vemrVXQhxrQEPqntY2h9PkHWcQP/en/r6+x5JVqOjM5
	 fdb6eMP5vPvsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A03C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172198715360.6158.12311947415732999615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb1ff1d4cfc28c2aa67c4915edab2a3c7bfe22bdde3d53c0aeef485061309089
Date: Fri, 26 Jul 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721987153
