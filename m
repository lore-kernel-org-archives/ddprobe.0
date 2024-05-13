Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E55175A6
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 21:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715636543; cv=none; b=u+mvQjGZ8FJ9iWtuCkmUQCBoXuM6t8Xw8c7ihlMOVk5S3vNdUnLVUFqh3xJuKj1qeEQnXeRdIXHkpcPmOCne451zQprnQn9BwU0SbhIbucTha/Fdu5p2Pq2UYUjJC1cGF3vYy5oPyRLobQZQXHfDcAnUAL0lRQ58d3JAFNsbLR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715636543; c=relaxed/simple;
	bh=OqdCveqROaCyhv2eX4DSjR+MncN4eBlkmRc8Hmi0rak=;
	h=To:Subject:From:Message-Id:Date; b=C39JLgWedwRMkrQLsKj55IR1X9m28weNmENb6Vq47rmK9/1OoFI7qjlm2PrNT9BNIsrWUQH8gl4Ue7JyMJokm0hkASISiFyDp9Z5rs7+7dxDc55hG7Yxwl6gq54QnQuMad8PpLLfn0P9LRTDybuspBcgGpOhsPGAC5Rv8ZQ2/Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6mZpuYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6mZpuYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB3FBC113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 21:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715636542;
	bh=OqdCveqROaCyhv2eX4DSjR+MncN4eBlkmRc8Hmi0rak=;
	h=To:Subject:From:Date:From;
	b=C6mZpuYe9vWvicj1XTWbji067LGOAgkjEhI51D68wVX0v699dxSyNRY+dxB8Wub4l
	 1kFOALk8I6vbkEJEzENhTmRDvUCo5ySyudtdVfo7f1jk2Aq/IEv3xl0MHrCA6g+6//
	 Ansl5vQYG6epVd50HMFn6Mzu03xTtB7PybN7Ffw1KXRtNqLGUs1WuFtYzbwGJ5uTKb
	 dDwZFGyUUX4Q74tHZEredZTPH1ax2uNhRVlzrX1RYaO9dctp1D+koOJYIRjTHo3UDY
	 t8IKwetTBdY36hrGwoEOGx0pp+ad+abmJWA4CfRzKqk64i5rUvjxnBZ+/xdwNO37Bg
	 6aHrFkCbLdjSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B07C25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 21:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171563654277.22550.16128528641411414306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9b38736369898601e2716ff56b63f8eaa06dadb0f018432dccd83df5dcee40e
Date: Mon, 13 May 2024 21:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715636542
