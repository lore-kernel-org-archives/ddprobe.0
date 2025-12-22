Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8123242C8
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766373234; cv=none; b=eLyKNgPLPQlEHPhL1/sPV/A3Vb48I68DP4T1kna+MCCXS0MFFqJGpsSWDlIGX/s66xdEWVEMH8tYZ/dbHHJKnRXCu2cR9mAGdJtNBy2AS+vHFqWR8vo7AcyihGzyDTfn0HV4V5uMwIvcr+0Sysa54lAlkbd/RImGOy9fnXcBAms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766373234; c=relaxed/simple;
	bh=uKpaPfyoqg4r8het/31Qj1Lft1UULCb2MkYTz9b2vw8=;
	h=To:Subject:From:Message-Id:Date; b=u6XP6j4riR+BbFyQJjxvlai0pOg1eOr/+RzHAgrx5D7YZDtoclxYObcec1X/j9wh4laNlMN+6fvO5wFbTuMD9N+QWNcbr/V9woscqxQlk3EWEV78C2ljdS5eIRqhgI6kJpRaAjLJ0hvu6shhMQwZGDs1UJqf+CGVEvGuiTlPbqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bS87CSya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bS87CSya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E50C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766373233;
	bh=uKpaPfyoqg4r8het/31Qj1Lft1UULCb2MkYTz9b2vw8=;
	h=To:Subject:From:Date:From;
	b=bS87CSyauFluMz/W6jWK6D3iYFzTKivPO6I9bWs/JfJDuYLgS7kgpLIOJA4oY5Th+
	 Dkuxmm+phP0fuIp6zcmTxST3ID/ryLN9jPH9cMIYDV7hds5Y7RIUS+9MYd2udP1Rys
	 T3IwTKkjxxNteKYHBmVBywgiQt3tkNlgYd2ub+gJ3/kWr7va+a3mGYS6FF/EzMO3og
	 SdabXjLBWhqBICmGywnVwvS7lMDPHLvAT3jZWenYGOde4ibNYSoFOHwqaf0E9obSxX
	 GT3yFETpTMB/JjVhoVZJ+SPppx7G84/RYh3l5MyUqH+ConBT+p8ka2nPQlTRs6wioF
	 BXp1zNWL7cV/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB11D68BD5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176637323358.9535.457454432139481455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f122f279e6bb39f15a36a1dc65d417f0b2009a6ddae326f4a2a085dcf9bb08
Date: Mon, 22 Dec 2025 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766373233
