Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313FE20C038
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762477794; cv=none; b=jGGlbPIdlaXmi637zsK9DGT00GaVVV3aUUOzym0pHYCRtCfEMVK5ZN8V4ZpQwE9vjXNWQ1H3W9tnxJg+E1qTc3MycK56JYwNmXF61AUM5m7QcS3gFhQliXSkEOK9yFkSr0BDiotOOnsHge7WEMRaaf37L+zHzJFBdNaCnb0+biU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762477794; c=relaxed/simple;
	bh=9RsP5iWn2zAXJnaEjASM3sDgSk7MQHJYhidKqbeuOmc=;
	h=To:Subject:From:Message-Id:Date; b=Vb9tfToWLNDJ8vv8rkiiVBa/LsktA68+xVVpRuDlKEx33qA4i36RfvfMWQIOVVfpp0fw62Lu5yilrtRvO0ZkLwGf0fvNnSZLXcRQhMEu+AvsBc0eguJjBNAzZG7bkp7RIXiS3XGSUmklX8LLPioe13YlIKB8A00MJ3wv+dlblLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8ogohDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8ogohDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6926C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762477793;
	bh=9RsP5iWn2zAXJnaEjASM3sDgSk7MQHJYhidKqbeuOmc=;
	h=To:Subject:From:Date:From;
	b=G8ogohDhLi7cF16V1Zh4VgDNvFLf3AtveUG5GmNHwSA+NO6drIKT6ihxLVklkkwL5
	 4AMH/PRVdtIVX7w+xABHgw2tMX9DJiGyg8ys8eHKo0Tdv4W+b6A9DIuaiwbxvFx0Rs
	 Y2lO9TbSP61vIfNJ72ZUOWAKF25zVWGXbwnOPzW6EfPZMwHQYua04Xs3Yp8wKHmbEG
	 TsCa0bWHflCXedPtD4XEFjoGYNIOly6iqGrPk8UHO8my99RUE/jPRE9/zMd6ZJSZhh
	 xPxqDFefNr6xYz9BaIOs0dTKjdyksmH0itD7EJSCmzlPt10MMUVvJHz8PcADCiXz3p
	 fA+i4iTSkSWNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F6ECCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176247779358.2995.15673641742355133844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8adad4fc0b809e1a042eafc537bab53e0cce63031923d8381ef3adb7853e7f30
Date: Fri, 07 Nov 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762477793
