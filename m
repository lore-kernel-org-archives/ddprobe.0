Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3714121CA1F
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 07:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739519934; cv=none; b=o5E1jN6SkCokCmVbGKryearcGuf4YKcKiXqcvhCBUb672cpHkBuyJcQf/SfqM0LvsD4rPuViTTPKXc59YQzkqEBNcXYdyBZC2HQJtSfSUttCaLjCk1m8kdAXiDsAnwrMN4Ne3mxr7bxtSQyhwPj0o85hf8O3li171t9sMEAJOjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739519934; c=relaxed/simple;
	bh=V/sBrUeIA4j+cmLKZCWOzuCUvrkUMB0RYRWC3EIlgXU=;
	h=To:Subject:From:Message-Id:Date; b=fMQwB0E4FLjLj2d3fVWlZr0STNmuie3xr3kH3KqtgY/Snil03i98hrkgQFV+7XqkyRtZxRMaGjuwC/nagiG1XRtajLDQhhPLSurtMk76f8XAipEsiezzGKLnZc5QgHPx152OzOGIqtqWfdhXY6R3GtoveU0hujaNHF5ifypzTao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKbSXymm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKbSXymm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8107C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 07:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739519933;
	bh=V/sBrUeIA4j+cmLKZCWOzuCUvrkUMB0RYRWC3EIlgXU=;
	h=To:Subject:From:Date:From;
	b=ZKbSXymm2hhtZS4INxk4FWH75BoFgoF9SuqKQR6kanm4yh+z8u01aXyCojXIf8PGK
	 lvBUCp2bouP8C3aO3ncERLs/Z6fxbUkBiM6pduOV0Wpnm/yBJOUGwhhzwSepz1tU+g
	 /cs2heiIrMtEJDub6gJHIuRBhYO1hKzGUiJvwyKZPVJoa7UZYp+jgZzxXCPSX+b1Cl
	 Y6swYobxuvDumHc0/cgi07W3vskN1Iv/XI2nTnpT+VIfwSLoipaIXkBx/6DcRp/3uW
	 ZK5jVu21eyG0r6mF0e1axV8OSzZfAKZdbZmR2Yo6ioAb5nD+NYJEbjnqgr/MOuV6Re
	 nwzwyZFZbFiTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B16C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 07:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173951993358.31460.12591213289264910702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6767583b2a0915217123ca3ad23e908b6c71fbaeed6e07136700329fb4e6a4c4
Date: Fri, 14 Feb 2025 07:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739519933
