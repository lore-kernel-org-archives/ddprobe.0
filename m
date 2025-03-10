Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314121A314B
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 12:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741609134; cv=none; b=qxg3IfgwhTJ3NW7lp/p3BOx/vjMCn7mrNS2k+tsvtNI2X9PBCPVUIFxwd3zBY2LSf7qOsvOkLP4PK3Vxkisc7DMgawollhU7BHxed0A6j9mDGmM2t5DN9AWf78JH3uTNW8uU8JTpSxpbCi2wd4RIHmxC0mJrHMX6hdhAwR3RLWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741609134; c=relaxed/simple;
	bh=1ditwCq2mpkh2W5Ii6VH+IbGCQhTuqquAfqX+agXxWU=;
	h=To:Subject:From:Message-Id:Date; b=IFN13UDf9CV13LTbq1MqoqAd5/dVQvRUlCCPIh8doKfitw5INfcy0hw4M54L0SVMLmfGTG84UFpOx8pkGtbs21Xf/LG5mjywq2z5me63yEIeHcJivPVSvCGN6Tx8AYnroRf2bZsxm3glxL9dTwOWG0uKC4uH1/TmgAfc4/zlUK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LuCUIpHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LuCUIpHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64C5C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 12:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741609133;
	bh=1ditwCq2mpkh2W5Ii6VH+IbGCQhTuqquAfqX+agXxWU=;
	h=To:Subject:From:Date:From;
	b=LuCUIpHUSrVAPda1vkpNqOTP5lFpODPPdDYHcmAt1AZw+ciQI9Hg8lzVn/LN9AsAl
	 2wz3F5jV85Y03q3ezR4ji6pxVzxNWu24CniAnE3d55S4xsJ7zLJAdFCtJAhWKV3VYU
	 uLSVZh8Npzt09XYNZCMR/aiVttEta3XdTwLxzEPQXBlq4i+ht1+OxAF7Ezm3JITJyt
	 eKzOLrgi0cG1BGhw3xqG5hrP8FiFvGEhEAWSX4BbU/UZPthzkkxlVvIO8VRJGfW4xG
	 ZF/Tm73ZEDJEOdNGZ/659dnzPFkqTogsbTAAMoikdZ4HBjDgPjnmMaxvE4o93niJDo
	 U3zMfnC0H9XPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EB6C282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 12:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174160913360.22299.3845557547494593571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5728fd407e7db89f83a91eae3c9ea130c08505f949663eb1bafa4b47232694c1
Date: Mon, 10 Mar 2025 12:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741609133
