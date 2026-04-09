Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3437536E469
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 08:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775723134; cv=none; b=Xk+VwV9uw3IHWuVeYxp3uCTp/ZXfueg7Bj8Hs+FOfUHaDeea5TzZwlM7uwNsRjTzrFlxvTvZFNv+xZBvcGTIpPPWhyMI3CHsPbJo/RxztpzefyGuLqcThhijtflTBh+XKS3OkT6nqdBtlwVX2HZpfiV21AAR1nWPPxXTNMHoLEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775723134; c=relaxed/simple;
	bh=N2E7QqwR1S9aOnmRJxPJVV/okhm2sM/JJjSxkNZR/Ks=;
	h=To:Subject:From:Message-Id:Date; b=DqJaWTReENieWQRm+ug395snk3drwVV5d9d0HYa+qHclywgYws47ZIjRdzFXfF2yVZTn3k+R4ls/3UlydjM1hdwLBC1y7lx/V0FAkzVCDCF5A8VSpGT/Y2AJUd+OcOTAiIxtSkHbsicGBAjL0xnH8fV2AWEr3Jxr7kju//dBEQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXp5qoqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXp5qoqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14ECC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 08:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775723133;
	bh=N2E7QqwR1S9aOnmRJxPJVV/okhm2sM/JJjSxkNZR/Ks=;
	h=To:Subject:From:Date:From;
	b=DXp5qoqzxbDuHMBF1FXhOBuPS+ZlWb0sVa0RE+Mnt9kFa0IDF5QepaIAPCTMhM4UK
	 okklcMxmyncOtIBTvuyrM/SelxIbSnhX9NRFSdOzWteM4TCqEVqFdHYkeTSj868eg4
	 p6CQMjCFgYayqv5UqdXGyxwStRCu57G4xmF9t0leoVIWSGv5TplskO7PmyM1ht/cQy
	 65FR97JV0lGfPLW0lX+QdLu0Q+bSD0u+zUHztdrPX5aqhd3XNSNofhAkzlTXddOcZD
	 EPNNLXIFAducOW2m9/q4HOnowgNjj/JUah/ZMNiYyvJCm1S8Z95C5+3HG4A376d/OT
	 y88wBF10emxXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE48CE9DE62
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 08:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177572313369.12375.16269758002191877417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae6a16d78c331993abadf5164e563984d41542dc0197b0e5af2e3de7430eb762
Date: Thu, 09 Apr 2026 08:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775723133
