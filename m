Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D84425B2E7
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758015594; cv=none; b=Dx9nPmuuZq7iIc4kG9SGLdvftwF178nmh+9M/v21K9C7PhT7M3s8RZQVVHWX8Oi5pCp3i5Dj82y5vrfnYqk2gG51F5CZailDQZ4IaCbKRnjFb5YKxQSTlOeWOx9Qus/l3ntzITJzHOVJe6CC2VqIMdmPjExTeRRTcD5T6BiiLbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758015594; c=relaxed/simple;
	bh=0vdbbX2aNh0DhZpSSRanPwAzDKMhQzIWlFFnTnY2Pv8=;
	h=To:Subject:From:Message-Id:Date; b=ncQF9l/hKBBhRmLCsgzgOYQigbnux7kIRTNguATmQDoZtEWRVDtJ7mrCM2XrKpX2g9A2bhfjMkqV8BpSSXXRrGZ34geTYY4299iPbae5p86cIHMChcZ9tAQaf+69oerRP0ue5Y/LK3d2pdsDoA2hHCulTN3kORsulM/GixyTe4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6NIvUx+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6NIvUx+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE35C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758015593;
	bh=0vdbbX2aNh0DhZpSSRanPwAzDKMhQzIWlFFnTnY2Pv8=;
	h=To:Subject:From:Date:From;
	b=U6NIvUx+a0Xo24WnNPDLSQNlct/I1nvD+FVhdcj3/J6Fp+pvUZrHgMrWq6hIc1zBA
	 IC4OSgtKJ8CtQUE7ICSALryZVKQaSo/JqkIJhXkyHnIcdPu9RFPzcqzIR8IUt6gy6C
	 AQBwc7sgnVwk9h7AaUPstjg3cUVW2K5+Mr8b16W7+zejjofc3NF5QSGohPJVDQakQI
	 NfQHQ2/2YgAlSU2WDSfIMrqtBolPOulnl6c7pKeWiGUlcMrsVqXVMDZF08/6YQvIU8
	 km/9T0A/SZ39WfHmvXXPmBT8NKBt2iDeJamX6tPNCL7Ji6eu2cvIInM4inU12bn/xk
	 eCuOh+U+j6TKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AC7CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175801559358.13953.9926111145493549251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa609fb54b53693d2f0f78bce03cf669faa9c6f9091e8718de733dc250cfb216
Date: Tue, 16 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758015593
