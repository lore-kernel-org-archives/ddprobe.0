Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E034A1E
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761499194; cv=none; b=B5jtEoDtH17XLC32XY1hvpXsHYlQJsFUDj78p6s0uE7G3In+MM8BEb/Px0COp0T6/g2YoXD4p8YGrQiuKX5vSZrdJanboZXO0K/XRa9DayFttk7EGCSU3ToCQRJeLx0jNQoZINNLntyGEL0j0gItQ4HviBth1KDFSa+1QNNngb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761499194; c=relaxed/simple;
	bh=3l5GUc4h89WCEPl0qAVCk5JfPZtHubvigucirkooulY=;
	h=To:Subject:From:Message-Id:Date; b=Xn+EEvI+U7gX6CmlMo2enJn8jeK6BhsjeqUPE1B6j41PZTsfeZRWMHkNJ6PGmnIULVMhumTgRB69WIpYtGDuHz88V1QmWHYI0Kt3LyNeL5YPbtRm0Daq6K7QuRqMs84pnZxe+rPViNBVk4eWguzHcBd3dBaor/mG4kLbHZNiWy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADWPfByI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADWPfByI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9CCC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761499193;
	bh=3l5GUc4h89WCEPl0qAVCk5JfPZtHubvigucirkooulY=;
	h=To:Subject:From:Date:From;
	b=ADWPfByIh1cEclj5ygKnlQYkmtIHxhxMeDmmvDuziDpiheNtV4Zz0W6qCM2HtUkIN
	 BsWwzO+My3SulfzmJmVHt9xcoNaO8D12F82AyjcXGjsEHl4WYt05jTFgPL2Bnmt0Wo
	 vCeuJnutUTEubazHK57bc2OTgbkQpQg2L3oJTpmXEMN39cxp2WRMcLuv/AoW5MgR4Q
	 7V+Bl1SX3GYqzutnUsjTPxa4ZVn6mx+ugQXosqJY9jbuHiYJtN1kCnPyc7SFC92aZy
	 oSI008+yymHj6yyYn1X1BfG6z7wnYNYXNAzKj1+Y8rxoDzxgUrhDGnpLeX9j1pMAF1
	 1bVGQWroS7wkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B125CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176149919362.24196.7499907650584861147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74fe464057ec545213e231fa3f5d6001f981a83fa9575982eb257071d345c882
Date: Sun, 26 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761499193
