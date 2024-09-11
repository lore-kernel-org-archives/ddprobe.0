Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C2C183CC8
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726047354; cv=none; b=qjfJT3Cab/KpyLANeKOizZGWItfBp3CcgSEyLjNawDSqdufUh8UyyPyuKtCnldB/AeU+0SSACCIYPJfblqGCBGBm2paq0IGG1fSiORYKKKZ8s2Kg7PXYJrbhP4athuMU+2RkvNQTAY1r85sMDDzWK5X18DkynozdW3LjmEAsDWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726047354; c=relaxed/simple;
	bh=a/qm8/KIsWPn5bFYT9vodnYT6Bd5fFHjV6SaZF5a2f8=;
	h=To:Subject:From:Message-Id:Date; b=ru/wRxF7qXZLiU/QuFQYp5JjJ4i1tYh1OKs5KXufp4KIac1LlnhxOxlOdW6smaf76563LOYaMqOrEzZaDq4uc0xY0j9KXJDU8lCVjebNOTa84CJKdfRtdatFPGcQMWRMOt/m/WqpCa+zIpdeRYGbMBrfEEUasYGz4eqKgh6MpKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWPTHdDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWPTHdDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A62C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726047353;
	bh=a/qm8/KIsWPn5bFYT9vodnYT6Bd5fFHjV6SaZF5a2f8=;
	h=To:Subject:From:Date:From;
	b=CWPTHdDd3n43qBPZA3nFm7nhOvBFqQ1+EiqUmFqhdp4jnJfoUqt4or871UNeTFKUD
	 i0WpfGRMQb9jSs9O66vR80oah91jubeBqC5ozW1WEIs+IzDpCTMUcolryqBAWQxRtm
	 rGgfQFJEQthulE1p710PVy6rMS8zudOMVPGh6SKepzNC5ZFyGN+DloXnMFY+UbClJt
	 tZ2awrqhOSKrL1ElggjToDNWl3k5M3BsMFRCnqSyH97szP3gK1mcjMis33H89HCL4c
	 XkC3IdOQlN4LDZd7y+ryf+N+lajeSaUa/Ilnb188QJNSrbISFYo1tED4Uk3l98kmI7
	 VbhvXpilXsrKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93729EE4982
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172604735359.4141.3230240360386293271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 665c8a9745e9950cdac5f75956ad2a215d8cb9946c5f650d7dac492f354b0d04
Date: Wed, 11 Sep 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726047353
