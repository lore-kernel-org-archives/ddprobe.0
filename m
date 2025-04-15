Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA2F1F5821
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744679994; cv=none; b=nEEqDrOkKsWR6q4pj/ll9ImTGyzD9RafOlkSquIlhsBaJTeLEZxvMqCNqKG4crUo/rgTWtcTwSLFZKHJbcbEUaJF65s9u3sVh3r4gKE58pC3Ri933y5Z7wiRN2MMTo50EEmgyurckamZXMvCij/Dr6PX8PldwCOn3ZlUaLlmrnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744679994; c=relaxed/simple;
	bh=MAXJ2kogko+z4PpG2xVNYRM5INtsL8W+nQbO2lvk7Ao=;
	h=To:Subject:From:Message-Id:Date; b=WhARxxerJOM3nebwn78eZH0wxMzJjs5OiBmHEKkcUmFv1Z5g8yzfBSFlx1iQy6hXEn1+ku/u4VVASo0EA2tAVXDyt0ilJR+kUxRBkzWSmv9CxhXA7kzUetFB0OLCAAkOND/ClfRyA2u4Ww5XCVOUn0WykJunes+L+Bc6k2AfvM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPddpYUL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPddpYUL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A966CC4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744679993;
	bh=MAXJ2kogko+z4PpG2xVNYRM5INtsL8W+nQbO2lvk7Ao=;
	h=To:Subject:From:Date:From;
	b=fPddpYULeFLzYK2HX3Y7JPFlez9L0qnXZXWMcBAyukPfSjb+UDRwqrxrmLsnbb2p7
	 jpI2a/Cly4tsK2bxTmDK6Va3LSVzYeNITud3CVJzKETBmoxy2JoRKXX5J/HSRsqjfk
	 ssCPNmLinYaRqBQOd48DmWQ2NquGU40PzV9Cey3B9W9onMq61/N8Hd4PTR+bt1z74Y
	 6nr8Ir8DcNXDgx3pvziciTU+QR+DYDRcwQDDyTMHPaJZ+ifOyw5UzDIDCsFSsOoIZu
	 MIrhUahFMZ9L/GY60WCCv15nwvYiivyAxxHOq+m1yZCBiokYzuJNKKh93E8ZLGzKIY
	 VCvBY3r7ek45g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941A0C369B2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174467999359.31771.4256804172535282774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 006c32059ec0578526c6aff3aa906593c16dfa02b68703399b857bb92034aa3e
Date: Tue, 15 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744679993
