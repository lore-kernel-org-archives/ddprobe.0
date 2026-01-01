Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2308F1E1A3B
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767260034; cv=none; b=gwRh0wUaBrUZp8/7fnmWv5Q0SUMd/ZcoAQ7XbxZjSu4Ctj3VodQm2JqzWkCzol/sJp3uKiXy2NXoT6Vqd+gbdqaQLtBSgu/p6lVWFreMQObMFmcp42853Ab+VjKQzqsaLAxLzjA825gx3lWcvUbHSLQEIeHWhJg8cA4fzZdyrMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767260034; c=relaxed/simple;
	bh=YAPL/JD4b8MtMX9m6sl6W7YJRId1XR5Pwg6ED0nH3dc=;
	h=To:Subject:From:Message-Id:Date; b=lE878+sh8nFz1dHbn664iYvzOArLom5czF3+JzWT5Jsuo4V1agyU6S0IIaDPxe7SpAS76ukd1p/0V3TePd+DgcwbOK/AQaOKJ5/s066H/+OLl1BZqH0Z8GG+xxg+RVe2HrIwumQLaGwYB1CQi4gfdavCETU2Onoc6r1LX76Q0Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jm/pPv2d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jm/pPv2d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7354C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767260033;
	bh=YAPL/JD4b8MtMX9m6sl6W7YJRId1XR5Pwg6ED0nH3dc=;
	h=To:Subject:From:Date:From;
	b=Jm/pPv2dc0PGDBXYsmygWezn8v0ZkY5mMkVINZlez8fXS1sAwaJAq9bO5HrRDUfbd
	 WiDa+K5mgsVF+fIt/ocmFFb7swvt9YryHofDIZv4xUwgxt76yzEn2zIiAK/qI80wY7
	 XQQawEe3AmP7psv/ilGQPKbT93xl3XJB5YLTqaV+sTVfid8URW0evW8d2sFflRWV1C
	 AbJCOot8oYYNLiHDoz3Ux4oarcq7U6di/Y5EX2V/TJDOmjeVK5M/1hA9Iu2cLnWcmb
	 V75bEOmB5tiFVczzjnmBJqHJNwKVcnxnqG9W4ii1stKMi/MBXWFqFXux9TaqH+f0VR
	 Zz1usmK+/D8CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950ABEEB57E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176726003357.15865.5275851914298294834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02873c160237d9829b8c7473ee911787a591a43886b7947c5ea71946b0b5f9e3
Date: Thu, 01 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767260033
