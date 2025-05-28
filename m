Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C8422127E
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748464194; cv=none; b=CSby9MlCTeo/gytKLo1oJv9NDupScJ9btESjgoIvIL6QC0/RBfL6zEfYooGrxzgsQ5E8/vsKjnGJhshWScRSi426B2s3QgMLjTgfwcJGopeYqwwTK+HzUuOUOmvGozM0zuBTSh9rXmO3ZW6nJiTdkf9fuhCzQpkw+JcYty2v4A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748464194; c=relaxed/simple;
	bh=JCe4qnskeOdME4eKX/Tk62A+VAZkWuqaArq992Sq7ic=;
	h=To:Subject:From:Message-Id:Date; b=U0J3scor/7Qoguhvlkk2NSl8mk3JQswHLeONUBcHh+f2Ak7CnqTMwOoMwYQIVlM2LZgXU2qo35nt0VJBcVM1Oa0OTUQzoKPQ5r2Bqq/aTgE82N1BsJ7tU+z469Uny5hTkShwi29zCeXNTFmlOwRDhJfvGSoSX60LhbQaWoRRZwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qv+lZwtP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qv+lZwtP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A109BC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748464193;
	bh=JCe4qnskeOdME4eKX/Tk62A+VAZkWuqaArq992Sq7ic=;
	h=To:Subject:From:Date:From;
	b=Qv+lZwtPvnOLVEG/Q++CB8UiBuHugCDCAytwVc+3fLcPY0li9EUadYAyVIlQ9geI0
	 jkZkqhUcRS3AmwgVDS0W2EoMZ1LmY5AtsTpsqgII5zBzkscOtKdlX0qPfMEcp5chG1
	 ugdCTPIpcQD6XJDTEOtVwSngnzzaFSZNwMT4e0jFl2CDXoBG4UsjgcSvb0TAUZt395
	 3drKT2KBcBHR2AayY+OTT1KPxiDt2fSf8cD1WL2f7ahDiXlPAQhY07VYOYPSefPM2z
	 +ciU7VT4g4IkxjqAqSnFxspbOWTv05YsH/YFkhGDHB6mqYR48wiiF/6ei7WimtPiUR
	 OEOm90kOzEZIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F142C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174846419357.26835.14785336298224504495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db212dd5e75ffe2b0f2218a8b0d3aa2eed73d5f17debea6000787a0a1528174
Date: Wed, 28 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748464193
