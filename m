Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2E9288505
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772153694; cv=none; b=fJUziZyL8KSjuXfv2mW/1LpCKg7altUv8j7krNMb0MKiImJxb1lNwGnGHV/bKC8VWZFlatpaODR2ayQTPGgRjlNvKLQ5BXF84hKmtE/1bFfuNTN6ir6Tt4eKUb0TmBgJ7LpRQd7QqtoScvUxrsIBKT6TTXrjhGBncH0XVARKgtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772153694; c=relaxed/simple;
	bh=jtV25rQHSz0AIr/QnXL6cnGae5PfmBaUW+psUKyz3Uk=;
	h=To:Subject:From:Message-Id:Date; b=KKLRogVLphPCrD1xH+8hQW/uxnpzA4DwYpGV9XPIc3Du87Ef74wvGWTkrLqMdLjJIqPl20r1Y+MMp3H/i56IG+QrYd/8TGx3tUOopTSqk63/rcuz0WTDivqXm6GkBhkY5jV8n2KWYJHwROJJKjLf3ochkc5C1nnUtK0w6ufF9B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qlpv4nYl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qlpv4nYl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6528C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772153693;
	bh=jtV25rQHSz0AIr/QnXL6cnGae5PfmBaUW+psUKyz3Uk=;
	h=To:Subject:From:Date:From;
	b=Qlpv4nYl0Gmm3yLbbdb3OvPXzw47pwYrn8XYZCd8tfS7XuLaUA1bFZ+z9aB7FjY6u
	 BlDgdWFRp2qst7dmXLgXE0NCdtAQp4JVMUDlqHTNwNpQRhhg3aRW07k06JSqqdnsYM
	 48XTAfHK0AQj/m6dufcbjd5neiPth/gVt9UY4E657Jf8UBH+dWufRmpa809yiHXin0
	 FXM1aymuTTJRCVReW42TAxxVa2ZGNvBjtA9bia/vy6YlhGVkcMXfwWsjbK3rrh5LPU
	 0d4jkIFVE78b7/L3qAN6SQ6nmV1MN/XzSVidsPXn3YcIR4BIOtHe6m4jusZOKugC6U
	 p+bAFkW4dJ0qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FAAFD9E2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177215369359.11873.2196925329869097380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1687dab8d80078a24fa8f10bc4eea20e6acfb6341b40d17a6c3290306cf6fb13
Date: Fri, 27 Feb 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772153693
