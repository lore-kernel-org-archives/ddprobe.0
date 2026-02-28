Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244572EA754
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772286894; cv=none; b=dgv7hM3xlXVpgdv7cGRv36dgPKultd2lRYSn0neA89ORNmSN0MM1Bn0bV7RDqmnq58M4SR4Sj/BhnwcIv+meoOwnxWFApvdG+xPaqxu1Ma9A/KX740XDi3eFcXPGCfvxYstH92scbqtgKAP+LGOBGBVAq2aJlt77eprRI3ARE8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772286894; c=relaxed/simple;
	bh=bO/pwLut3nwPj7yCJRhZ2O1NirDfiJDGdQH8bBsocNU=;
	h=To:Subject:From:Message-Id:Date; b=rkJiZwGzgIbmkmkrnCLV+3lBk1KLk4WVPuGOdGyZ4I1I5HPre8oEXSncOX9PmnZ/1ZHOJX9ZesiwglOk50tgYZs9NGs5PcLKmAITusYI86wosB/jyJGrZoy90NfIYxBOtYMa/wNdmI8jjQ8JezRoaA0UIyysYKR+oskV195NF9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrfGmDQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrfGmDQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5913C19421
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772286893;
	bh=bO/pwLut3nwPj7yCJRhZ2O1NirDfiJDGdQH8bBsocNU=;
	h=To:Subject:From:Date:From;
	b=rrfGmDQSS2FkFte/xACD76GrgZMiRPwnxOb0hDONXt5hccAE45on4LS7z3627K1v0
	 AJL7UyHMGJ95+3lLALbNrIKePHVDqbGyOtXHSnnrbpf0v15c5tRm68ouEiAUKgQ1Rw
	 rh7zDvhMnTXsO1AJpKDXWWe9iVD8uYj2KsD4VgNWna6WMrjbnQJFjM3Qzo6Hj9G4f6
	 y2liKftF42uXHzqZrlC41ex5AOWBJgMgEHEA7xfpWRau+r22a6ABAsYyuBwNOf2pjE
	 73CNy0RUCyZqIKpzE7gVPCeKw8qKm2ubc2oT+pxnndRLkWsFza1if21HDl+SL2LuzJ
	 Zf1i6zPZH77mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909EDFEE4C9
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177228689358.19773.6088139108880739728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 510a000a46d2ab3426ef05967dda1a223615e5b3e64c7ef57dc8a47c26e2b302
Date: Sat, 28 Feb 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772286893
