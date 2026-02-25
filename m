Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305C53806DD
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772010894; cv=none; b=VNAWncfmOY16gxcsHme16BcO319qqz/4cuVom+mFcYvC+E1HF4gV0OkP6od/7KXXsQvOwOcjClK9DFS2hT59LfAkmLjrxuNH9Ja6e1cfiBeDcp7mUYcmPBwYn2VCsYgvr9fgqo+dA6k0NFkq8/YUJiUPGLzZGy8Ro2DVNcA/GAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772010894; c=relaxed/simple;
	bh=YELf9x3s8XGX9AI9Cx4+r5ii6yM6FpJC2mg8HPmAFUY=;
	h=To:Subject:From:Message-Id:Date; b=cVfxUIMDApViG1YkHpE6Tulb/KJtu3gsNKwxyHoXedQMmQYR72bP1Fwo43xnBPYkpnmFPNvNqC1Qxpp8ri6KzDh04E7/tpcMg3UXRh3mn+9ySBV9GGiJAxtiNJEUD8iInD03c9teowjeIloLDRkLRl9cWjweOP3FsawSFUQFxFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUDcuXjE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUDcuXjE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E530C19422
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772010893;
	bh=YELf9x3s8XGX9AI9Cx4+r5ii6yM6FpJC2mg8HPmAFUY=;
	h=To:Subject:From:Date:From;
	b=jUDcuXjEIzlIWkF86dxH4WjJvZMASsCBtgk56f/F7mZ/+3UrIuRG26tVWFNtTFbuf
	 Qiq4NsMlSkF7xXjkLBYl3m55YfwQ4nB09TlwGh/98XXebZY3u53oelgLTJAqrl6d6Q
	 HXVUPndERKwuT3KNJICTSPapiXjcKXoBvqYibQXOS8TDCBsnfBj4cONfwLpUUjoHmU
	 /jFZrXOzNoiLJga6a4gvS1GxhLTEK4yUj9mrihZwIsGW3fA5y+CqxPtDFRpZjPYdwp
	 pQs+hDIBTYZU/wnDJzMBaOsARzZ/A/mWB3+i8HKirCCXcpJjoHnc9Be0Uoiw8oZWL8
	 a/POxDlEhXgEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E9EFD20B
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177201089357.12976.18068563889440433185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0fccb68248eec2fdb8206af78e63c80b77c29898c8996f7c83f400c75af4775
Date: Wed, 25 Feb 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772010893
