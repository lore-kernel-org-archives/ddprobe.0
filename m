Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F8FBA45
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758103794; cv=none; b=XJWTZe3GAbFrZNMXnmtFkTPDIvh0gKwUydpKFMcoTofZLpScYjNRoqGZYLp3c4NQdyFCw3zegYXC2g9YwxHPP9rDa3AbgSGOeEe58mg8fGo/rqVX+CQ6Ah4aPZb0e4bQR3CH+KZm8T7ALd5i9gB5zzQ87i4R7Qe7I5mstg+MvNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758103794; c=relaxed/simple;
	bh=crWeNsygbShgoEvWtSOtxvzISDbKl5dvQrH5XJ94+hU=;
	h=To:Subject:From:Message-Id:Date; b=ljsAjTH4AKSovuE7oECF+Odn6KpPEOuCES5QKMzsNMGgGQablLi8ERzZk4MSXOymHrN1ls94l2+J9UNpdfgwBg43V+g23p2L3umVyXKTmVBvn4+JZTzNNEm7aiFBiroNk9sGZ/6PR668GmMfYzWXTa9Cplkn/9HqMscbscFHmWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJpawi9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJpawi9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6F3C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758103793;
	bh=crWeNsygbShgoEvWtSOtxvzISDbKl5dvQrH5XJ94+hU=;
	h=To:Subject:From:Date:From;
	b=fJpawi9XdM33IvwC24eNHUtJduHm8epRi4bi7OHk5kkOfRx2nM6WgDyere+9D4kja
	 gLMdwrT1x9E9g8FbXNWnoYMztZWuMshSMAj6DZzMGJvzhwJWEnUx+YcXu4A2INQTdR
	 zjHIrA7X+2Hiw8Lnn658S9GSo3sQ/sPoIy7WeTlYHXVfKFdLyV7N/2eT2aC9risilU
	 Afa5v3fi0ntL/5+xVO7sIHh1yqNLJPx1qxIRlwNXDp38gzXwQPMKoxKIna3iSvMqGt
	 wRrRf7VRJ+D8Uvjn/+uCZ1pEsj8efOOycKYYmDFdt3EFArGb0lrVePhaAP7kxQ8fl7
	 6vKqnj7Z+bhFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDE4CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175810379358.9712.3135033078400051267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23dc5fdf999544e0c2bd184ef3841fe904f2335f0114f6ff293d729abf0adce8
Date: Wed, 17 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758103793
