Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A023D1702
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787139634; cv=none; b=Wn/bbXtdQK7TsBAHplW0ayIKrNEsSTRX3zZf7uNdNlpgRhAkTR2tpTt9qZugC9EU5yV2xPrrt9RNQCy2UxEjTRKF3IHxPlsj0pHeKswIbu3RbGyvs2xBwkMB4CVYdowDXmlJTv2FT/muMRWNQHVTIiJQ01sosWp/qxLeusG8DiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787139634; c=relaxed/simple;
	bh=9uP4w37CjXEUx6FYbC3eOK8NGqYgOY194ZwukIu7bhw=;
	h=To:Subject:From:Message-Id:Date; b=FIFloDZ5CeZMHnbeHfnkIlmztUfDNXEPmCUHQH5QGnEzn0oM+5PDoWfaU/YkTxVUBKeauLlN8jXEgeDLSFwEksco2G6I+uERNglMBWwngxd4lxEjEQtwilJ++45JQsLVIDjO8rLSR1z+yMokDVu0Dg7sD1/gqEyAMACcxK0XJes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxYwdrJN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxYwdrJN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB810C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787139633;
	bh=9uP4w37CjXEUx6FYbC3eOK8NGqYgOY194ZwukIu7bhw=;
	h=To:Subject:From:Date:From;
	b=CxYwdrJNJq7LGsuQuLgj3ItdawazpTlKJGkv9zwfIHONIx8Op2nM2/Nk17mrUho5M
	 awhNrNtAx5CgRCGHuHcuJDDJepWajVthxeVLeJgJFt8rWMFQwDprUCgPdvszLHv7fq
	 Dr1rHnnE11lS73+xM8udgpy7nRbh+ukadBSWv0tQvcvfGqbOnhKUhwGRnJRxNOMToc
	 HvC1//BVlL0N8LLKtVnUaKdkFdzH3nwnuY8B1phyf5CNIZv4UKXEhUIApt9P6I5lyw
	 caYEv9ClyTrYqZ9T4QvtyYoytQvLldmjfRtixtF2UI5AyiyMnXXreaCNWwotOloD0Y
	 kGj8JnKU+7AiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B42F6C5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178713963372.27521.6874947677919346953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edb287067d4eb7b7bfa65598ecd19f9f7584148e6c434a10e6ec78ea51edadc5
Date: Wed, 19 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787139633
