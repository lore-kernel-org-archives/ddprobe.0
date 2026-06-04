Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245613BAD80
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 04:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780548874; cv=none; b=GmProOTE+IXRGTO08sIkYBdJxEQyXM7NSvKAxGD2XnlRoWybY7ZIO43OEibJM49ODjn41UGv2zLh3gR6PknomhPZQgLCboH3f8iEv8cYMDe7/OJNc2qlWnlRHJizuIZx0Nl1A4Rh5/zmJe4ogXiqWiDFUM5Ay7N9pFZVs6FiW9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780548874; c=relaxed/simple;
	bh=P9DXRRtlxdTKuMjkDA8dY3bWzTNW/JV6Yru/hV44+Fs=;
	h=To:Subject:From:Message-Id:Date; b=NpdG1Olox6qbu3mrblFXdqAsW72lJpEyb34iQ4Ee5uvgBpQIYz0eZSf7+qneWfGfz5f6FaNmJ58ppdfouPsY7OZU8gfHGRKKvtQETcEHIh2/sRwqfkF4JElUPGKGmX8SvgzjU3zOwQCra9YltnCYhJ840H51OjxZE8tuLWTb4bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sM8lv+Bx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sM8lv+Bx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9800C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 04:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780548873;
	bh=P9DXRRtlxdTKuMjkDA8dY3bWzTNW/JV6Yru/hV44+Fs=;
	h=To:Subject:From:Date:From;
	b=sM8lv+BxpHBndDKNWvhLokN4/gUTsXxPRLf/5uBbTy15L+lsOVR10MiLkpm82u6Yn
	 yMKFUxPdXd+e57M4mH8E52b0i2cFh7/Fxntc/4dSdi2vmeB63nGpxAo0KvjvB72ECs
	 ML5NQXA8pJ0pXwsRc0f/hdF5iztVh+SncbWtdi9Xx2y7YL349JcNpwY7Q3ju3rykJa
	 2/CQJGXF2VaDV+k95cYLBJM6+K63+GUqLE+iSWmXcRq/SrwtDcGeLGfcdZSuZp7JWF
	 FHn2vw7VS13hwLElPQy7fRjSQJabMkjDsw15q5HrAELqyOlDJPaRawFbGHd7SCndvA
	 ISAMdaVShxSPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD55CD6E68
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 04:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178054887370.7966.2582689924668698013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 847a74697d177e03fa95ddcf257de2e49bcb0dbb4ea0f6a0195c83f6356f3d68
Date: Thu, 04 Jun 2026 04:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780548873
