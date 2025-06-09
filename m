Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A561714B4
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749440994; cv=none; b=epbJsnhLSdgQwqda8YKtrKY56DY1n2G+WiB6R9lWb7Fv3BdORLlCtXdlGl9X/5ivhA32s4hmKYg6BHyrYmcJx1txE0vCPP0UK8Io0bpag3VzjI2H/3g2UcazWpzAAqyFrKLxae5sv1HS+hpEeZvK6FfCC/oOfx/eiQPBRoIyE5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749440994; c=relaxed/simple;
	bh=QebNw3Q+qzuzI01qaUjiFY5NF8AqdTy5S1Rl9HwNKko=;
	h=To:Subject:From:Message-Id:Date; b=tVIemx+xjbbKcx+ZDmdlPqRII/jLiYTCrXK9+G4gD3fB6QqXMiEe0ilPnJ/bv5Dx+murgjG/7Ve3kTktQg0l624frak2dcB/YQLPC004l7zwqUFmMs7YBSGUdau2v+Fid7IzEboxDkz9BiFjDv7pMDwUN4HP47j8hgoFS4oswKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4/7jorA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4/7jorA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73AEC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749440993;
	bh=QebNw3Q+qzuzI01qaUjiFY5NF8AqdTy5S1Rl9HwNKko=;
	h=To:Subject:From:Date:From;
	b=o4/7jorAnO3k+UFvCXPkzvZLJuukgZ1aP6ooxJ6MCKiCz2VcPw5tAUpq9LN1nyu0X
	 VGdL3uTvygaH0VhJyhAvQGkQW7BOlVBW1HnkbQx3OPI+0DnJ0PwW+Fz148LfipV28w
	 1aa1YQId2WrYILhfPRCKsACJQTyX7OH4OdRPj7807eEu8KOWR03VoJThzJrq7MHlOc
	 9eQYMRN2iqCnLdZI2bE+qy6H4P9P7MhabUSPU7Bm7WW8RFIRt5OfvdLFz9kJZoEsui
	 QALldPFGOPNIsoYDP4WhVa0uSyvf4zmCoNTzBUv2jN90rHRLQFBdDhSpfrkY/mPzJT
	 TRvE6NHhTcwlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9105BC5AD49
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174944099357.11717.12602513670559478469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5ae03c900322ef4e22112b2cf9da1e891b7dbfa0194d1b8bb10c40aa1d86f66
Date: Mon, 09 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749440993
