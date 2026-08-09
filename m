Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FEE242D65
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786293034; cv=none; b=AfkNrnlBcek94AZfii9W1QzAvIh3+KFLaEJVQoWLDoc+m87LVohN8UHEXY0g2cXoTbtVD31ZFdY6qBJEnzgIzK2LN7Z1q2iHHfdrL2ZVRHYIKLi3wIdOFIbkrGeL7aX7IlpipQkA1Zh+X84QnrqHqiDlUx6oWb0PXXROaDzFLI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786293034; c=relaxed/simple;
	bh=0AMQbfqPkqxTgDg8NOfE+lOBvSIidewa8A3Pvmb72n0=;
	h=To:Subject:From:Message-Id:Date; b=AAvlYXx75mcFrj2xMTt3uQVqR3/4je6UBoJFUGMzRlZ8uu56SxuGwnH683ZyfME+dnfDOTpxTJutbKn1hNG+W47plV+u193BDoEsViyGhly4SpZb+/dxKcD71WEbtO8DkRKgNrJrTgOjnAL+TxlC4iOxW91yo4g/0Agrfq3AKiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eOB4v3lR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eOB4v3lR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F54C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786293033;
	bh=0AMQbfqPkqxTgDg8NOfE+lOBvSIidewa8A3Pvmb72n0=;
	h=To:Subject:From:Date:From;
	b=eOB4v3lR+Eqhrt93ThV5zspiwsMF1FYwFcdPbWo4UqLFrpPTtmpHOk/jvQNVfdeHK
	 m/u95azoDNVqSjd3QjQEOq5P79ZLckB5z/qZZ4uooDumaJcnORAOty95BWdyvvlygE
	 GzgCpUmrwLG5p0GJRfDp5Drqvg+GR4pthbB2qpABmnzeQjV2n1SRifjSb09VmFb90V
	 Tf9v6LIjNGTQ00BLI6VkRS5B0by/D6j150kveRnlshN15xwUEq/3H3Gqn3xyHvWdT6
	 AstCN/axxTwBjSDrSZs+3C+eOQGAVTzMkV/nqzrcpux+CM15fhVdfgAc/rYvL7M03i
	 Mk35PcfkIY7zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7EAC5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178629303369.31146.15504122228366313985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b9c4e8fa1baef133664367bbd4b89a390fb044f2bfcbf7912ff498b6a8ceb4d
Date: Sun, 09 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786293033
