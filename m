Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE308827
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723910154; cv=none; b=AWlViro/WfX683VR4i+DY7Uyp7Td4yW+qt1Y9gHfy7K2wQkdJmrqspo/+89PijWuz93t9Wo1XWxzPgJPybvvFTe42Gup+iyEY/oZTOyQ+AAvIiDat2jLX08sRGxJ6FfVTJieRd+ZNmYfplZJ+JXTFz4YJNm4nAHbCXya7tYEm8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723910154; c=relaxed/simple;
	bh=8syudGVK88+roLDOe2PZEU9ZkLryng27BNMhKOBRSTM=;
	h=To:Subject:From:Message-Id:Date; b=UvsfObPRExIgbtLyZuLBJ6fXTINyyL/UBF5TgtKEPrIL9RWzIuEd096y5KO7CfoRC/8MPl3BqLwwz6OHJXb3Ann6U2uRvrBsLXpUln0KE/Xpae80vk8j64q/QGOKSDozGza56T4tWQma5YiYh5X6V//jAi4obqTYetYkB8hWias=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VA4vfs5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VA4vfs5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66A7C4AF09
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723910153;
	bh=8syudGVK88+roLDOe2PZEU9ZkLryng27BNMhKOBRSTM=;
	h=To:Subject:From:Date:From;
	b=VA4vfs5W8G7zhlc5SVdpQk9VfuwEtD27Qunyx+l1Cu2gsZixgA/C8bItwymOdBa7w
	 yHgoDZrgT5Bt/34SzYhvUmwoRHqEmvA67n89qbojB9YxbMrT6VnhTrGvE3L1kpDabZ
	 fIzLXYp1F3kKWMKjy8yetuMbotvaW2dlsYHYFz/mYA0X0xlnYswGKjG+JxTOPy2MhH
	 MWS4Eb9P5KCba9yHU0Cb4DbVJbPBcX/peTprqkEdKz1nsUwXZloLxCjrtuwJe/LT0h
	 BX20JSm4h2jz73p0MmunlKsBCjGHop50nJc1Aedt0kBSvCnbciQpovazV4Di3uY0aa
	 Sa/Jvxszz8Rjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C22C52D7D
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172391015359.32094.10737858522552409799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1c2e4722b45cb54f6bf1f15747fe44664398768eeae5e030d47132f6c755d71
Date: Sat, 17 Aug 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723910153
