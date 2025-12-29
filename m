Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270E31684A4
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766969634; cv=none; b=ofBcpZOltMeffIQUk0sgKTHfPX/SM1qzwUPRct+hJy59S3O76uoAY+NtYNxpSXnW5cj4JvlZ97K89YmldIk44j4i764SWmTU/oLZFg9E310d12F9Z5Qtgy/lIfril2AANk5X7nwQppHW6XBvNvjkl8aSaLfwZ2rvX9I/m3IOsOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766969634; c=relaxed/simple;
	bh=QFW7fNF3Mc1zs4jgi65O74aQ4SPkagNYOQjWL7ey75w=;
	h=To:Subject:From:Message-Id:Date; b=jjMnYYSLdEMgEkGh+64L4fRJOAWeFIhUW+lTqHdmLhRY+ZllBEPDe28oCsZnMwby7lM/1O5MgRmDXA02i6gocLSF9xDibLAkk2/gQKUrrPvQmdEZtY4NT8yfxHvYVu1S6HKPkUjPhAIEkh13bpWuvA2DT8ovXcaO2lU7AwgGoZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKGYWlEM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKGYWlEM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A760FC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766969633;
	bh=QFW7fNF3Mc1zs4jgi65O74aQ4SPkagNYOQjWL7ey75w=;
	h=To:Subject:From:Date:From;
	b=IKGYWlEMJFpAltFZS0wKiChmQICzjrr2gj6gszdHBIhui0qXwOAiZ0llpm/Lthajq
	 yOURrvAAFzdH/LsrdMgQRb/UPYRElg1AK3z43jBNBuVMc1eHHK/VtoIbDyXnuQFyQZ
	 jXalR+MzamAJnVmXWR1PQHf0CFNS0lQqH/KEOkEOshwnblEUciPlDQPigo4Axt/+s1
	 Mu4X4d+XhUkiQLQSv076Yoze1IWVBYLVj0U2jvEbAZLfU+FyRIMw9CKB4kkYUPTKuk
	 +CRmnLKYfbeZMPiCEk4YiFl0gOE6YUMZMFomhOLnAekIKAEkjg6pAEkNxrWlYVfudl
	 GGRO41RnGtZLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93739E784BE
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176696963359.23040.8296446962341013161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c50cc549570d5131bcf09d4aa267d33b0cca4da98b32816c34c235b2046f778
Date: Mon, 29 Dec 2025 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766969633
