Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1915118D
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727144754; cv=none; b=eDREgiSsmhW1m65aD7gb4XUgiFIQzQKytyZLiHRaVxYKZy9TUlOGJqeEsVwVBFAGgrkqWJWOnhGAuJT2AwJIkPzNJpG2CUd4y64lwVqoQqSfo9DxEsOFXIq4zKvDNeybXxcy/XT944XYc4GpwDgKkJ2s/2OMlwkpCW/30XA2n88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727144754; c=relaxed/simple;
	bh=GZ5e2TIgEKarqoVoNd8wv3m6D6ZdrpLHUNW9BUzhyJY=;
	h=To:Subject:From:Message-Id:Date; b=rIkqKlBjXjk3l8Gup9NfPX+beDSQ/NQyVKSy+bjWKrzvReTgI1V+e852jUH7mT4+KVAqetVDZi5R9a0HWgt6yD97eSa3FQ6q4+LKlyWBravMYfOTemoas+oDxKHOkCdpsdn9w+Wmt7+yNiKllT5I6RI0Rc+dp/FFJwAq2VpLSqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvIVeG7r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvIVeG7r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1213C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727144753;
	bh=GZ5e2TIgEKarqoVoNd8wv3m6D6ZdrpLHUNW9BUzhyJY=;
	h=To:Subject:From:Date:From;
	b=KvIVeG7r6EmZuQYfxsoejAGPST6/XihwuqwSKMZ/X6k+VpZZ1G/NNtCDNfJ5z0tBA
	 +T63h971FZpBtsO+NByHaitlAIaOQzMNJ81M5NqO1Xib1LPe6vbHxr0wjy1U0KKyMN
	 A77+yp+OV7y65bow5f3S3X+2TXn/+swmr/Bhse063Ey4cwb6AL/OL5IEFGtE/Uciyx
	 IEwuhbUMKG8AfbXm4STHxniLF1V0MFATd9eZGfD9zjeHWH9fYQq8aRuBQwFo4LvhjK
	 p+kA4Dmf4uithvpmT9QSQWccBBcfh1d2ty+ghnh4EWUrQdG6OIQE7ZKE3/SBC3klSK
	 KIy2ryl+q+LfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916FDCF9C73
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172714475358.21552.8964301163632746901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae17aebb61da7b7d6fa2063184334d0b98c1e075f218382191b08d92483337c6
Date: Tue, 24 Sep 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727144753
