Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2788919B3DD
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723559154; cv=none; b=BFVsn4NNxkCfAoIwcZj1dITV+uOS0n1j1XIEEMDBk2iRYbnmPAkA7AJBuy/eh97zwNQN+1+TOsm5Mm0OWfwBMrKgNXA/6ZhLh/UD028xeYT5q7UVGElpLCAtp6uFbT1ZqejcnbYfvilImnC2DP7g79NnGiAdL1da4s07LUDfNFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723559154; c=relaxed/simple;
	bh=WJGfEPfzrcI+WvK3+AUTxbqvzDPiM1wRdFCriUyYBv8=;
	h=To:Subject:From:Message-Id:Date; b=KUhRcaVrw/LAPW3/eh8SU25rRRaR4ZdLmAsLITFhXHq+SGpns/Vb2X3wVk998VLGr5QKOkhCcFoJOZ1UQsRHRVNCrQYmSvF8pxBLLPlMS6VEExrAZLCEIyEmZqWxeJJHMXA3NkqcJW33JCiNOe+su54ZCWdWjsjJKnXTEHGu9c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDYAqTD4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDYAqTD4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F89C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723559153;
	bh=WJGfEPfzrcI+WvK3+AUTxbqvzDPiM1wRdFCriUyYBv8=;
	h=To:Subject:From:Date:From;
	b=uDYAqTD4j2K9D1uHZhWudpBzVWoGAbGAXo8ro5S7hPlvCj2OxbaMPFj3GlFFak41V
	 9NY3VHp86fRBx5reLtwjy/5lWDLNkKMAkJ9nxw45HNnF8C2a7K/xSg5vZbF4YURxwB
	 p3maeKjIthTFeXKmCWOY3NZsZe62puMpoJ9853oX1erG2/vd2GrcqU4KVmckC5RgZS
	 UkrdDjJZnHmDPGiVgZw0M7AaOqLg4CfN23OW661s6spaK2rSf5c090bzFE+4bTAlUX
	 0dd9k7n8/gzaxK+5wGGh+2DiPPWy9MCL5B/Q9Pe7lIA9nmRw1nOXO4dnlLEXWB2qsz
	 nsRKPDuCu0o2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93754C52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172355915359.7541.2877180182625974852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 765203075dbf9ba0c9b0fbd617c6a1fef944774d0bb204f9feabad9272a5ae72
Date: Tue, 13 Aug 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723559153
