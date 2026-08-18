Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3892941C6A
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 22:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787090434; cv=none; b=bjIpxzip/02MpH4RP3Objb6R2XMxq5JieSX6v325xS4fR97/QaeeWZ307QcCMbIp3IubJ0LzfDBSuyprcqRii4uWRPNBbmUr56+TCuY33R/NGRf5i3H/VRLmR3tv34mnAQ+z3FjQ2UPpkkwk9Cj07H0KSWqIbbxEK6Om76S13dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787090434; c=relaxed/simple;
	bh=6DUkzyLVVW/S5ejtrOMZfqcuOixy5crwvuZ1nXVLiXQ=;
	h=To:Subject:From:Message-Id:Date; b=bu+KOj+OPuXcZ0LHAwExsWRZxr/fAMpbdZee25NR9SPy9i2oBAZsUXdX/ivz0z5JwHRMQUUDDXYLPwT/tKCoQNOt6eIsyM0BC3BCvptvnA8u7KK5OTICVcZFkJUZfqH43SsEoG6D4BE27e0YdPmdxyrataG7qw0lDKzWgC4WOeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwyAQOZ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwyAQOZ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7BBC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787090433;
	bh=6DUkzyLVVW/S5ejtrOMZfqcuOixy5crwvuZ1nXVLiXQ=;
	h=To:Subject:From:Date:From;
	b=XwyAQOZ0mUkpcvHpeWpH5Ut/79YdYwAez9gye3RsZ6YNy5/qDMntBS7AEER+tcgxZ
	 ELXPGJNykm5S1VpLIZ6EdIsbN/cgXBJSJAkxMM+ACFc5Ll424v9nmzC5kLCHGsB3yz
	 I2vmvR1L9TeaYOToITrC44IkiXxLMLBBknOwMfdRei+jgTC4MUT2N7V26lZpB0Ubcc
	 MGVfmOLkXXSyTRwbyc4WDkfb13RSDmhtsnOM291JL5vusrq7erPY+0zWhGWQ8jAkWU
	 6MjiqH72pHq446OMDkcbSn408oiU0tlBD4xzNL5vp23tWyQ4yOV3os3j60JMbMGved
	 3Fkkv7EWtiPdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F4EC5DF81
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178709043368.1230.8958130300561468324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 114107d5ccb322c5c6d0b77251334ebea645f5297be37ca5d3ca4afb567670b8
Date: Tue, 18 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787090433
