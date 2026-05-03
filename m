Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273843537D2
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777836454; cv=none; b=gtEDME+NBekmlRb3uHjul8dJf4cl5zUWu2x0X9CJJZ15Sa6gVrmaWb+tZM0QwqQkSxBIGDMv6XUmhAwVTE7KjWMsz7h3WxrEkoMGg9iObRCnou7G8CkyM96QPgf13ca8uflSpuuEurrvL8WqbcsRxp5x8ydgqS3txmV2bZa4eCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777836454; c=relaxed/simple;
	bh=VcbQGvDDvT0IOUEGyLb5kJdoKplVTDPVylRZClYUUUU=;
	h=To:Subject:From:Message-Id:Date; b=Y9I/bjFRoT4Y6LGFIA8n4fFR+ioB/fbQIMu8ZdjU76YJHnQVWEQ13Og22bwQKgI5Gmj9lTuLjC9elHBZP741O8hl+fT3kcSQBBHhKBRblR9BR9ukdhwD2tMiRm3omq7jdIQjO5SfJpQ52aZJ7UvOf5SWlolZmsvsYLVrSejtYXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfRcxXZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfRcxXZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFB4C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777836453;
	bh=VcbQGvDDvT0IOUEGyLb5kJdoKplVTDPVylRZClYUUUU=;
	h=To:Subject:From:Date:From;
	b=CfRcxXZB28HbqyLTh/cZ4IVit9ATsMgD7Bfl+VbZ+nPvK/8dM33t4+fFzWTchnBZj
	 cIQAR5FPZE6o5Mk2ETVuZGUxWOptfJYYe1NCBiEeFBEQjt4zBSVvBqyYfR4cVv0D0J
	 xaOrZkuQQG4jYGCd6KRtvnPZ1pykR3IeyXfnLmYw3lLvqjCYhuWT0AKgw/9ldeXJh+
	 t2cxXy5CsVdo4FCK5JGKhrEM8dRupdujA/HKNsJWcfg3JYcpMyiY7ibT+/IFs0qm2W
	 olIy7szawbXvNBcmJ++EiQsgiV0DOsDtGYwGktWZlyu5IkVoAIj4pxoNVZrQhjm9vT
	 8kYpBpri/ydQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC105CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177783645368.29659.511932189052601867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c1c5cb57ee3fbdfe9bfa4bf5943f2cee307ac5e646053266784cec7fe07987
Date: Sun, 03 May 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777836453
