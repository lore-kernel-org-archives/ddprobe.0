Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04716768F1
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708460297; cv=none; b=KjGVDrWIvs3sm6/MXiukbwRHnGT0xQpcpNmkajRYhFiWGIP5y1hoW05U8J7rQClryb0wCkBTi3jmS61oXJvtXfmRQcgUbqvoC+ANiJHbOaWZOvii7zIOsEsEUkUNQHdu4WgAgxYjGorLp2jqRptFwANBDFsKFap+SdTAyTtBENw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708460297; c=relaxed/simple;
	bh=i9qfVbxHgV/DaJteeNdv+1k8fIjt0ImiC1SOTRMnoF8=;
	h=To:Subject:From:Message-Id:Date; b=QDnPi+YzYWsZqyGff+XTUER92pWtnfwFJjQenvHb41C6CPshj+p2/IYtfiLuC+JPmWectirrsSxJigJfaKOQ9RlzOEssb3U0owMObPhXI6A2YnX/2ZFKuOFTk2wISYlTTZ7Hogasm5UR5m7OJMcHmI4UNLLNXvcoMEVKDPhYyvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8EWQH4a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8EWQH4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 805E9C433C7
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708460296;
	bh=i9qfVbxHgV/DaJteeNdv+1k8fIjt0ImiC1SOTRMnoF8=;
	h=To:Subject:From:Date:From;
	b=s8EWQH4ajSBpBxbqRgjnjSNi+131VTBd/J4g3PpBv4vQNnZk7f5XDUj+XJfvr+uKf
	 iwreJZ2vyjbmrc6ZoYSKfmMdZUDUTt/dVj1l5v7uDL1cfTOsvdglDu8gUtgDlofJCV
	 9NHN0cFUruc+DSuYA01YwYOfQmdWSBTPpVp6dEj6JaeFmQwxaqU9ZTPASqifSoJp67
	 /bBDwb+3WxjBJekNZQH0+OUeZCDThDVcmj6cGATJtZIDGok9l/Bb3ao4WbGeAIlBS4
	 IxewZnrpS/Q6+e8LBdqlPAzL4uift/feQDcpwTPcONQBDPDCzAhZ8UXz/SCatlyD2j
	 tA4W3J813MaAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 638FDC48BC4
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170846029639.2084.3636503982418178583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b4b14e20ace2c342e51f1d1702b20f3b017a7be92cbb87d8983d8cfa7330d83
Date: Tue, 20 Feb 2024 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708460296
