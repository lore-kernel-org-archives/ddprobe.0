Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F258381B01
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776964054; cv=none; b=jYHv99OoFcjyJHLlCYGlwYYZJ1nY7TDXBsm/7GgeKfFIycKvtnIz0d8zmT/CrYs6RhDP+HR2lZ4woZFSZRLGEAIVhki/QsmQhlK15q4Q+BIAkC2GIO7QJN3vsTQ6Kf5SdmVRjKZxkA258AMJCmoR9jN+reh20utubeKUe2/gNB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776964054; c=relaxed/simple;
	bh=cPERM6Uvscr6/kZ324GBLaGJOdcUruwaZx7pF0Yfkg4=;
	h=To:Subject:From:Message-Id:Date; b=YkQ/7dyE6gG8DiqLX4SoBk2BdVOvWy8OzDDEmuhoZr5p0Thjp6YHPKyZTchhAzRiK3xVaxeFBjm5EOiNce+XIGXbXFmYXkhjGXLzsShcxjKogX+jqdzzf+/NmF5sQSTLf6ptsYcqazg/Ckbz01sWf9yPpPbnfTSn82cZZ5r1P44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N693xbGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N693xbGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B94F0C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776964053;
	bh=cPERM6Uvscr6/kZ324GBLaGJOdcUruwaZx7pF0Yfkg4=;
	h=To:Subject:From:Date:From;
	b=N693xbGk2A17Mf71Tsqr8TOq8mIwtOl+jW666y5rewowyUHb1/I8qE7EmYVVHx/iw
	 j9FykhGswPotV8KlaeHhGP6/ME68RxI9bhnYonhfz4QfeAeQyEaOowbbgVGRB+PHXp
	 bBF+t9fMpaXESbaIvvnudmlt0oh/F+KUt3SYQC+6/oNgyuGWduYhDwtfxhTMac54lG
	 jX36QEiBXtg/MJXC1XqeAPaGImlkpZsUdoR2ftm50Qs1WCbJYVweUh3PrzPXJPp9KQ
	 /kqmpmsSp9BEStBkMzOq09ARRlmybBFzqlNCyBXX7rWqqCGoTdOTzni34J9d/QQxED
	 xscd7p3bcbuAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA53CFDEE27
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177696405368.27602.7961811894773887680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07f2ca216cc3d9ad08230af8281ca6e2812cd26e4edeb63d070a6c8b5db27e64
Date: Thu, 23 Apr 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776964053
