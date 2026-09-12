Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F348350D7D
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789251634; cv=none; b=pMshSn2EHWg3JudlU88xfD9DYZBWQIy19pC2zoZBr5uMxjlzJ51wjWevGFHlEWe/eWLHrGT8J5XzDN4ka3FWAsRHo/O1MGaXEqThxcbEyF67UkvNSVDoyUcmRA3vP1C2H7U9HrbJgUTrldB0NfQ2MTdFmdkoRmTwZ6xlzOfTsvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789251634; c=relaxed/simple;
	bh=GDiNJFSd1yPS95ZN5nQWYp55ZM7R2kYcg48T7GoPT/0=;
	h=To:Subject:From:Message-Id:Date; b=o8g4+uc8vJ6SY30CBR+TexCFRYRKDMMpfacjoIua2Mi0F5EwyaoeoqE3tvH44F5GEMGPfrgu0xlQjdZK492+b9lU7N3uaF4rnAQCbeegwJmtmq0z+5b3MtMTPG0albcHVIgFMS8goa2fhjCTe+R5yDhwfPwZ5IeWeFq5cfrIDNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMmq72lK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMmq72lK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53F0C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789251633;
	bh=GDiNJFSd1yPS95ZN5nQWYp55ZM7R2kYcg48T7GoPT/0=;
	h=To:Subject:From:Date:From;
	b=WMmq72lKVXu8KeaKNGJze3L1x3OMjrSu7mFm45yWQme0zaOgDqcToEeQNG6HYCGSc
	 I1EQRzN999m2BoBQCAUdpt019o40wKluMm9e20U/6c34iGTm8OeeQsNxTkckYsZuAh
	 QX9yeH70l9qKxgLxbMicfnfQe5veji02kiqOuQr1y97jwTppZz2Bwi7KGpON5CrXRo
	 b/mZl46zGuHtSmGabSlY6yNMJtod2UsTJ6FKUuz5J+5yJoBuOSCC8BkfhUwpwXdqRd
	 oqzBNgin3KclFVKIFxSx+nyZ0VQ22xM2L/KX2WIlUuKsNFoy656bF0whwLHiI1b4IS
	 K5XQMxWBBfW9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E53C88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178925163368.15151.17919553340420868263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf007f1b1193d79a5aaf828b3ee9bcfa16d6563d4f93675aba9c6adf3dd49f1
Date: Sat, 12 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789251633
