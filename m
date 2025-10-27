Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B831C6A3
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761553194; cv=none; b=PnuQAq1ES2pjEHYIb4ojBEO+VlgjZTHquOrtfHk1MQv0pPZtm21CwBsMkoSxV57N4CEISsrZT7/MogpyuHx0JsxX08JKft798iZIUKlX0zv0sWyY2c4stsMFlzU6Tp5S38jTMsi57SBjomZe5PRm2AcSA+fZWyqKR6+htdpNE6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761553194; c=relaxed/simple;
	bh=t4AeA60fNmHQG6UIvBieydEX0i/WFfyEC+QjeYuM0H0=;
	h=To:Subject:From:Message-Id:Date; b=BolwdDM8SI87pB1VyJHPyzrH1Sen4bUD4gZSZbfNJYJjfLZgW69FmWxZ71gKG6qUZy2SSY2TzH7NiAzk+klDcmja1GROo8HzqX4a1Ow4bfFKOuHV71ON9PzNL3X30GyKEPKxCiRiZ7Qz+4Jnd/1NFOvJbnBLXl9u+QnF1A8VbNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIY1/mXj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIY1/mXj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E19C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761553193;
	bh=t4AeA60fNmHQG6UIvBieydEX0i/WFfyEC+QjeYuM0H0=;
	h=To:Subject:From:Date:From;
	b=tIY1/mXjJPsMDFlHmcOe3LTSVV+JJHo3ZIsYFtzTCadIOFGce+C2EWT8tEzdFASWD
	 0IlKXP7G2upsyl8RKybAKcQ5/VR4s3g4zjgesxfx4kGJ6jDNIi6dgN1ab93dOKy1+z
	 LrIrwPV3rQtU12T5/ONEV5hjI9OK/NXRkrdiUz998lv0YoddI3rEEYfrmRt0nUzGKf
	 xzJk+VYSAodwvILsf6vASofkwJNUlwcFMGKPBinAH5wi5hPcqBHbWYEGzUpQFW7MvH
	 SjwofzwEcYJjNPicHJSzaZOmP238VPmEdjYENqufeiQTajftzVpE/30qYiv72cFBGs
	 LeGVbHcO6bBXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910E0CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176155319358.14235.2375743794626390345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0982df1f1387393b304590cae60e3696f906f9aef8f92182d02a5faa0da4452
Date: Mon, 27 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761553193
