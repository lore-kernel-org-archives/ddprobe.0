Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFE528682
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766623434; cv=none; b=NFruYw2WUPS2rQ4pJdy7P7ZLLrbYZFR0zcfoWOcNucEArALzFwRXIJvRqpAisDAn66qzvAhYmJd9Z6deGzbPd79XPoq84f35AmgnfZBfnYZ594rKbtB5mVVVFrR4HUEaEg/fenkwVVd3pKpdJGsfAAUZZ1RZbt4L8mWDAKNNJ44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766623434; c=relaxed/simple;
	bh=pcSc+F3j5T2hje2hP7hiAG2l2LLgxpp0duS+EMEJX5Q=;
	h=To:Subject:From:Message-Id:Date; b=GzvuEsvtzyjqHljUzIM/hd4G1itV46+aviWm+FUD4zHKQii3k/Ka/KkPATvgcNgtuGz6jqaI/t4jqbYHAwh3M44XeCiU6ubk5dejNSpLDH+leD7ascGJInVkMb2zNrCKF2UhuGvpFwn/z5fMpC3f66njBEQIs7/GKv8OyDcdNS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ht82Hcw5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ht82Hcw5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A55C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766623433;
	bh=pcSc+F3j5T2hje2hP7hiAG2l2LLgxpp0duS+EMEJX5Q=;
	h=To:Subject:From:Date:From;
	b=ht82Hcw5nseabizfa+hm4r7jEL9E8T3LmlRWNUaLhsHr6GHaTD1bAnviuc1Y/VkSN
	 kQLF0n391Qn6Rq0vXnQ30J2AEDJh1toKKsKohBhPGPYlCyHubtmFcK6dJfY65uYJ8v
	 FxImYdDYCMi+KSfV2r/Do+gfUP1f3rC2zZ6dx8XmCjrUYyLAdCb5xlGqDyLDguxtbe
	 LfGxcT1HRC8j9Jrq86ucNh98BTe3jJxYWpNcC8yE4oOL3hdA1B3l2Gz9zupv2G9DDb
	 TzLip3oTmiNKO5MmtdaIWDI7Mq+5pYNCDpB9hPpet44vI5dZcf+7U3JZ50HcE2dTyy
	 0ZMlx5hv9MMbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AD8E784A9
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176662343357.10503.7321311445472928060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2266fd3129f32ad3b5d3d5966af681d06ed8439dba7ebd267c71d206fed3afe5
Date: Thu, 25 Dec 2025 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766623433
