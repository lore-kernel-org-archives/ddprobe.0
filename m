Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1ED3A641E
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776811654; cv=none; b=KcLqnDOgJTrymO8ceoxx76PkfsxJTV9Ku5PU4vs/fupBeTefMDZTmpMv2P/ZLEIGwy2wjxzp/YbT1RwVNUOWqsCtuiJqxcYjnJ0q9movPpr82Jjr4K9Aa/fAWKx9k2R6zVVa2lriG4miV5EMpwAV3uK9Yuy8S71lfVPdslZ/sf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776811654; c=relaxed/simple;
	bh=s5i/p82CvxmvIS6t5GKUIeW1g1Urrsh/7QqNFaAVQ7w=;
	h=To:Subject:From:Message-Id:Date; b=Wh5zFlsbKhdSqjXHcSDGiRJjzvN8nsFprQgybmGyD/0caJORGDPMqJoc9IO5doBjr7SIb473nRvssqeoYI91qZuBDc5xRWAEY+fp8EzDPedVJRQAxxow9zUvZdCZYyR3cHxQ/SZJPcfi3wuDjnr0xXD9HaezvGXigikvJZSIJlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIcCkHtd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIcCkHtd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA59AC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776811653;
	bh=s5i/p82CvxmvIS6t5GKUIeW1g1Urrsh/7QqNFaAVQ7w=;
	h=To:Subject:From:Date:From;
	b=SIcCkHtdLRKEkliUnPIFc/z93PFJy/VD2AIlvo4ceUOeWLTJ5+f4/MuIpTrovD7xH
	 pHeR5FCqMzIgHg35Kx4SLz+cEUnW5hFGuTAr5JyCbmynXBtCr3GnMHGCwxlQYsnj6S
	 3wYoch4i5AmANmRUTSDHVmOYD9jHFk4UtBAhfnNWSuZDPhK9pi6I5Bryosfgjqtf2b
	 g/H2C2itpFU7uv/AOJ7nd6kj3Vdf//aoHHhDc01pQYXRn7Rexm8hle/uPEwUA5dsUB
	 UkI3gZFbwbd8sjzBlXdAZnXkDMj9Ws5afISseHRqRC58xjKstqEKlgEpBhdCGIRVZ+
	 X4TtM/kgSyewQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA09EF94CB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177681165368.22687.18126492856547757655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0979ffe2df78e1c6c0ff674a8621e868db904081964e78dc5b725106151651e
Date: Tue, 21 Apr 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776811653
