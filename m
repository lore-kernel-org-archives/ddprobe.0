Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DC02DF68
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 05:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763356314; cv=none; b=osb3Wifgn40SIcQbPH7OUgoeHIQlUto5VBIGZWstKI9Ku8YD4quDLOXcY35tA3q+T4vC8cSSE+rxhZsranzsxSoe2fSJVEbFZwDxFCVBsvjtAzcr1XHeC5MtChZQkqdRpRo4cpt4pcR+Y4GT+riykmxQp97qr1g6PnZX5jc0qSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763356314; c=relaxed/simple;
	bh=/W/XEYbmt1nsyFLQ0HWwwCAygypB/AlEaKx7xer57F0=;
	h=To:Subject:From:Message-Id:Date; b=VaTWUhsZMcfvMrzEDUddYeowdofNHu3XoEE+PYNaY4GwGK7DjpAZ09ejnVLAhRiOaIqzJv+++OzieLIVdNLa/6KqxX7KQxxCyBfb0ISHwRooT6Y3M01ChvulxgT+JxKSC7pYxRFEttmf2tqaoLSNtOkp66VCza0am+0+NRP/Bq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMOuAzNr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMOuAzNr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4186C19422
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 05:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763356313;
	bh=/W/XEYbmt1nsyFLQ0HWwwCAygypB/AlEaKx7xer57F0=;
	h=To:Subject:From:Date:From;
	b=jMOuAzNrccwAMVztYl5CCCsS9ai+ZVy6010cd5XaQPVtNNLm3OSg3AEt74Dc2gtto
	 bKkqb/Ln1b5n6xwh1RKkT9CgQg+QQyB6XsCA9bQq8FvEhjhJPEv1hqm/StZ77O0iXV
	 J0U0YvLYRHI8K1PJQfmXoBZ/RD3VynWvjEEa91YSemEkfJvF7q+tu0hdDMKLMYL53o
	 C50HqxfzcNorlWt7nHUH4r5J0RJRzbjt9FsVN+89CBr15YNi9tReTR549tGGvB6899
	 2inx8iVnS1heu/JpdYzfHuaN0UCFajw4sWK9HW1pJcn9nd/p0n2Z8VBczHDylke3PF
	 suJ77LoHQM/bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A14CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 05:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176335631359.31454.8836559246612552685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b124ed894a213a445b30419f0fb1dba0ee9db16e838f9bb77ae4b1c3b2e68bce
Date: Mon, 17 Nov 2025 05:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763356313
