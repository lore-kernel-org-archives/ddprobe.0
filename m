Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A059235377
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744021794; cv=none; b=cATR1HK9MBr9RokX1OFF7iCxxcp03NNUozXWGy4jSPFrqrMaSy5sJqPe0hbE6XziFtvPLjAQ8F81croThc6P00q1Uws7jJSAMFWpEMUBNMfTBk1jXOMo7hZm+SZUzrJhPWjHJZyuQ5yqsQ8JsRrDl6pPrv5QdcHgM3PedpaBu40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744021794; c=relaxed/simple;
	bh=YEgKVSdaUGoTGuwHHY0WWfJyJvaRntAcNBf0E2sRFWM=;
	h=To:Subject:From:Message-Id:Date; b=uYolMlpUYmDsc5KH11UwwbRq4C/DxOrGiUJfJIgpfh7rHz/120ZgexKUP0WfgZqdsey0Nu3z2q0jdf74vHMsdHb3mots29gbKvI5hjFjABLud2fNI06Yv1emqyF8pG2mDM3LSmfHCk3eLJ2fUZ85fmQLJ7172RUsLeBaIbkGMUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FKaBNrtO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FKaBNrtO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C639C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744021793;
	bh=YEgKVSdaUGoTGuwHHY0WWfJyJvaRntAcNBf0E2sRFWM=;
	h=To:Subject:From:Date:From;
	b=FKaBNrtOYk9r14W2PFTAl4hG8rMisgl/PqYyiDiU8+o5hxliex3z9XhDYJdDr7DDH
	 e94nRRyFNzqLRYyrWAu0OHq27P0W7DZmlntBO1VfLD4ufO25imEckoTRy52vZcevS3
	 VWMA8KKI1kX83oo5PrVsizsDnneivFWqButMpcL1Ej6jRaGDEWEJV6yaGYvs7e0Cou
	 kdnebLp2d/ey7CgDJLJPBDccgbpeaaKNQudoy5n2oUhWJsWvRAIhXXRuDvQNEmH6Zr
	 n9EZJ+PsgVY8Q/6W7sGiA0xbv7zFK74fhPiJ332dw7NVTyjWNK8nNSVZ48jdoLVUfG
	 bJpwC/jCbTXsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B05C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174402179359.664.12621106527000808341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31dcf8c3328c887231bdcf5d89dad78aba8e8682ed75c6afc89b35667781751c
Date: Mon, 07 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744021793
