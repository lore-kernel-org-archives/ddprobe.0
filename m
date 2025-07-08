Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7301F949
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751935193; cv=none; b=OXSsONV+6pe/ITNTcttiXmTvyFjmXKAVxs+npm0AhVR/pqJSI7/c3iJSAfpxlvg0dyTKwX6ffXvK/2fzQdIBaKT8rSN8WYgvOw92f8cCMnvQ5woptx6gPiQQyq04yWIE/uAq4/wLFUlqBtopPl9lKe0QfuAk994Efuu91M+zkNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751935193; c=relaxed/simple;
	bh=HuYvQ5GZv8XTSpsm40fRXu69RuSyCWg1FLoZiTzsuWc=;
	h=To:Subject:From:Message-Id:Date; b=gqE4zOHuxLB4VXc680HB9c+TqIjQQUO4fifluEuNEAmlDDIxiP/PruVD2iZBxwXe6G3q/mwdaN2DxgVP22b+Atk1ef1pJelz5bKOnvjFsfe7n54XvuQixerEwdFNxYnk/QfPft+RNSfNLJA50mwEshx0Pt3WJubJ0fAA+VfvWaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqbGw1LD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqbGw1LD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDB1C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751935193;
	bh=HuYvQ5GZv8XTSpsm40fRXu69RuSyCWg1FLoZiTzsuWc=;
	h=To:Subject:From:Date:From;
	b=GqbGw1LDdvL10ZUZhzFoo1mdRd9SERJ+YlftI0OvO7xR3h4oReG1kcOlrRxlK98RS
	 7wf96F8KGGJM7Ed3MbrgTweRNLtYyNWYHr1048afaGROpcBSLAVQnAP92J4l2iHOgo
	 k2jImBl8JPmnZPoGaDXQ5ZagU0XizQ2GN4bLDocMlCgS6p33jj/dYdj9YNo7i1dPDA
	 2InnP13yt6JjB7c8tTutDME5uMu1rZlnE7Jm93iTjlltnW9vnlXtG16GRDGeHDHfIQ
	 M8Ii5wz+HFNS3rm3q917EvfZMPxUUrZ59uQD7rHl5AAzEVHjqovviRhT5sqxS/i06T
	 A3oLl1Hwdu6BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FAEC83030
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175193519357.1017.2276906735438469450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f48b570b15d852b713101a7a7573668b45cdd4da987d56b8745edc61d6a1df72
Date: Tue, 08 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751935193
