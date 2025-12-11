Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242D31A9F9B
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 18:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765477974; cv=none; b=ekRdHAXp0/BU3SejyC6MpI8T1JwEPDVNxQG4cXp6dL+poDLnpGRT6Y+q8wilE3xMJn38Iclfxz70V93+JlsZWmnfxl27OtM+OyjqLM8oDhTZqmD/p12mjFzC8Sn+XhbK4yNEohu28lfolEvMixxMtoIjN9i4RVpvyo3nZYmSxFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765477974; c=relaxed/simple;
	bh=p8w6i4KwavqY5MBAohrZyGOLG0ZcDBTfCGd6W/CjuIA=;
	h=To:Subject:From:Message-Id:Date; b=rGh9gS5RrCSg5PR4OfbVtWASemQ8cNzLVdpQrQGfH1gwFafJDrsf/Kwiitu2pVPyHGBhXWuGcFw9DdO7qLWuCJisbtgq1j9dSx1RuzSZLSNex8E4yE3XhER5u+9TTkWLcsderUAAQrSa6+q4QRjCfIsV7HJ2goH4TRBVtYXqrH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4QoDhoG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4QoDhoG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B034EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 18:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765477973;
	bh=p8w6i4KwavqY5MBAohrZyGOLG0ZcDBTfCGd6W/CjuIA=;
	h=To:Subject:From:Date:From;
	b=W4QoDhoGruJgz9LapMRSJVzjvomsDLxiFKyaoMcmiCzz/F/R14lSfRAKBtwsplmhx
	 KoNsHMUy2AkLfNOAnjdyrws4bOGfLzs9qGreU4jYKl+c6r609zM/LencCP5Rp92AiV
	 Leyz8EDoN+dykAmasseRrYePOPneCg+i1aXKVAts3figz/T+oUuazM/EguXQjbNKIu
	 byGRUE7fSOz/YzcssPzBQ3xsertFbizwgEehwUh6bEO8QJBRKI6E7oRlshko/fVXn+
	 wmO1nHPso0T+OChP0c+WEVVnTz0rEHmungPkf+wn+pM85DgAmnAPTEBlxOsMNV3akh
	 d7j9YcuoBnsDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A11CD41D7E
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 18:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176547797360.14398.16453030402577219261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67d3f6b4a6057c9179adb2150250b7690219a9fc7e7c1a2cc108136a6017c037
Date: Thu, 11 Dec 2025 18:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765477973
