Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8E732E144
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760716794; cv=none; b=CW+PUw6nt5vKp+6UeRQPB+2i6XtO2+O10Nwverr873NN3259N50QcIMv1gWhi0HDHVdlU24jv10hXTlqrwmbhXOkz7wBF+zP325gsjJTV4ZLoaLeAxbX5Ep3qRV6b1gN6pvrUdJ+6dDEANN5X4K0ubn2nv004u6U6lEyc2tL060=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760716794; c=relaxed/simple;
	bh=ZngMQWsws8CGkGMSkZR4LRWeqS8R4d8CS0knB8KOMCc=;
	h=To:Subject:From:Message-Id:Date; b=WBw6D9WiWRQ2u5vb8P5L3gWTAYaoYHArhIaQCCPKBYkAlcHhbxe3KHyxgKojqlSusuivd+nZZC+r9xhHNucttLoTTxk5PYN4Ny1ioxgmqbWub4kpT2KqAaW0AS74/id7mci4SEE+Heq4It88qBFz7IZCzmAXDWLg9J8OfQ9MXws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNSMiYCH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNSMiYCH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7884C113D0
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760716793;
	bh=ZngMQWsws8CGkGMSkZR4LRWeqS8R4d8CS0knB8KOMCc=;
	h=To:Subject:From:Date:From;
	b=HNSMiYCHKsozP7JPON1TLBF0TJEv7gHD0Y5pruqvDhVYH/J/W3S1MkBx1bxjksQf3
	 kZYb/9388+Ujc+ntmQvGIeBjreaX6VDXgPZZudx0eZuqHG5ah81yUbz5o8wa7TkR3p
	 lRprZem/5U5YjGd9ZVUae49ENLbHU16Duv0szAG3U2NWzRbDmKZXMsNrg4zvgVdEdc
	 X6Ajt/ZqHAgYLnMpJJtKTFLJpNrlaihCpeHIzLN1AuSljOB4FigbLouxJTX6NdfKw1
	 tjFJsxpkibemuFFockLDrFi0TuRywLKR9BXz0kemBksibn8ZtIx5kSFCJiRE38vsUf
	 xVbUmNHwdMg5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97138CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176071679360.10756.5055238578084085247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b97dfe1dd3c704bf7a26ad214eebf7b2f4e1b95f8e4a0350ad49e364fbaa4728
Date: Fri, 17 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760716793
