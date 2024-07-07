Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74928524F
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 08:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720340183; cv=none; b=WV2vU7ZpvfQKy98jL8Lfo+7rR6p1xgIbUSQaH6uShdj+lRFB0KUdaBgnCJq2Fi9fT319qbRmcrIsw3BRHr4AjQ2e6OceiNQyJJrTNT8DD1EZPfAeSzg+WXvFblljJ8IeUrWJjzNXEqRThAc+HsQRdZIdEfhzS7zPnbK7uXMEAZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720340183; c=relaxed/simple;
	bh=ZnmU9uFuJm97tgjr5J1DE0eEXYZm8EXJnTUBkhJJi5Q=;
	h=To:Subject:From:Message-Id:Date; b=dn9AzxuZDeBh5WSeqnvrHbJCjbXoAWUtah4EU6xwxw0X/gv09Nb+eeDgd7NTD3vvGqajqjcmmeV010sAkqPS625GSOELfUZE/IsEckthS3NBSQb35afnWkA3a5ZOqsHpPvOw17F09dBH1QyL/lsAHdRcVmTlYThWNdNVFpQ0Gxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtqe1bhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtqe1bhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DECAEC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 08:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720340182;
	bh=ZnmU9uFuJm97tgjr5J1DE0eEXYZm8EXJnTUBkhJJi5Q=;
	h=To:Subject:From:Date:From;
	b=dtqe1bhNkeEFfpokGc6gTEmKRbadFLpJlJQDuF6hKjD+9xZ0MOFXbcdF+/1wq+gJi
	 P4g9uPKBi3PpqUiGDq2YBZQdf8c0QNYdCbVGy0H+1tR9/24AgC2mDu7UKdqxAIhmAT
	 03Fi78iKjIWrgek8GZSqC4ON0MUT7O7YJz8LO9W4orcn2noO7Lqe5PHMfJSL5Ww80R
	 8T9EOl2g2ih/Qx6J6aoKS8Eh5s7WzjCIj834Tk/Oq0E7/wl/DnMZkSYpv50xeaXB9x
	 TlrVn37ImdzkGdMkPNgDb2UyqvTISUuNIi6KMSmEjl12Pyj99MyLmM9Ahl/+d8SRR3
	 IQCG9Pbqsl0Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA82EC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 08:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172034018281.6638.215919426185635054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69bcf866c4188eff9e028605459a3b3920d06a832b1bd83153e208ceb0d63374
Date: Sun, 07 Jul 2024 08:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720340182
