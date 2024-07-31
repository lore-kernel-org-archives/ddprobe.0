Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175932E40E
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722428754; cv=none; b=CWZO1uOiHaB43pvXsJg9gMpHZqCsiDj8AS/5+jJssqAUNAHNxoxBFNBgaRcCRBrPz0b60CNXHAygn9Mz6FR+nd3KrmUnmGcCu+JGm6n/O+zWvyqI3OsE0/1nQp0OULMVHMGPzzepni97kk5m/o2HU4xRWF+VhCV8mZzD4fW74PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722428754; c=relaxed/simple;
	bh=Nya51SlFK8wjQjr+voSnUWuTIQT41vn3dicKMwfDSXI=;
	h=To:Subject:From:Message-Id:Date; b=S/pVEkCjx6TBG/pnzBVO8XJMsxFvhWI4JfmgZxvnjLGbIVVR6OHnJQtynDUao0+XdQsqsWBJv/7s5x5zdQ4llegXE3+jMGSoXvjUBbQ2GyjniZeV1O3/P++6ivTXt60PMkRzjPfO50pTtzYHon62gKgNuZZZt8rae2zaguooQkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QcUN3CS0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QcUN3CS0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD8FC4AF09
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722428753;
	bh=Nya51SlFK8wjQjr+voSnUWuTIQT41vn3dicKMwfDSXI=;
	h=To:Subject:From:Date:From;
	b=QcUN3CS0vfF1qM/V8CpNE98+00ARw3mxOloRk/YyFVZawU6RFdUMI1N2OcMVp0AR+
	 Xnkj7ArR9BDdRbfO6jcwd0/SRnJJz6RkyFBUsfGMjwW7T7E1iOW8LyZbDVUqblQG/r
	 /AMRj2iXMLcQ60RJAxMtln3i87Xqj7V7+1WmmVSDQNNfmAjE+Iu1qlqHdgg9ZofsJp
	 5J1QMHcK6+B6gGK/E4jhEW1HFDHDD89lwR14CUMKTCRDSQXXilIAx49etL1LIDHLMG
	 jfOrHRJks90CaHAGB1uZVumHtmbnzi5rMnuDL08Y/zEV4yhwNCuxJBwpOYuf2+p4Fz
	 Fx++N+HdK897g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E56AC3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172242875357.6246.17364727557494886700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 689f781d0a9a2d8af83bf46546561f9f83158baba829e32788b1321390a89582
Date: Wed, 31 Jul 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722428753
