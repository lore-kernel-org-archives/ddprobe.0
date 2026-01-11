Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281A4330B2B
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768128234; cv=none; b=FLd3gxljksTJ1LYBzjpWKxp3nu8OL2ytr9cZYr3s0lV+4kcFULUdyKlBRHJIVTFmQqjvsN14IJnC5QxKKOz8KX07I4Zgg6mcbfvNYon9fitvYDBLxu1YTN0nXFLnaA/ii0wfpTGAqVehK6PvVb+8frgexVgxR6hUn/phgIALe88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768128234; c=relaxed/simple;
	bh=cnAhZzSvcooe4+BsD7yIlI62KlKOA0j2BtDckWRATv4=;
	h=To:Subject:From:Message-Id:Date; b=JrCeF/Q2AwVgPcgM9pksw2fZWMpWLoel5bLSTGwWnviGJxWeF/6+rY1I64GGkamyV1IN14WnlwWd8Kz5PmAlNJI6uUpfnQmYGhJoct6ZoXzYiYRHKlagM9M/AhAWvvYNhMdPJNxdNCf758kwjjLgFo/FOKHS4oQfoODr1bg60iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDfnydD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDfnydD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7599C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768128233;
	bh=cnAhZzSvcooe4+BsD7yIlI62KlKOA0j2BtDckWRATv4=;
	h=To:Subject:From:Date:From;
	b=nDfnydD7JRwASPGAb5W2mksBIIPkE0v8w3ZROl18ctqrnQl5GAu9ntxt4Eq5fHO9K
	 EuXltr8xNNuQj8JUMWhtSnU8ZMgNOY76Fi/orvTrkAAY4b/Uem2YCOSlGljgNUmePi
	 ra9jNVlPlqEiXenLlCVumnW6TedtRZW4Hqz/1s2d0oOtlxWji1OLn2Gb6utpM27u9h
	 VBH/8AaTkzcQjF7E4sHlHbRviZcsO5GLd8rQCCbW+4H9Ie8mUFU5auAYNSWkBTyy+Y
	 ooAr/+KztINkJN8aeCsKAIEXIwbQ+3tp4adbMU6GBD6d26MQNFf1CakZ3KA09OHOUb
	 sege9EzhJEq3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94787D2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176812823357.24836.13690535614178622756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bfd8224a10b026fa8022232f8e33be859bfb05410661fdd227b5ff9128f4be2
Date: Sun, 11 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768128233
