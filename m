Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B39D4CCDC1
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789066234; cv=none; b=RsdRw8MJ5/JGzyBm9wzk2otYBDtAzNTD9IE8gAELstJvl0hLfAT7XEyFwUO/anklIznrT5T5Atn8aTjWyoeNqLO5cOVxZmxYBBRDU97gE58SH4ft1P/SraAR8QejxqXLGQe5AmtI5o6dXwldHzoaif+CkwF3Mfmp8ehJfeAtl6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789066234; c=relaxed/simple;
	bh=rHdEKBOUAg3q1cRD22zn+FnvLuBGMuCS2ODD6OrAErU=;
	h=To:Subject:From:Message-Id:Date; b=EfQU/zKRJKw56fG1wiYjX/kU6Fl1+NxYLwH8cnm/GxpN7VVDAcJny8jfOZ9Zj8FbqX9vJ4DONkpus9kZEr6dCTU2q/doZ9Q3U+uEocw+2YxuiXFQxHY20GdMcZm0ThUvDOZfFwj0Dgw6co0qNmE5po+iC/yznGr/dyFLBjNyD9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSxiYeY9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSxiYeY9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE475C2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789066233;
	bh=rHdEKBOUAg3q1cRD22zn+FnvLuBGMuCS2ODD6OrAErU=;
	h=To:Subject:From:Date:From;
	b=bSxiYeY9MJyAxGmR8n2fF3ZOkXztf9hvRR43CE+o+mnrxThKLRrrF1cMayMPbGBnv
	 MIAb5bKGjQDW/HWdQW7tB8lBiwOyFdmsBlzLjub/dgTBavJlKbhCE/FDeYW28r2pDr
	 Q13CRc7mq+VYIyOWGMDCR3qkDSm3oGMw6lHIcoPG9t8chFGqHh2M7hv5D0I5CuvN0+
	 EUvPbfRc3UEFH0ePEPWhBiatP6PjY9OpkY/yJ18aCJ5pm1pBq6louVT0HYRtUHKtK9
	 pLsyQQRkp0cP2tWKNRvElMuk/NoCKeYJ9VbICfYI1IGRQ0N8PJgKmMnTjFBqxQdwTj
	 dlHkaglvgtqvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CC7C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178906623368.4104.9178565502893486522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faf89c0880ba0c273bc96efc7a0838b3c82b575d9019300f272ef38fa9947274
Date: Thu, 10 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789066233
