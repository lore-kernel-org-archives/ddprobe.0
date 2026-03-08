Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2531F387361
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772977494; cv=none; b=DOtY9B7uiBzLmdmQceKrD8uX3k/zB1DuBwn5FVGvQrq2RkIxmAzOjWloKItuhn2HR9a6bQawyFOMJ593Vrfz+NiYqGeUg3XxR3gJpSbIZt1LBY4ng7tpcIZIU+Lt6G1SP+ZjqfLgyR0cDNQJ0LTpCJaGJkFB0QFHsSry0GyOuhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772977494; c=relaxed/simple;
	bh=zbtEm2XSl3HFTeZyzJZOrAJybasxQm15lTH2WoTXYxI=;
	h=To:Subject:From:Message-Id:Date; b=TYZ41fFNq4MSawtOC8idGwkfe/3dFYvnOU1/6c95VH8caTsjp62hHdFmQSCsWRd4vA7ils8CyC99XkzSUIZcMY+OV5Md3mpIVDcvGkv+NjXYsOUDIUJMGoiWRXObM+B4A+2LxJGY364rXpRY5Ae5v+eafmGWR45qd5MuBjZ/SdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ov/SCtmT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ov/SCtmT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79A7C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772977493;
	bh=zbtEm2XSl3HFTeZyzJZOrAJybasxQm15lTH2WoTXYxI=;
	h=To:Subject:From:Date:From;
	b=ov/SCtmTs+X6jaSUYSpQOHqPBfRqZjgyqk5FDcKRTREbBVNpfixje6ls7hRPiDqRF
	 ugshhbQQcK2B9gW8COGfmkyIeRtXlW+gm7ivu4pyXJAkZDSe41TLQJ0D+d14/rn8HF
	 w8nRpplEauKEl5xUSBVgoRoE6HPJpxWzHzhUTW83PrympuNALVycPHUXnpmNhv49JJ
	 TzDwTFAuvQgLU3s81gQHHsBpuWDxsQ4HUMd4Iu0GSDf0xves2UG8oFis2RsI4HTvDA
	 XNwSQ0kNMuCCOL2gOPqESw4RCjYlTMU369b6LiIS6BTMV7IWNgsrtS1r/AAf5Zm7gS
	 MozCZFHV7Y6uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F1DF55139
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177297749357.30548.18309637847645134758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb78d114db60ef3bf73234f7e8c64d14168f7d2a3d3dd25d561246d65f372e57
Date: Sun, 08 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772977493
