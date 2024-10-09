Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4709053AC
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728437154; cv=none; b=CGkPyMg+83pm5KgbHNWwKKNlBMjZRKpF8nFE9Kf8VBrUSePUQGL9kzcvwc0/7cfHj2G8pa8rJw14u92+98eHOSXmRW0WyUM5PQbjXTylnpE78u5N4ofRR9MLnV1gWeYlh8Ik8GZCFg3niaQ2k+/b9IdrsVr3HpKHvddgNJPZqD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728437154; c=relaxed/simple;
	bh=54udkEVemUrenthGOL6Ty3E97mWoGsY1oQqdrz1J/Jo=;
	h=To:Subject:From:Message-Id:Date; b=iuTK7EttLPPT1qIbg7oTsfaCE3fA3Rj8A7qPLYHnr4SLcbCi1YmAuoUuSAS878UeyugtpF+NyEP/lOfVIV4DkLAIGj4V3JxD4JI47u89NpH2aIfZHto0Bpib9A4j04PmHwITNu5mnc5LtDndUmZdH74G1oSpsEYaFSdKOvEuksQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDS2OfUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDS2OfUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF944C4CEC7
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728437153;
	bh=54udkEVemUrenthGOL6Ty3E97mWoGsY1oQqdrz1J/Jo=;
	h=To:Subject:From:Date:From;
	b=jDS2OfUUTt9ojoG3gnfOQ4EYKjhzB7YlPF7uo10Fx9Fl5cJFw5wmoCDUO7c+TGp8I
	 mRo+OeYulJZGJ5F2iCe1UpXlDm8QC7pAqM5KZqxi9JVkXIe3mTeEaVxTrSC6qpDjly
	 PjYR/0H5yyyDESKJT5X11dLAJlaDCvZYmMjx+GxaQCjXr7bT2lTfUnbUoaRa/pRHCo
	 VVV3orSE+H7++T8rb8Uw9wSvR581Jn56YgYQEgnp/unUi3rdA62IIKZwMf9xR330nX
	 trWlL7Ony9v3tEn5F3Z3h0F+1hAYweNmWmGDgUYwvlaejm+RoXIs1Y5Smqql5B+TXg
	 n7UTmhMwcngnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EA2CF042D
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172843715360.4951.6908807609382864358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d45008ef4ee145619faa4c97d330171bebccbdf9ada5a124c7bd985139b05ebf
Date: Wed, 09 Oct 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728437153
