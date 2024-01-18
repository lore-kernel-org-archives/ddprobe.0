Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0660820F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705537097; cv=none; b=d2LDIjv9K4nFwKZALnpNIZFHy62mpluRfC27M5w34KOgi3Qgs4z2ha7lElLneZ2GiWdPJvSVMS+7lAlYWiCKrId34coEiDcm87P/2GmqZYg4F3ma74g7DsEy1FSn2Q0/F6FylKM4KX797RmeEI3GUDov0ju+yIUrijZWJLffEGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705537097; c=relaxed/simple;
	bh=QuUMjl5+hukhcGeNQpGn0FtZblJtJckFJCCQVDpNIas=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=QLJ5Zj/Q4hU7sC/hmCcKsyTFSNCoFS5n3nyLczu+3EOssfXYMiSATiP5+rVRZoE2/2YhjDyxhKOpzQq+7/V2Nhdt1SALWQvvCpdglDShznKHTkty4hHUpsADHzBdOyJ0nz9JuhAzhasZWfTMijTmvG4/v1HybKnx3el26tXFLb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZJo0ahn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZJo0ahn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 774F3C433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705537096;
	bh=QuUMjl5+hukhcGeNQpGn0FtZblJtJckFJCCQVDpNIas=;
	h=To:Subject:From:Date:From;
	b=GZJo0ahnWos+S1rDAsGE2CegzSd/x4ub8Rs8Mr/VZrCHGFJGV14rkeHmQlyK0Kgn6
	 A9a25bsIP8QYRNLJca5wHAXnrOA57sYx6Mk4S5cpj/v9RmJLU9hYkBfHFLkaUyLhWV
	 F5J87Uf3Ne327xy8S9TA3S/zyNFL41L/T5RiTRETKdZozTq9MQC+k2RG/bV6EvP8ZD
	 T4Xx6ze4/jhAYNtm5CQpJSsuvtjULh+uCLOY4mTCI2YNnUebOlmxugKpmDpfd9AAHV
	 5M3pDVKI3gewgvnxVQ2Jcm/OEDUBoLfNNt/HLyhlPEO1DH4lBVt91F6fWPDLmR7mXS
	 6nO32pIgWeY6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F138C4725D
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170553709638.7079.8411509618816362605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e191401f022c2efc6ff4e1b2d6c5cb3cdbc33eadd0ef58fd98e65967754e80f9
Date: Thu, 18 Jan 2024 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705537096
