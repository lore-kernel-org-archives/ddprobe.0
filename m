Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EBA4122C
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 19:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714849343; cv=none; b=qbzykVr8Wka0/4XAbvKzMc4VqzT3/AbEg26Y409SEkjOEKiMDdfiT7HgtGOvOHJkiwYmU/tkBL8r8x2+abxIT5fhIv/O0wqTN5504n+ukA0UVHLb2u3i3Nk6ieuidLRZNtSs1lWXn6InzZASO6SM0Fmb7LZVlW0ccOa3c5eYrco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714849343; c=relaxed/simple;
	bh=q6VTFeecPbWRziQTL7DIXkt3qN+N0ShrvhCkc37kQX8=;
	h=To:Subject:From:Message-Id:Date; b=F0bYrgOtUjkODrr539SiSwr9o6r4F4+rdHcVk9Njk8Bg2C4fjt5ny8Lq/ZB3lOSf6yLvr8iN2PAyTKarUXPYNtfn+jYcR6MzuQMryLZ026XmNNO7CSuZFsrN5jvWRE7Wmo4mtPlLgnawXZZNfsCiKNwBX32sQcbZECgJ7hu30Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBYB5Ime; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBYB5Ime"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE686C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 19:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714849342;
	bh=q6VTFeecPbWRziQTL7DIXkt3qN+N0ShrvhCkc37kQX8=;
	h=To:Subject:From:Date:From;
	b=RBYB5ImeFFvnoSTt406lxmlsKthGni85/pUPr9rqGf9GtxvGFm8TQ05Y3mGypTlTF
	 vKTRt6opdJkRzwSTpGyIwV0r8oMyX8yJnZ/2xYtk1PqkuMnski+Vo0TcvayVUN7wpq
	 paVDtHM1erkVeckgwpDo2dxjOA3MQ/kIy2TdJO3esOucWBya5r03YT6l80/Oa/X6ug
	 xfRN/DQWny4DK+JSyYP3Uvw61oTujt9aHaPgkAhyXxHMKqJXEbjYZI9aCEvD1TWjl+
	 G0UeNDmLppz1VXlaTCB+sm7BtAaoE14YucBbI7+aS81RVHEiB/XARnuah7GRPGc9jK
	 Wl8E94x9Xg8xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C896DC10F1A
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 19:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171484934281.13392.266168696049143613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b4b26b0541dd635c8739c65cf866c644cc6b3557170c101a05366663a0740d
Date: Sat, 04 May 2024 19:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714849342
