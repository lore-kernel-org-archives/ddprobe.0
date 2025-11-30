Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EB617A2FC
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 18:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764525774; cv=none; b=TRibQWeWJP+H45s/q78fzOpKULMebrbGPV++AlK8pROy2DbK0XN7KNZnir0Y7gsOnVaT71EvooT9tCbl9KI0KNpJgCiww1nPDDuPZtkrY9UbKj1qpSOfQjxAbGhZLXausFwl7VRenlxcyMbCqMe+fIg0AKprcbI+hRlk0DKK9+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764525774; c=relaxed/simple;
	bh=Rpl7pLBKGdDpzrCmub6PCsdGn417l0sxBu/+MhCOiTU=;
	h=To:Subject:From:Message-Id:Date; b=l2eoJEd1HCSdW/1psXdeBsLF+8X6cQ8MvbzLduhv3giywi/tU1o6iAnSQNaJrCOpj4SiXG3cNfwmClaW3ek85q7Heum8OZTe1LETCkZLuJ9i3a2cjnqyOJivbAldGyasGFd7GpmcoPfCCn+rvbvd7xyOSwQEKYRO2dzU6CJyfv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JT+PUGDz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JT+PUGDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52FBC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 18:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764525773;
	bh=Rpl7pLBKGdDpzrCmub6PCsdGn417l0sxBu/+MhCOiTU=;
	h=To:Subject:From:Date:From;
	b=JT+PUGDzC10JrEYo7q1dQD9mTCIKI3rLykOTv7JIbKsAyO3wXUxQZwezE3AhfzE9E
	 gKDeJ5JfM0z4JUH/bUOwWOCe0UKj3+CkUB2CIk3Qy1fPUXplsMzjJ/cjXtsoZTZ4NS
	 qSEvr/djnBtkQ6tgHk6VOYvPFKEwKyrHgMlZsfDoZPyemsm4A7UV+d+1K4Uf+as0n1
	 aG7Gm9n+aw3IGOzaxLYA1hzD11lLYdwag4eOmgmdkrw+rLLvn0hggKCOlVQz4ZhPV/
	 TC5G5tlZ6uZNyEorGUK6YvAPfde2ArgGqd+bLcCtwr3tq/iqDUEs8HfpNI9pd+09dX
	 MsrjusumCXzGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92758CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 18:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176452577358.1393.6705061854533700182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a12faa73044987e28b01fa1b0e8a76268609282c40202a255072a3613625256b
Date: Sun, 30 Nov 2025 18:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764525773
