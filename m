Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EEB2C0281
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762202994; cv=none; b=TZSeubaNFpw0q6x50GEd03VwdFix04OD/Zv3/L28enBoU6KaPcSRskMc4RYQ+o/UZ0ps6VaUhaJk1ccjOtes/3qJtaiEYtq7WCTu5gFgLlX3kEdOYA7N7IU8kPM/ji8wjNDaSzH2QiADQMQABuN0huQg9hsRPzSg2v93bwB/aJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762202994; c=relaxed/simple;
	bh=LfNjnig/E7+R6rOCVN8dWsUq/Gz9Vjn/Uozy13yltLM=;
	h=To:Subject:From:Message-Id:Date; b=EVw05FLAjrlOFn+ceGGbbtP1gzHEv+kP6EqMvgnXusx9KH+8XeD9EbwIiS9X4NRgDL9ozbNsVRZmPFCwexLzD13ZBKo2Z0B+8zn5f+Oqe3ZrmTh7e444doOV7Uv8e0TZz58qqNUPCSDZVvh5Q0vhztPiwnBUmauGCqkCZRqtEUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YteJ1axE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YteJ1axE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2A4C4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762202993;
	bh=LfNjnig/E7+R6rOCVN8dWsUq/Gz9Vjn/Uozy13yltLM=;
	h=To:Subject:From:Date:From;
	b=YteJ1axEYaDQ3COYoPxrn5dhF/RURtET8vFwYNqpJDaiaORj1D/nx9gTw0XAR7hWN
	 2dmhtShUPbf9uOKLeWnaUULNMZCQIKqrox8M6IwMfNX0q1c20IFE8Ma+PSz8ZUkwf8
	 gFj6CK++xjfUUbo0Q/GVVF3cYZR/tdi+SVadpRGF0HE0R0ET68ju2VFHIhj6Vw9gkE
	 ttXUI5b8IJqz4JYQuWYOjYwvqK9CeMfyM8+8P7dPwUvsZIvVvBm+kcD9xF9Gex8rmV
	 agi+oB6ZmDgVSBT0fbb9Irch4P19a56+4t28seB7qhXmPtAQOKXLzbFjlGAGQTSaIM
	 wSpYtITyUFNuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92198CCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176220299357.6792.11473846546324678775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb3fb5a0e0cb8e68b2f08ca96dc80e069b87f4da490aa28c0a50ae7dc76f1c8
Date: Mon, 03 Nov 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762202993
