Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3684913A258
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 04:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780977874; cv=none; b=pRiYzRIcQ+sf1Lmi2VmW1uhEYFv/VtDlfeL7hdAVW4+zhvDVc0NcONidFsWR0hEsyb9CioQmNdROyWy5qZeYaGrV8DXAsEvHpBPXiI+EwxC3qrMY04H+iV6qBa0HxCwA/InqYtbOR8O9FgQquXWY9VsSrefpdmDW6Y755N/xAcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780977874; c=relaxed/simple;
	bh=dcx70Vly0tGBqst/Tovuped1F+brF/eoa25RGzL6hQY=;
	h=To:Subject:From:Message-Id:Date; b=DhaPHiVhX1AZr90hyGH2wv2auCCLwqDBWADgKz3zSCbqyZfDnMCXJwl3zas9B+wmupPnH4Arziq2js+kh/ZVzWfxtsw9wa1/ZBYhrq8PPb8BrC+D6DydNttRvYzwoPqSC4PjSgmgKAbxxuZ+Lyfvarm3SVNpv6pQ+S+WdYoh9BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBLjMEkv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBLjMEkv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C73F1C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 04:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780977873;
	bh=dcx70Vly0tGBqst/Tovuped1F+brF/eoa25RGzL6hQY=;
	h=To:Subject:From:Date:From;
	b=rBLjMEkv7FtYQ3kF4uMwx5I+UC+BXzYISsGeq5KGSlXRaaXRRxadv0EpCtDN7lp42
	 /DgtG89na/S3xCjPm0bNg54YcH4GZAj+U23QtgHw8r8m2i/VwHawaFmeSRRNvNJPup
	 8oGS5J4FTe+UTnkZbMe0c3ck1KVITN5p2qPMAzmYNpVXVZv3Ykjy9JBWbZCXQSX675
	 WC1CapWTljeApIKTmpt7MKZf5wygB1lzw8JBDiVt03VTocGbjxC89nXOjcp9/JVpSt
	 I8QCmPXSmGkpHceD6967VyX01a8h75isQ+5ZA8xKu4SVU0+vQK8mVa6AN7rA9e0Vwh
	 yalGiw8usk3uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7CCCD6E79
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 04:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178097787370.29404.5466228424031739592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdda468e78ed6a6dbf6c72fd668f8320c3a863a437ea80a2664b597e8ff676b0
Date: Tue, 09 Jun 2026 04:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780977873
