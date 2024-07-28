Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060F98BEE
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722150954; cv=none; b=jiISRDi4V1QDCgq2DOew5Q8H1yF0wlY+6liMxe6JFf6ez5RJ79NTtCsCAuWudY9rRAZxbpL5kO43NtdVzS1h3WM/PwOIE6U1PnfhSI2K0SBcASzrWm8w1x4eRdddLFp42mkMOGY6fPRGRw0xfE4xc0Zkz3U/ImqVVcp0tpgJqx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722150954; c=relaxed/simple;
	bh=wxsem1xmRUYwS3mGAl/v/77zuJTEGMv54vW9PUZSTGg=;
	h=To:Subject:From:Message-Id:Date; b=Ja7pxMI6viHB/xmDpt5pasODvNuzEoSBQr5VWQ7VGrm/rtXmRZOTJ2lY40y0wsULVaVRjJ3bggHWyLL+0k/YMH63asDFcvfDrmZPKVqXh08V9XQvxz1J0N7iZ1yBpuQAFBhgas6wY46aQcq1AMWIjr/jMR2jjtYxiM+MFIz147E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnKtEsZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnKtEsZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5BAC116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722150953;
	bh=wxsem1xmRUYwS3mGAl/v/77zuJTEGMv54vW9PUZSTGg=;
	h=To:Subject:From:Date:From;
	b=TnKtEsZ+UX48nLveYxGE2eDV1PA0Xxe5D1rqlr3eBntlz3N10m1B+rhkqo7x4phzH
	 jFcXXc5dehiKgoPWLdMJkX48ug6c56tdkhVrcxmEIvz3P+oa8J5pFChBdZOia0D9LE
	 +1DTF8aYWWY21K9IniCs6UXAHvsUcwvmmuWT91InThngalBFlusYbEhOLXeqn1LQiz
	 l/nuKnL/TkVObOj7xRJeQf7zYBI7L4CPUKVYFhczUhJ6lm0yjdO8ccEuOCsp6dxM3U
	 aNKNFwXqG0umkYymnr1tAyEuqB9UPa/wCRF0voPWSnR7/JUmCR5YjYIbjrQQEIm+6Y
	 cHZ5KzEAmF1Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D85FC3DA64
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172215095361.1989.12062285011617970892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c99af1026a902a7eba84b6e48ea10a329dd0dfe91f5a18676f4a0aacc1ffbd0
Date: Sun, 28 Jul 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722150953
