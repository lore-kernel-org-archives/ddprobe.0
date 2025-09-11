Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283021DBB3A
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757607594; cv=none; b=bN8dw5dj50ptvwP4MqI4tOKMyCBSscLQw+Pal5LgqxegW7rpCOxsxPEi2aY1Ats7kExlBeVn42aXCLvkaz6450XSMs3TVrf11654My2KNp+eGTBhlrPvqd/Q4B0IaaN85x4GWIYCPdxlXP6cHT/H770KOg0bTBIUMraszQCILng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757607594; c=relaxed/simple;
	bh=rIVUfyfL/e2M8WV4n9mcz10xE1HXpckfKfiamy7Tntk=;
	h=To:Subject:From:Message-Id:Date; b=DjHsLpLBc6a6isscuIeQSVM9c8rKVFgZrimzTEpq4zqoVp0p6ibdF/d9/zDIQj11IkS90FQkO9mU0E/q2UAVycv+nUuOFhOmnNvpDgon/WS3VOo23krdjCnfHzB1eo/+iTOrkUxPTu7HXF42gRi2uAPj5vctcn8n7I0xe57RZGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssB2deOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssB2deOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34BBC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757607593;
	bh=rIVUfyfL/e2M8WV4n9mcz10xE1HXpckfKfiamy7Tntk=;
	h=To:Subject:From:Date:From;
	b=ssB2deOKbuLBLuAP8G7K8v9+EIBjgKTh0Xnr356N1oAE6YDDyfo9aX3bdFsd2EmP8
	 5lhKCfW4vtsn/Up9xJ8ExJZqyO444cVz+6G9/LDPHgJpNAv4HG/lTE8xtKcl4X4xm4
	 ClzPFV8/yTfz+XTRlGhNBvjBDRGHRCEXwhd3yPKn5tzrT9X9ajzGPGf0i+vz6+XI0e
	 mfqZ5iM2aPyPtmL0ZzUs4ib1IqgBkBAjA9+g9/n89W0tEeHvFXjoM/nrrosxPUB2Zr
	 CHUZrVVKW0WjHyKc0txwbzCL7nbefqzRNEGWZFdmJlLadxPwEgVPfGN3mVu5/A7Cv/
	 XiPmiBQqLn38g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A11CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175760759358.29937.9464164118877646338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3a86f293ada43866425e77da0879222d7b99972bf4cec2a7944e921f260c23c
Date: Thu, 11 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757607593
