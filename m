Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1A978F4F
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766273634; cv=none; b=decMsmFSOosFAzlUqgHsX1Lj02K8zyPrukmw2nDFvslg+YVETa1jOvCJjC1Oh9Ie1oPjVA/64yFeGSw/3OSVDzzRqSpFkJpr4R6efck+CAPjJIZEqTsaOnoQy1s/yS8HsISmLHt7vbmCNktK7eZ55jxcJP+8+LNpTxGkNbX9zQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766273634; c=relaxed/simple;
	bh=/559jp/N4BmjfYynezIwZXAMqe1xuDlsVmeE3vE1enc=;
	h=To:Subject:From:Message-Id:Date; b=UmBQwPUlcb6yHwGmtbWleZfO8tnf+CgbReuWc5rG6ozbLYLiEC1sHBfb89kP9Pbf8XF67xZ7bwRMN93mUZFqTPQ3sOCITZ45FYQCCkj1c6F9sIYs1g2U+E7ysmOw8ekGTOuhrvvW+MVi0tE+7hNN91bgk10FV8iHiNgXsurNOzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXBpbUMK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXBpbUMK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61E0C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766273633;
	bh=/559jp/N4BmjfYynezIwZXAMqe1xuDlsVmeE3vE1enc=;
	h=To:Subject:From:Date:From;
	b=mXBpbUMKu60gJIVHAeiQ9eSeYHwbmREjFMdnrsKlZgq+U8U9RjFNpqDFNu6O5h+s4
	 3KcsbA11rc6YZ0GO+l8fIudtq7PyJEEhyyhINbxtlsr8oYikktM62nrlrFyZ9B/oYn
	 z1waP7GYfz1UAtrzORanrnjbpQ4nsm0rV5uPRmGTFQrNh8Y20JPtLjpXUimWk6EmAd
	 7QQ3KCt0dcXUitzQwwkiWgjX7OY2QOzGRgyTHxDKVBTkIQWvm/VSZS6PEhSMmCVudq
	 Uwhd54z+xXHj8NUaDnR7desd5oVlQZbfiAXsXkYnWtXaoucGi5ng4Qxa1Z8OP7bxTx
	 v4UkLAfvBeSaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93046E67487
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176627363358.25664.5607043940578226318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2bcf094864d8fa698c95483b75578936d3fa39f555621902d9b92557fc2c6c
Date: Sat, 20 Dec 2025 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766273633
