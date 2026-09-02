Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AF933AD9B
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 13:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788356434; cv=none; b=Umcv8v3QFN+pjRjkXbJoYrRL5LhFQ9ZlMo2Mkz5C7A1FAvQK0c+dLEl+PHOhA1E0FN3m0ZL4ghr5DTbK4Zrx0qra/Wd4xvkQ0luMWzxZOcDzIonY9HCmH+HH7QZlzXIUfjWmiMh4vDYj198RDSBtD0NKrwPhY7AWAyAecrhDG4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788356434; c=relaxed/simple;
	bh=pb1mjtYaaYxVLNnSoaY3n+rf56aD3P6yH93r0vlj2gU=;
	h=To:Subject:From:Message-Id:Date; b=kKGkvCO20EPviyIJFPWf+7AtG7DlEntmxfCHfhHIOKs72+7U+ej3kn9BI3z/NWWCB8YBSLSBxj8W55bWBKKG8VjJyk7Ji2AiH+XiocL7XPHAD2fQnEJCGMzRAc1Zoly69rihpgV/lP08wu6Uo2oShVHh4V9R8h+Ux7MJaTIVkII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTv5oxv0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTv5oxv0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BABF8C2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788356433;
	bh=pb1mjtYaaYxVLNnSoaY3n+rf56aD3P6yH93r0vlj2gU=;
	h=To:Subject:From:Date:From;
	b=LTv5oxv0u4qKXre+LpeNMJFqDovc04Hid5XysbHmDFDT7gYlUZRWDUxvyDcqgcGhA
	 nrtYXeyI3whK4hJ82Scobfk0poz5JK11U63Bg2npAHg4AIEisj/IaZx6HxHys13oUJ
	 pBcmig9PIXO5ZdfJbGgwfvjOP/pjDBDYov2WXwmRn7dfKMDkECe5fX4gkLkuEnkXPJ
	 e9ISRi874exGJ2oYmIYeSuafY5NfzhAw2cWRTAp9jjURW0keLVMRIBpRk30zZmxS1t
	 ROaXr7AWVw9Gz1YC5d1uOAHpe8SR5XTXPk4CP82gzxcaObxtYTzfmodv883b7G/pXM
	 wX7WzQNgCwxKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DFFC624D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178835643368.29422.7283591738582321982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9406739b766e1bb30f0bc26d931fddeff8fb0757f710d2e406428be1daf817c7
Date: Wed, 02 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788356433
