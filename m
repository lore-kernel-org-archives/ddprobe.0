Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9C5158524
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743610194; cv=none; b=VX67VvSjSTdDPpPh9u2IP7DY+H7zw4iiUJ/kDyg6SPSIO3uHDSoHf1blOH6cGPUElC7VoyDEEuOqSXf79msoDwBk3jE8Qgv5dP73kxG/LtqRqMv0OMeu0RDZTz7LiTBGlc8zxutJ1G7iQzPYpz+FLNK4JFA9bM6oTUCL/09Wkc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743610194; c=relaxed/simple;
	bh=I41Y1ShSf0QOXNLCSC+zBSYg8FAH0FXHVFIm+oOnWPE=;
	h=To:Subject:From:Message-Id:Date; b=VqiFNPj0jYzcEreMftUFUnXxIm1D+cAtru+oDlw3uQ3tyVJnFtqpaymvsX6C0p6lpHHBt6QaTe3TdPksefj90x/j60b29qIjDCH1xwf5IDXOCx13c6ij7jQerh+o7I8oMWfMFlB+CUV31+H1qtzATlyA0BBTQIBOmlxSkufDxds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQlaSTeo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQlaSTeo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0E0C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743610193;
	bh=I41Y1ShSf0QOXNLCSC+zBSYg8FAH0FXHVFIm+oOnWPE=;
	h=To:Subject:From:Date:From;
	b=mQlaSTeo9LThGEVLz6CM8KaOzgOKEA6L9U2hLP7PuegHWPKqupNujP8zq/WtUES/s
	 g6eac7CtokSWR5j62MOgpyHMAdyn/b2pM36riiiqjnHMSJ5CwkI7KPa8EHNgvVqhqP
	 npT7lbZPPf42gwAkTQVNvimw95lW5YTwb7CfpsJeZF9FbN/yT/phzZGkO4TvI+4hkk
	 uje/zVTHY4HtRcSiPvCUGRg5f7oByZFgvDglsdLGNmxKHQTTtpHwOzITrxdLsLtqcl
	 jixy03ZvcDqguICXJD7EVIslHwaI0RKDKJLJGhZiKSvRpPA1tQ2s3l/4pKtv4Tw7k3
	 s3Yg98L5pQ8zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F59EC28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174361019358.17300.18072687874718858242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad8591dd462bc75c49928ac7344cf45dbf92bdcb75878206bab59bc50455a4a
Date: Wed, 02 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743610193
