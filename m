Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3644A44C652
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786464634; cv=none; b=oNreLCAxutep3H0+x8S6y/w+mD4YjLb/mVLitLNwCM66T0j9iw1n20Ja7D+0+ILsElVq1+QWKlfkNkwE5jyU0J0NysilXvY2UWRdkEBAezQ5/bXrZbPS44Jr0nhRwEXu+gYYNuy6cu8gt31Zx3M+ZG8gl1RjDLnx1Hr1NvtLG8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786464634; c=relaxed/simple;
	bh=2SMPazD+4EM+QnLOIKIH77eaT4unvf+d6xTCvAfkjCw=;
	h=To:Subject:From:Message-Id:Date; b=mUXobn/GmcnMA1bLtuP2HNrMBZmep/CQq1vM+o1SQ8Vi272nlHbLxCSjcJ6uBVfi93OUnJ+3I6nR1XoxNS2eweH1gky2CHvvmTM7EM2t09TsVhyg9F1opqfErMQF5zYzlN1pu4QK5hBmvlkVU62ZbiFwzJhk8S2n9bxfXS+UVKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWjy6bun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWjy6bun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21F3C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786464633;
	bh=2SMPazD+4EM+QnLOIKIH77eaT4unvf+d6xTCvAfkjCw=;
	h=To:Subject:From:Date:From;
	b=uWjy6bunEVAfDcmHSV0I042IiS58q4qlJv/k+Bg1IwmkNr9KeBYwr43t87osi2AaW
	 0OpnkCLoeXPsABiCULJ3gw+UeNg6gbrNmExMYMGqyVDjA1vPwLuusOcR9ffgJyUzDx
	 kn5RzymYRTdmzcNGA6sqVAJm3rbkwadrULVU1VtcN6l0/zKbGAvBiyy1D4xCxjZvtb
	 9DxjkomcoMuyvTlb8bCc9oeTGA47OTOYnjVvQJxXwsOuw1sJGbDbM9GX6gAw4nohgC
	 JEKKX55CWRtOrxAVbZ1PSLZ/LEOEekdOg7UWM3Y7Tj3d/du2VieAM7GeZMeEEyjp9x
	 ZnZXyEZnwTaoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB2FC5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178646463369.27318.16427025059419920033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b85950c3b270dc557446f295fb8049e1e7bc7e1708ab0a28dbfa49f5da4d9c
Date: Tue, 11 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786464633
