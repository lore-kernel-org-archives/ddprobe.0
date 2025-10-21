Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2696D285C8E
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761015594; cv=none; b=nzasE6KvPIkKSs+BkNSI0/7HJq/xxByozXNubs0J1xzP/qQ/j+qkmhaMm55I/us5b+RcR47Bw7FzKiamWJD+PYu1zm/9G+nMnUGf8+rzhUMi3iDQTobJGpDIjEXRt9+80F9m5+QXpehmAgzAKgQOKfTnP+sDGwjOqb1KyRUIzaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761015594; c=relaxed/simple;
	bh=H/GbyLzWqnY+ROWWcw3si8kV+90Y4qS2tcq5KdngLxg=;
	h=To:Subject:From:Message-Id:Date; b=QKYnrjnHEhZ2U3WWQdx9rYttYeqdepqo0ukdZY9hmgECQhyOdsWpdg0uKkz1x9pN8zRmpzNCvfKkmnnE7F3ohF6GCqek/jpsesg9m5Emfn2Yl/6aLiOzer56GNHLgFfh8EIN1Kh/UUsUpu2+WahDUIe+E2ULOJo6by7SLFFX37I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jTWd9HOX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jTWd9HOX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8043C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761015593;
	bh=H/GbyLzWqnY+ROWWcw3si8kV+90Y4qS2tcq5KdngLxg=;
	h=To:Subject:From:Date:From;
	b=jTWd9HOXUbJ6cBnuZMfc7i85jgE/usyyqv7cPOKis7q6ICFIEsziraVqZOo7nYTcv
	 Y64ZcJE0lCoMcW+JxykuYOt3Wd2hp1AqYQMfKGaHkZCaooLEKGo18ZTY1Z1AqXOpcX
	 d9AxwJvJp3TQ2S1UCrosgDtu8VZJaW5JggG9Roag0Kr5k4TmfJo8Rjp7I6NHAYN019
	 lT9/Pdg5b8guRQqUYtZicMzo4/gBhGgUqxL1blPXcSvS/Z3cM1/VMZx8+wh4vuv5+5
	 X9Dd72d9DWAq+clhJV84qLgzEGQHVzP1sC/jbtX7aTpJrBAMcqHor3zMrkLER2C6u7
	 VJ8bkzi7tDShA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E82CCD1AB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176101559361.21015.4975898659035480934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56af6d105df03f38a340356f5d063fe2a74fdfc4908a7b11dee661e3b2329a99
Date: Tue, 21 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761015593
