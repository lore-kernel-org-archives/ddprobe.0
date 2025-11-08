Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3265B2AEF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762561794; cv=none; b=QWvjImUqPiJhD7jxx38Svmcjy8hTov8AAu1J2wc0sGkaulL74zEbBMXDXcA84UG4QL07KNTiFIKJXRiiMY8Kxqg/SwiX/AB0Koolq5jaE/5mr1DC4IoJ+DWwYbC2kNRQQvg/yr4t23KsxPmra9MM8mDBPbtrNbI9MUARrQoCf0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762561794; c=relaxed/simple;
	bh=jiY+TlFO+HMeBVLYhB05869tjneVhmM2seQjF3oD89Q=;
	h=To:Subject:From:Message-Id:Date; b=rPUjglxH57vJpa2zTI1rV7Ig74EBPASic1/uF+6EwZie5sZW+0opIP5MrfpdMie7vaAGCeYGIGbh3QRs2IL2A6ymjsfa6dNbgljFzaxjFsVZUbRR3//O78u2LkNgGomqVvl0sz0+gaKIpxJCQ3xF9Sz9RNaBUQWNebtM1yy/UMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDeerbko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDeerbko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2098C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762561793;
	bh=jiY+TlFO+HMeBVLYhB05869tjneVhmM2seQjF3oD89Q=;
	h=To:Subject:From:Date:From;
	b=hDeerbkotxMElnVCX2BLpNNF29yU0z9ssQmZrMUW5Y8+1LfXFDLBydpZelzNBXYB1
	 oVupyTiPO78MlxWWmItwLUe8rOMUZ+UMKy9jymXRhAqg1vYDkUsJKgwHU3lLhWJBL3
	 f+9afzg7IE6MkjpQvAo2JyR1fBJOSf96JZXq1md+qs2PqxvknMDqlVn0f8fCPx9BXu
	 s2peCIV/KI1l3w3lRuGEOUrgugVpVdLPEH6JYDHfM99cG9zx32Xte8ljuT2LEQQmTB
	 7qc6ugBxroq7kNB/sGEGon4EK+aTrmdCf+C48LFLdY8/c0eoIvHiBB4mCNnt7yt10v
	 mLjgaXQdEah4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95815CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176256179357.16358.9179092711135565102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8771c5d9ccc88acd3077578d398245f5df43991326a0460ff4a57782241095dd
Date: Sat, 08 Nov 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762561793
