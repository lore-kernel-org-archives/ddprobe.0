Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE26F2472AA
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759527593; cv=none; b=Bi7sL0H+c3jApaV32JyQQr/9d+hWsFplowj28udz8sKYi4jtSDOM1Lgtw0U1MLtv6clH3HIS3n0qfCCdcsx9uFwwt3Y5tgmAKSN8onhYCoCnKNIVGAh1c226ix37EEINYjBIFdyfHyQiGNAtonyHvujGecxlYEnTT2F8DODa2i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759527593; c=relaxed/simple;
	bh=iS8RrRXUzv2TtcjRsrcExMBB27JyLSJ/WGssH4rgwQM=;
	h=To:Subject:From:Message-Id:Date; b=tHOOdt+4T/tK0DnYnTWI9I1M/9tBJvcgRRGT2v1WLF8zRRqNlzfmp6vTMrGaXXNIvuuqplsMCy6JpEpwlD7/HPu+pt47h+JUePBxt6gvWXU8Ve2d1KDvHS+0YlDc22q7FLpgK0KfVaXQArYxBwmv7cvJ2OT3tPkaEHDcwpkrddU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=om134IGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="om134IGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B78C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759527593;
	bh=iS8RrRXUzv2TtcjRsrcExMBB27JyLSJ/WGssH4rgwQM=;
	h=To:Subject:From:Date:From;
	b=om134IGobz6CxLKQZjE5atQOhqnNKhehS4Z8Z66fuQbVdKBNw20IhSqK2YQC2aXGQ
	 tDU5qJWXojtAoCPte8hf7Y2n4aW8Qxwqd13uIRkR63+4hiDw8GsUdkM6jbK9MDQeg9
	 hJrULvlyBYBHP37z9Q26NyEckfibp/bqMyVfta+QZfV/JuozEso3mD1IwKH7Py20NJ
	 9IiAUp7Ka8YAGDnXeGC1JqDkNefUWSqMN/EVd2euka1so/gG4E1rXoVXuXFzPBkRSD
	 JY6koEoo3jGbkkk6M2276dJO0Q6kqrlPpVcuI4ON1lFleVieX84HiwPIq+0HwSyMBM
	 pS3ZG28tx9R6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928A2CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175952759357.1960.4678151336306217795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e87c140af85e9ff725aa7236fa3e8793f098d5c79957a86463f92a118a213d0
Date: Fri, 03 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759527593
