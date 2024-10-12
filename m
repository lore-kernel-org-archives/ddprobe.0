Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4AC19E960
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728777354; cv=none; b=aeGyLb2PCiHPD2jAZ1klQ3yUiUqQWpPu31WLBOh3+Ay/rcBmXBQejxxFNqHXTIKIcDmeFv6LP9ZGewZa4FpaAVgfJTnlRd98aPfnTNq/gdvvfoXdGDk1pM8t280H/WRACfo3QkXRhVE0wJ/aGsK1nwW4H/FbaIeNduasiCl58qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728777354; c=relaxed/simple;
	bh=iY+9DTlcIV1PHt38d49h0Mt29cW3TYuF81CpQ5b3wt8=;
	h=To:Subject:From:Message-Id:Date; b=R2Vv8DLyk9PjTqGQOF1GDTmlfJL/OVHgfnaE+vGNePVBTBHUOoauTCLKrf9fKoUBCyYzmnCFzjE9tbY6bovxSYk5qZZyUezIB0R9KtWu0L+hnSx+xK9ZR9mY/vyH2TP4AffRFUZJu8fLwb6g9cjRZIPnj2M2X4vFN2ezQSYUI+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hE2xjm5q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hE2xjm5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89FDC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728777353;
	bh=iY+9DTlcIV1PHt38d49h0Mt29cW3TYuF81CpQ5b3wt8=;
	h=To:Subject:From:Date:From;
	b=hE2xjm5qDR43njKTtjGk3bZeUURGl3gN/1z99xjektWYsUFNLh41xN740dubR42jJ
	 /VhMKtD6BWY3HtKh0KTLjCTyi8YEtuMXPsFHTIqAgprYTYNxGieYjociwy7H6IiFRp
	 VLGbdPW/2QU9nL0ZNI9mnx19CZ5+HOv69YjV6MHB9bgVYPZvIING7vX+zcBZ78RKuS
	 rI+sHcIgPJKlTejQbz41wqxKZ7lY8Iv1qVy8a5izbpyV8J/h5l+qedKLPdC9DNL4ZN
	 kRrKD5w2ss1FHNKx6zGYChP9ONB8PU4YTNGH9vWAFilX8fsgXxrmrRAZrPM3fFLyXb
	 C8pjGIcD3vl5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DB1CF2588
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172877735360.8603.9084497686789705846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ec1a91e8d1eb2724f4e7a8b543afef2d8fd824b21f8ae70cbcc0db681cf2870
Date: Sat, 12 Oct 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728777353
