Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520581C9DC9
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723025754; cv=none; b=KnjPrgc142KVwHuqBoSd3807xymTh5Z+wCwCGNIViw/GIu5/t8Ptun3IREc6zAyJqfZo18aktR5OBKFJOJn9n8M36mckvt+cGi30bHz79/i8Yup8XrNroVjTQYXbXJs5Raab3HMjEkstc/FySy9f+IUnQH6OLkA/oGqOUtI62HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723025754; c=relaxed/simple;
	bh=4XRxrw9bbHDhl5EL8vGfQqu8dDrL7TOKeXt76Nq2Kn0=;
	h=To:Subject:From:Message-Id:Date; b=gz0Cs3J7MqPkHFnwhLx281FQTsor29XagGxHZ5G8C854rqoEFonYGwocsdWQwBkffslTKd8jWuq9da1vKoz+0SdfYNUBgQcytAoqAufYwUqi1yGskqJCoRjQrAvftgWxZI3d2FnNJIRlBFz2qXgR6tccOlV/ISbAZzkPl5/OFxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ye/jii9R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ye/jii9R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D5DC32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723025753;
	bh=4XRxrw9bbHDhl5EL8vGfQqu8dDrL7TOKeXt76Nq2Kn0=;
	h=To:Subject:From:Date:From;
	b=Ye/jii9Rn42sfjGeulgUX3+IxNV3rx4SHppglaFvq2fsibE71BVI7IbwVmKR5oyFD
	 xEYFU+MWnfKIor4IN/AFuvoaaMcom9ufujbjufbIhFnwn74HjFE3n5lUpaM5ZBLBlm
	 4HTlEq8dDQsDQDuTRDVHdSZbAVgbltw45hXXt65rBkSBzUWvLEMhxMwRr8PCzlugJr
	 kCHOTUYuVuNqWQjV7XFGzV7RXdOvTbSdMceb/uFDStLgO/efHjemO9TFum/Mrrw5UL
	 duZWSpDc55V9hhsRMmObsuK86JeWDZ+x7W8Sz33Vz/537RF6AGqpkfw2VbZYGXsaj1
	 IFwAaeqhDG7wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9EDC52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172302575363.15569.16075557252934634162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36813b90c3d64bb176a31a5306690dc11cbf104e8677bc9a774bae77785924f9
Date: Wed, 07 Aug 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723025753
