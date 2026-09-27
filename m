Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244832E2663
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790509834; cv=none; b=OhL3O0YU6uCV31qOcylkxGJEFUB5aCP0gtg3ZsvguLLMCM/SM78mtrGuq+OyaTViMhZj4AhLGRZzYrJPKntzdUQnk77T1Kq5KGbRYOkTnaO+M5q2yRAP9sqoLdFYjCTU3kTbraDBiLwx0CbHLmMsqQKJY2/Y+XKFJ+AwqTEqyWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790509834; c=relaxed/simple;
	bh=jTA/Wv5G3oW2fVfcd2jUJ8aB/J/TPCxcL86DGY/PJjs=;
	h=To:Subject:From:Message-Id:Date; b=PDEUxi3aBXHr1f6Fq8sVfXtCvjy75E785v+YKk2NhGqU5P858fKojn9nJoC+SBi6qSC2lJORRwFsEoyIGRgSVK4vRnNhfbSY30bwzchMNmJC35EBKptuxgGH4svk6vpB/+92o1/sLg4/cM9HLBdAY90D1kEUveO24fZwTCAdFb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/rIrCxJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/rIrCxJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB68C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790509833;
	bh=jTA/Wv5G3oW2fVfcd2jUJ8aB/J/TPCxcL86DGY/PJjs=;
	h=To:Subject:From:Date:From;
	b=A/rIrCxJUU0ARgnmXyaM8xXrWXunUGQHxzBZd9Bw8gETU6VS6xwgip8Nzaex+iiSX
	 XhVxXkh7u2WjGanjEpBwWWdf/AtM+3HNXdoLaNHEqo4Ws0An6+MVphR/md5R2bbKE4
	 e7QcvyCNNV3s/Siz5yPPkX56AQ/f9Z9WKg4+zK9sytWJDJ9ammeUCTihQFb0F3Usa7
	 Dk+RV56BLfMZyKqgaX4U0DDISeDBqL1XjgkCtjw0IvW9Wv6KVlWguU569C0sC70Qee
	 TJoWrwC99q/RfoBWDs3DgZbHqfDWm/yqvp3tEiW69Tl8hsFxIFITOhJmYILeUQS4hj
	 +ef37+UNqVeEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC42BC9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179050983369.29292.11736267006817505760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be996be1d708cf8c8b8e4092df2148c4b9edd257f32b4652730ec47c8ce31ea
Date: Sun, 27 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790509833
