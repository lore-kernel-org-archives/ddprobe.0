Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5265619D8BE
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745188194; cv=none; b=CbOloigW4RDh12m2jXGcsqJ+8imGZUB4aLgMWJJjvZBVD2qrpZwaW5GvdqQnQch2zdahWJ/8auHgDMMRY8fKI619qJ41bJG3TearLEu9OmKrjUPex5/lmXMOG7IyByibeTQAZbbsU/T83TXNxmIeIEBXiinOJchbnKYiSKs79UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745188194; c=relaxed/simple;
	bh=W3DAaUH6ExEVLi3f8KvM6loK2+ezuqX7r3KMqj1f54U=;
	h=To:Subject:From:Message-Id:Date; b=odu668prieEY1d7jvYPfMJxZ5ZKUYba5P2NXtB/moeN9MTBwni8TMWxo8Ci7EKACdeF7+z3c02jdqyJsavzlAT1X6Qot5dhh0cMb676lXM546iZRZV8+WyFtNSaVPIOI5yiCKHJiHeQZoF62SLz7geWpJZNMvRe5Xb7MVZWmn40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iopsqDC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iopsqDC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6F8C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745188193;
	bh=W3DAaUH6ExEVLi3f8KvM6loK2+ezuqX7r3KMqj1f54U=;
	h=To:Subject:From:Date:From;
	b=iopsqDC6hf+OIpxRxf6FYa2ACz0PZO/bAIferwYuR2DZ6dd7ljqMd82YTeosKTpVC
	 /PeQkXoTYLLwAk36VwDaCUfJNGr3VZbDNI08ypfWUxK0D4dCSii5l01JX+1visBsnI
	 Gh7cRw32Cev6TSOv0QC46mJUagljXp410rhoJzbtN+1Le+fsHcI2sNqChdIwunWvs4
	 dmMJbwQy95e0TBtASMBVfMJbRWNwORB2Ms5P/S7+jY5DDxUP7A14cYYDceXGP+XkjJ
	 +EpbAngrQ3lg90d1ds0j758wHw+lOGxNmRTQ0UOfzvfjF9vrmUP015M61buqr9gYao
	 zgd9FTz3hkP6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F19C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174518819358.16270.17821702561579984489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddbfdbfa99554adbbe2c90c303ef91ce2403a566b693c4a59d61a6e50a766deb
Date: Sun, 20 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745188193
