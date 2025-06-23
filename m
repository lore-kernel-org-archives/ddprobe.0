Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198971F2BAD
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750676994; cv=none; b=hqcEzr/tvdtpnZaV/hOuOQ9AynXVglFJdHrSlS89q8qS05FZ4j1tjntwK2knbxkeCFBaWfHJ2pQLmUL/VXAbPkrjxaZd81dU56yKMyj62ym33Rsk6/IfUYs8nItkcAp8gQEM2zvMmI064EXDPsSKXV5glTnqL5QO8weybAQHxtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750676994; c=relaxed/simple;
	bh=DM1l6LOTNzXKKCv70F4gk16qeyfBSo1oAWNbFo0rAV4=;
	h=To:Subject:From:Message-Id:Date; b=XzzmM1uLRpJe3px3dr7zbagUpmXi/5DTgjr3iLfND7vvcOcmUovVv2ZVbt4M/JWlgIWtzBgrPxfHpkkWWdtbDiYQR5TfKypREGfTgp8iwWfJmBF9GQ8a2Vp3RQti88tRYCAgcXFkpQ8aQ2i3O+P981sp4lYRKn2bLUensn8/LWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ox+Wv05O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ox+Wv05O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4438C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750676993;
	bh=DM1l6LOTNzXKKCv70F4gk16qeyfBSo1oAWNbFo0rAV4=;
	h=To:Subject:From:Date:From;
	b=Ox+Wv05O++5jKEAZFQVjzNiiDGjuN7QhUBVF+77QvEuzRYY3oXGwHkqjE/wTuGvHD
	 0azV0kIg1sURy0KkAAjYY0TzNmOwHIRw9S91iCyuZqjb3XqEXtIrZHfpX9DLJWnVez
	 R1Xq0siR6ZAKEJF1QkN/SaQoJ8qJNOX50r94B3jffWvv5+xujnfDCgvydEFbPtKuHH
	 8OqwKy6vzIbnJs97IcOY52rcsyncntcij5nXWorG6lTxnR8uJSJrBPGRTB4VoNFMnk
	 1qaoreFYJDpbC6Ur2VpjoKupUnPNpWYBoodugILPDZrGP+4baeNrGA1pGA5GWxdh+O
	 YSzfwnr1SU0ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925E1C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175067699359.13186.2369384638086706241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68ef6ab0e817e108f7b87e691e2c448af284975efaca5d69b3ebe681ae02bd67
Date: Mon, 23 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750676993
