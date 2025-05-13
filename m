Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351472BCF7F
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747144194; cv=none; b=HjgqphTHgq3Vf7yQnj6EqIGSuaRxj1PjEvGl3GIAyJplYXjI3QIkXEOyZrI2AH0NURV+FFKl5rQE7kD5FP8iZ416WSFuXhvvgsw5FZqYrL4wFU3N3X1PrLHirgnwF1P7CkehVt7P1zx+IlUMv1zU45KU26+gPAuMsoLe0FvBQpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747144194; c=relaxed/simple;
	bh=NJUvdm0TkdDbIQOLA7djW4su2j8bIj/2rk/Wq5ZzAEU=;
	h=To:Subject:From:Message-Id:Date; b=LZ4Bdgt/5H84HvsUc6n6YDnMDFIhPFsHqHeExnSExlZNwA7uw1jRrKWI/GOXmNRsItwyIBz2QTnFvYNElamtgY4Abmpy/LHHDWvtlR/q6Itsi5aEpRiP3d9iayQ+AffERwLyxtc69PiHHDfqTS6yUYMf2NyMqDiagwRCHNnE7w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3zzqnPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3zzqnPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0089C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747144193;
	bh=NJUvdm0TkdDbIQOLA7djW4su2j8bIj/2rk/Wq5ZzAEU=;
	h=To:Subject:From:Date:From;
	b=D3zzqnPkEovVeJCGzG4DwltkMQHqdLBJI0mCkQ1/L9CHDQdW8MC68MQYy93tDHzuz
	 bM8uYV85ssZkB15r4ultqM1y6eH8BeU/z3OiczOkWtvc1EjR2c5teQh3P4u0Zw7NOo
	 qnr29WSlh/nimLg5bpnyqOVXrXA/n17mtLeK97sjpIfv19EeksKG+RMcSjL59Jdvvj
	 LhhdFiQSaZ9s9eqoBxphTxrtilxXfu891Nu9iAV5QPlXMyfwoRw0mY9iI1shlLNr+V
	 5DaIj/X719RmFMA8RosXYpjANykG1UsRHkoFR6ORI26DCvwT6DoXEIo4Zhpi3i4SBJ
	 LV9CwvGbedQEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDF3C3ABCC
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174714419357.32122.13570928948346881405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b2b5f722eb6aed632d934a17744e976664704fa2986558fe702d6e15b6a933d
Date: Tue, 13 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747144193
