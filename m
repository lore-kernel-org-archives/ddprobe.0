Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F72ECA45
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 00:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775436934; cv=none; b=Cvkm72kpmufmlmJOoynNZcDd9uxd8s96YfTH5W0SlrC6d0PNtRy6/twEmFneKfsNXmVW8cJ9H/GzZ2bpefgrpm24t5+NLUWcRNdhGmTNtugepQsbLWVIL8eeT5EOShc91M9xsIo2GVNFdmOUBx/as0Ft50pFn6R+ZLK6QuXm9i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775436934; c=relaxed/simple;
	bh=IStSmRMLPS7EEvEmk6kT04j0NcuMf90AydRRfYw2KKs=;
	h=To:Subject:From:Message-Id:Date; b=nZnQfc4YDzJJqb0kCPAb4p2um9OH5SUsoVQgETROzWrMlC9TmQL1uCPHzYNAY8XHuCQwSha6t24FyJTa5ZfWSwmwvOGEM1eEtzqJm9+yJ/59MnHzP6WczRaZKp4Xo6Se28U+MZxfiTDWc82RrYjeIGPdK0Sy5Cfg//zZPHTboW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gA/6qBMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gA/6qBMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D592EC116C6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 00:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775436933;
	bh=IStSmRMLPS7EEvEmk6kT04j0NcuMf90AydRRfYw2KKs=;
	h=To:Subject:From:Date:From;
	b=gA/6qBMP4paNq6WNfo71PnAFhVZGJRYpFbu3+yeKgNB+kGLygR8trqwCGib/MX1C9
	 cgQNcudUdYpSL9+etHrJcr2uoZA/NHplhFlPZCYaYZln6YozCC5+97PSrktCC5Q9Ju
	 0KACYZ2mmozwNcJjraYUGNNO6YTuKrOUVEmOI5qYEciSmJcreiStijGUgdAkv38Mnb
	 3A9iRxLVXMRiNHWlmr0tbQuv2A1n/NApaiR5LlnikN9MB3rdCPvuMcLlUPBzug4su9
	 WemuWntLks7Ivw1PLK8fPEr0azAYRCLBTvsqhMPIu29rQeuW3UZqmBQIUAQQNRN8D7
	 PIL4FZMV+pyZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C75E9D828
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 00:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177543693370.21263.7983198502628482280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1472067c6ecd83d089ea58a96ade2fe8ebaeb3de56cc0a35470f16dc5ef4542
Date: Mon, 06 Apr 2026 00:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775436933
