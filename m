Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2169A3C1418
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 22:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780439074; cv=none; b=JFDRFT25N0t5OuGmg8JDZH0ES3+wBZAdboKhuuAG+HjjVNQEYa2b1kNHFeoNrL4Og7IqSCoZmCI3MNwOjVMupd2FTZIBS+di8gmOU4tlPI6aZPbXlBT9Oatf/YRSTjwxSjHTsdsd+VKSXc+xjXdHmBTBeM4TnD0S0nQgbe+MKNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780439074; c=relaxed/simple;
	bh=4z6GfqncYSlTBzd1wSkVk+4BZ+KrzdmMnsAXNOakaC0=;
	h=To:Subject:From:Message-Id:Date; b=Z/Oerr6Kina1se20zW9wlqHLwGxCWJRl+1tFVfAO4Cd7UrpVBTn/uyUC9Zsk+05s4Z34A8vJg2wEWJuwtvQnQQ2K5i2ZcR5KFeTsAVI3OWv8BtkUWG4VlaMMe/uplruqZvtEEKdpcWXbDkm2FLApgBlFUuMvyqZ3OuLk8VJDg5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lozavi6q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lozavi6q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6964C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 22:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780439073;
	bh=4z6GfqncYSlTBzd1wSkVk+4BZ+KrzdmMnsAXNOakaC0=;
	h=To:Subject:From:Date:From;
	b=lozavi6qbuXtP7ALfPMt8KJbxyuFJkEI/8awSyTiitmdvZ2RhS63rwhfbzkk1qioj
	 UkLzeHTo0KUMXfdJEXkPGYLRodUA1qkWKyCObom7HRm5TZZ2JSpj+Af8oX01N9UtLR
	 BDI+F/C7L2f8CYoKfyS+YI8n8IGqz06MbKhjfBKL9IYA9qPcdRD9UHvxHPEKAKjJDk
	 3M7ZyaghWisLpggCaoA3+2fs1KcuvUL8xP6kvaqpoYu6gfSl+ibvg+uJUXxlsoiaP+
	 gRiGfff+yU6mKSh0mATkl8PE4w4bWXh03lzFqM7bro8jbVkIdxRPqgPSGJoOcJglOH
	 yUmUAnizB5GRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBBCCD6E5D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 22:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178043907369.8608.14597882918061121739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 127247f766a3edff6ccfa9be0e05c7ef1263c813ddf7a0183531639f91b1b625
Date: Tue, 02 Jun 2026 22:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780439073
