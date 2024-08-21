Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A6C1531C3
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724276754; cv=none; b=dmoeHkon3d/vIEwBrYInBRSPKbKzmt1QmRGVl9vRvk7b2PcWunFu0pAozg6a9MXV9MqS223rXhxW3W2oftR01zJ2roPguoRqqplbgvmHlxzRz2TNSMu/nPzhUAApVAYHrl2roww7lLEHmmu6p8mRKQ3m/Q91/7FM1Q/xa2JeZ7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724276754; c=relaxed/simple;
	bh=hodbppPLTnQVq9g14pEGdVX4QgT5ePEGnkYatRYdxNs=;
	h=To:Subject:From:Message-Id:Date; b=IxtKqAR/AK3RvV/028EQkabs/pf0zdxrcaKhSKCqZjL7zfWgBQkgNeeOcviOocrw5yqi3y/ltqmmjABuwrd5jqMnj4jEGP1c8KeMX+OarimHUdvSODkNRlmCZiGE4dPt9RdH2VJV84TCdBzSMoz2E0cg2enoTG4jHDbbGF2McdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IAXJ5LQq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IAXJ5LQq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B917EC32781
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724276753;
	bh=hodbppPLTnQVq9g14pEGdVX4QgT5ePEGnkYatRYdxNs=;
	h=To:Subject:From:Date:From;
	b=IAXJ5LQqg1j3IS3iQvVAP3LnYQmIuYbKjKEWsIUbJ9VgHW5/vRTIh97OMUTAY3ydO
	 QTktCfrehq8lvfGgX2B69t5GITGMiQs/GZdWiG3MYSGVURIkMgwcrrQZiWIMblMMQb
	 aXsW2oiR2jGpCk4KUXP/eRlUoCVM1JDkJta4o5qBRXDvZtFlWyet0HWXClC8obAmX6
	 8IjP5HtUCDmQGkYyQH9cQDmNruPW8XeNuy4VaayJRTHrrhlfayyOaA+Gu0t7t0lRw3
	 zHsVDYwcPYpCbWFNJ8XqV9MP9tJNmHMZlTWboQar8ANRMN5mLQkUQw9c6XX3Ye8dYu
	 weUyaj8bTLh5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD68C52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172427675362.14656.11165046528927600802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b6a72111406f54dd1b8b94299d93e5fbbe185c32a360da7adda364fa87c771
Date: Wed, 21 Aug 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724276753
