Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326B23CDBD6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 15:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782228394; cv=none; b=PRKlUr9l5ywopEWOC3EESfM8P0K/nt8MHIv6yixmZ2Q5XuunF+j1jZmPEVYqU1lrcp8S11IR3ZrVMTtcfhYDhgqgbvoovP23J3SQtPLouO7VD2sCVmOt+UfQWuvCiJ33G0YXyVCKwN0d2iMRO5gTV3ICYUPqwMQ8yda284i2M1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782228394; c=relaxed/simple;
	bh=rlao08162goDCwgbWwZ8xM31R65kTz9EGE/LsIZ01Xs=;
	h=To:Subject:From:Message-Id:Date; b=tHMWXdVGDkLdmuyfHuc2R2+RbfcEWr3IO8lcBM3HrpN1O6KK3lsgZcV9QYlpzw9CTF6se6cdYsN3R3+p9CkZCkLVO0yWTU6kxbxYxKBnNMSxXzgu0TlcURs9E2e2bhYfMPeipac6AI/KlFT6ZNipteIngC3pEaW8A/Y8LAas7Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICJYQDfv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICJYQDfv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA074C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 15:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782228393;
	bh=rlao08162goDCwgbWwZ8xM31R65kTz9EGE/LsIZ01Xs=;
	h=To:Subject:From:Date:From;
	b=ICJYQDfvrYASJt/LU1UlLLBlmiGe7Y140TKxzXP6qLMZa3kUxg0Z2JD7suJelmT8u
	 VoONIkU1FAkWWMf1u1eJNvvh5kKR+5BNz4Uy3RtFtjR2011RqoUAzJkvuKK92NkVkC
	 R+drFnOO06Y8DQgZFx2yvgy+dGtoxxlbullBoAfAhO2hlcGqBpdZEFJncLh1XLgs6G
	 N2Ehv1EQtNFcWGz1veKhkZMTHb8lDFYJqiHOh3wIps4mzrBCuBzXQSIBjCcL6hVdzK
	 EsrWXDDmLmcMDwDzS6MAIpQA4MddNlj0lpp0PgDT+UpEdF6IcwFE/vPu7IkorGg8dI
	 r/BeOwQUIsADQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6D0CDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 15:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178222839370.23834.3328830892942362839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c53c7bc0f83b898d79059a016a33de4e3e1938e1baf20de7efc569af414637
Date: Tue, 23 Jun 2026 15:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782228393
