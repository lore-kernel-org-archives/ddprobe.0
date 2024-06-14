Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C75B14D29B
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 12:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718366903; cv=none; b=Woy1udP5/ErtH8LvlOTIhnmBnsnxRFyLHTeB8sG66umgTObcPPvDFC/rJNS8Wa6nZZtwz6/pNsofyR0gcIH1rQj6qKjp3rLGmHrX2WPXZ9LDv2sbEou9u2RmJcevwpdBPWdnOKMW6uM6A6+TKbLcWfA696hddHtae/K68TSKb6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718366903; c=relaxed/simple;
	bh=P38Te6ISvg+4QTSjgSlg70c5jaZES4DwVvfNlGnXBXI=;
	h=To:Subject:From:Message-Id:Date; b=b8Q4tkEHaAkeqJGZe/Vs4hjXrlEdjCuJ3pwYjPY0dwoZNX6Z7CmbyNt6xEecaDlAoUT6B5EzESqBRA735K0IK8dM0Ujjv9kbPfQRXNuVM0d+BNk9JEnd0Skah/J+LFR2zvaKr1yu9VRkIj5547oeULvq0vtMPClgegkeY+4M5Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKVjXkeG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKVjXkeG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23B3C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 12:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718366902;
	bh=P38Te6ISvg+4QTSjgSlg70c5jaZES4DwVvfNlGnXBXI=;
	h=To:Subject:From:Date:From;
	b=gKVjXkeG95OzQDAT8/awSgb5hBmo9raEcWviZNsGBzLk5USfYrgxRdqxW8uu0HtMX
	 wj8IArueM80IcdCnsWtSijlNwoPCfMTV6lY8iumoRa17/+wm49KGt9ZvwhZcopVyOU
	 xJfij2KrROkjHcjWqNfxZB5dD6DanuBxDv2x+sHjV7LhvIuoWnYBa7l1zsr0ZUDRjw
	 oaZBzpt4zHG5ALgDhW6LZgbmNYa/EW7IweaP3hAlQx0ZVFLuM0BEmx60S3NzyKSqdW
	 WK1yg2Zq6AeOWSCowOPhVr1dAvgd+COa3veKWdHezF43hogICvJhzrmXpBsFQbtCFJ
	 vtgYfk48glf4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB377C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 12:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171836690275.11911.15432480179452095778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a073a2c0ae0bf2d0bc492a97838cc13f8d3bc212703b87027e5212593e45437e
Date: Fri, 14 Jun 2024 12:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718366902
