Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563F080B
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744682394; cv=none; b=uLSMfdPvutYpglQeQTTtQ+89GkqzVjQS1gUwdDXXzU7GpJY0JIxoKAm+XTsDijaldsFztgHnZ7vhHNQmvbdVj3oY6Nrfv8VYzftl3NKkw63ss7UmWgnZ2iewPnQMp0vMPHq71eG3w3j1oNYiGI1ncPYydH/3PDdExOV/vwsoJl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744682394; c=relaxed/simple;
	bh=jfNyz26H8R46rkIclPs16mz4jT7PBv5NsPxNDNS0CDo=;
	h=To:Subject:From:Message-Id:Date; b=dqEMlm/ZY8L/gwXS8R4NTH3scCrKLVjfnakmgymGSZf9hazlaSA4iQnP45v7Re7VKba9U584HmoHTxkW+2DupfYauBVn89SXnj+4Fv+4sa3HgNjPUsTCvLGJUNsn7oYlYB0Clgwd5ZuOpnKyLPtqme/SvVuwmpheEm/ivYrrdRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJfQBfLS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJfQBfLS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C62B3C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744682393;
	bh=jfNyz26H8R46rkIclPs16mz4jT7PBv5NsPxNDNS0CDo=;
	h=To:Subject:From:Date:From;
	b=HJfQBfLS6fU3CAuQ8LgS9u/yqH9D6G1PgdS0LoN/QlVRhjzPSXzbjaMfZPe4VWQo4
	 4hbawztS5sh7aFE38u+TznxF0E6jBaDC4q5a0+7hH1Mf3s8Jr0ActP1NMwTlzAoH4p
	 RY44eAM5HW/zCqiOIPh99ePXm3Lyh9/Y6KihIJcvMr/dSgpDrI/VnsmYeF/HzkFRQz
	 XWAjS0b746g3mUuNR5VHrzXgIqiQeJnOTvnC+iZHWDvCZgyegbl8b5JS9THEukyDdJ
	 3V8e1Oa4rM7MDJm9OmkTJTmaQq0T2xlmqFko+/mjkAWm8JRaUnCA1uANX0G8qbAaML
	 UWJJnq1KXS7Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0859C369B2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174468239369.18020.10543141556565660422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12c5b8c4e186cd322b42676f3310196326564737b7f657c931f8476a94562c00
Date: Tue, 15 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744682393
