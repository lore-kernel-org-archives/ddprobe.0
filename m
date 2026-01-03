Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236292C21FA
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767434634; cv=none; b=Uq6PvZsh/kb2fm8zu0maRAclUDOeEMc4FmM5ErsxgwLM6n3uAvJ6q5zA4Artkpu/VidlZ0de41n3IoXqgi9FN+nRpBq/9EyFsM6msn9sBexCMjBXOcU6HojuZI6dcGMK8MaheZeBMxMPmtdh9kubPdOc7w/oimfgoevWb7HlbLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767434634; c=relaxed/simple;
	bh=bCuKsJLMs/BFMVibW/fto5oMjoCFuzLrcloxclgx3qs=;
	h=To:Subject:From:Message-Id:Date; b=ZCfKN9f1btuxyGsLIzZjCZQnVozP0rgmD4nKThg8bSTsFe5o2I9IZfP6gSXUdOYfVCWs8zF/oWCaM7ipyUbH3W9O3gnt378AGXs9EdScu+UzuDtaFw+FJaFC2Ks7RHje0m9juBjLxfUj23smrxa8/vbF1Fooa5y7S3wbw+9d6qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jioxPJyQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jioxPJyQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CF1C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767434633;
	bh=bCuKsJLMs/BFMVibW/fto5oMjoCFuzLrcloxclgx3qs=;
	h=To:Subject:From:Date:From;
	b=jioxPJyQbvTYkD/4MCtc8yt9lU3NqWjn/P4hpIFDRZ97SV5BrRtTv80jjyad+DYGm
	 Ujfbf/3/EwxgQDvV17j0aNOWPpUEq7N4/cJoD+W3WmInu8lZ8enq84E0d7BnEAMK42
	 m7HrRIUnYXNE9I19uHDB5R3zbAXxKa6+zo2UYPyluehVtGTpp2hqyP5CKroqS7tcQ6
	 6svAIetdoWN2uCK4l7bMnFVUl2q6KQ4VfFXM09WqbF9Bq5bX33cYLWhrsPBpaOtNYd
	 GyEBxl7THU/JSsXKZO9HtUouD3HY8H1soqGWFbG1uduq2jxvvQKVt2Eo4xRjmnJQSC
	 LmqedQI8OjSVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94254FA374F
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176743463359.19492.18351814442399796109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1d259ec025d02ff4ce1200412c2e4fc704869f31dfcfaa96cc9883c7149f2c6
Date: Sat, 03 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767434633
