Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D441E3DED
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 19:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765740174; cv=none; b=TrgVRFOH7dDhFdrR2UjUtL3y3Ax6HJuo0taLaTF9bW/GFaG0DMz83pvBckVybbm2HCnhlqKCS/8sj0YH8IzRfmm5NhPnwHlq+MiuvC/H0IwhUIEyfE2VQmR6Wm6LBwXOsAl/8yF9LzLmd2teVuZBCgtIB6B20BHyGcTTkdtLgd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765740174; c=relaxed/simple;
	bh=VPpseyvFTxHu5Ty2JidFB6YgFk0/EBnJidk+15weiDs=;
	h=To:Subject:From:Message-Id:Date; b=qguFSrlTMQKlDznoeSxhcuEVRNIB3HygY+ZdN+HdASyhmE6f0xf6ThUMvOIrCbV0Piih6Dnj0hKUyNf5krQam+sUZFPFAMD5srB38KEJUxwH2tA7m4PS1Z5yffMdBfGei8cqWCuBDmBAQqbUcYlqsNsGL45yOVs9c3KNXeU5HJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpIoESxF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpIoESxF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DF8C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765740173;
	bh=VPpseyvFTxHu5Ty2JidFB6YgFk0/EBnJidk+15weiDs=;
	h=To:Subject:From:Date:From;
	b=SpIoESxFHL63BFWHQAmezI2Vk/XLdzlOC0k6rjwGzXVk58YuwYkbRF7WCnx/R9xZu
	 zkxWmHDAyB6c/HyByOTgrZkhNu33E3+zOKAgqTgazz6akS4fWd8DovTCrvIor/DCZE
	 j2v1MoYlcheDUqlOVujldXQoDyy4fvzCw730zYip1OjWJdcdbNgU8mBpuhOvMEjV40
	 z8HqgriTED1nWJglJ4nlZoZiKYa2Vj34a068ys4kmwY3qektRjmCoOlyY6qvzOMx3t
	 s/Dtt3Z6QyoRJi+etwcDD5mDn0lrKLSOy6NQ7HncfCrKfDIu27aMbrDmM8VvvUugj0
	 Q7bhOBaHpIKXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C31D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 19:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176574017358.29880.10326774186881602630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d2512f387cadbc60595455c13054473b4fea30ec661b88b1a458464759b4909
Date: Sun, 14 Dec 2025 19:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765740173
