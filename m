Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C38D21E3AC
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729029954; cv=none; b=KUqZO/ivtumYXw1Uq94PIhxMGUYeVpgTeUQq+oNK+5ilAq8XCYKZDAza+9GBxuQthUdfvoI2NZpKwk7KuyiFPDxk4F1zaEyhut8O678KJLEuUpz0om1r80Dp0Tj3u9u9kxbBxFfX2k+uOcdaXW3QiIETR44djyxGQZrUqSs/gmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729029954; c=relaxed/simple;
	bh=uMjem8p/pk4au9oNwqlACLqvNqA+RRGxxES7GlYS4g8=;
	h=To:Subject:From:Message-Id:Date; b=DFL8M8RhyUAgl5viL1Ce6jl93osJlc9lwxVQM3zpm3gV3WTagAFj4zSTKFe0frXoGbyUpBEGXZdQYgBjcggWM4ZMIHCZOLzddPb9ytC25IKW+qMhgJpgd7Ahl6bqhAL1likgtBMmvvxF+0f+UsD3VnvQKrJIYaBqPOwJutMtn8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQEtiMN1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQEtiMN1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CD3C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729029953;
	bh=uMjem8p/pk4au9oNwqlACLqvNqA+RRGxxES7GlYS4g8=;
	h=To:Subject:From:Date:From;
	b=qQEtiMN1M0RU1EOam4ALzWfGPQTYZJQvuq4vFlVBaixh+jDfRiYSYNK0b6G2X3jmq
	 6QWaMADzI+imLnxtqzA1/R2esAPhsTr+Z3NAxTIt8HFuO30ntB0IlwQC8h5ja8fP+o
	 jajRhGgGtsYHeBM2zjTrerOmQZTRNXrjnWIbNPopwpc7Nli/GHuD8e832U15Qq3Qr9
	 sW8yisJRVgyNDjG2a35k6Kag9g5DOJsrje3IsuOcYD9r08HRLS+bukGKEHZLGualXC
	 uuOdGS43e5y6ISaB3N1hrl1M4yi0mVM8N49VMxS9lYW6K9C0dr9FDNI1pF+DUeJMmt
	 d+UBhgU9jb1Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E50D20681
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172902995359.6621.8590233323703032363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a671c1c0ba016451ff3da81d13bde95f4e652536fb5c1d3a9408591baec34b63
Date: Tue, 15 Oct 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729029953
