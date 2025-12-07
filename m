Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129F817BA2
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 06:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765090374; cv=none; b=tm1QO8HwW5EjlTdu6Vim6xDhjmhkHCggh7j3U3I7C0jqdUlbs7o4t7sVgGEtnzC6zvW97RA+zbRZaufO8DO+dMnxGkabbowgKKjldRWEoxGZ4aS6XzGZp3ZO4nGKMN8fkIH2iWLki1+JjWc+XRdfuOnlCGUccsFALKmY71Ruh98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765090374; c=relaxed/simple;
	bh=oesj6KIKt6IWstP8tNKyMHeeMA5NVWr1j6LzFXWmFqE=;
	h=To:Subject:From:Message-Id:Date; b=UN/gvPKQBi3j9/dA4lFzTbLp1GWmSCdLp6r2o85Zj0JZzY2wIwivPTDhUlnR/F4XhqY1IN2vm2bWXA6N+UP+lnbcP6E3ezpyLV0vWnVZfmqcOTf/zGoAN2jzXXS4lrMHsUdEEI/qsMXoQVA71yXVCtv+7Tq3cuZscoC9sIonMD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M24F/Wfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M24F/Wfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2543C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 06:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765090373;
	bh=oesj6KIKt6IWstP8tNKyMHeeMA5NVWr1j6LzFXWmFqE=;
	h=To:Subject:From:Date:From;
	b=M24F/WfdqmyCQr/HXCmmM30/7YkRilvyiHLzCpruT5vJJTH2RlWv0Y+cl97u9u9Ey
	 tgraxH5mcOjPwFZYJC+EBkD9f1tHlaF38bpPXEkaoFvkIElYcHy5+CDVnFnzRh2t+x
	 0gvrSQ3r2LAbfknTIzuIvB5lW4I6DfiH8CNuSO/RHk9YlxVdiLSY0SB5bGfAFmA//o
	 +UXi2EA5X1cfaceAokUFIfdI6we5s92op2icuBPQjgdf32egDAImYj9HFlLiVAWrPm
	 Y93dfPsBvfmi7PhnfcpXpcTKIKudOGo+GbL9rsYhl4FwuQ8qeXUvmRGjQET9hTesAZ
	 yl6nw9i/Mh1EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908DCD2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 06:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176509037358.24611.6367871616971220418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e1fa4520481f94f5db8e16761436280a002b81226de3bdeb0c9f68ccc21f95e
Date: Sun, 07 Dec 2025 06:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765090373
