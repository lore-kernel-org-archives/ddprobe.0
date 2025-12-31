Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B8331AF2D
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767185034; cv=none; b=d/NoonYwfyXs7WjPPQSDy2U7loxZROfQctm3A3S55UuW9E/MpXGhpY1yCL+vVbM6212KAsuDdoZEHN3hOCxL+XB6Y6NjcuGu40xeVHOvu9Kz38XOl/ljNtF7sfLAM9qyt57YYPzdfjbP+u0D+21622G2ob3blwR5Dh7Bqm8lyrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767185034; c=relaxed/simple;
	bh=Ez8PVr1YnjgC78jf818/cpGXcl0vZQyHW39FkIIxw+E=;
	h=To:Subject:From:Message-Id:Date; b=saB3LdO1Zhl+E+5CtTEprvz9cyn0Lcl7vveey3ZiiYAWgkn04J1c4y2dPPafk9BiVV9lfRjn3n/W0KiRvG9iPofh1oruLFthOivCX8/Ss3qFkzS4JMY/Vyx/MhHz1vYOT74RkiKINJis4sBRa3Phvg8fz1ZqcKTDUNgh/BStG6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOk1BCn7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOk1BCn7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E681C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767185033;
	bh=Ez8PVr1YnjgC78jf818/cpGXcl0vZQyHW39FkIIxw+E=;
	h=To:Subject:From:Date:From;
	b=lOk1BCn7DSq8n65cfxEE+XrnxrnQqR/L5hqHVzQekkChkV/PmPJZ3/zIPfh+iNlT9
	 tFE2MicdiQP2wTlLadfZgxRdKXSsmhO5nBwrDOkbPYkOtg96ICRdNEro9tlhdt67Q4
	 /X5doWRNATVitYssyE8gKwqCIacC0Lqml0P6FDh+xPh3r3QizBuLLTZmxWFYhC/yBP
	 Nbw4B3oEuwg7Ji0HGiBZ3wmkZ7WJKgL/cX/+ZBgX4892PLTkqkRtrs/HFBLJU95oEl
	 2HhLCxDy085TeT1/dY/Njq2e9/erJsdTBgkle+SVav9vq0663WIXyz40cquZF2CkiE
	 VsN9/MjB4zXaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB1EE642F
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176718503358.3597.13850908906573497029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc2a94d8280443722bb69eaaf52d96dd9592eb15c7f064b735a568a5c809a78d
Date: Wed, 31 Dec 2025 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767185033
