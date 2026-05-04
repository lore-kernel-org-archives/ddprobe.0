Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B06D292B2E
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777876054; cv=none; b=UtB5ugxQKL540QG4XbzU1/JEvMQrKVSRPjTrf4U3n+5BNcLG3gnETcvn1vxvnx1IvWDhLXqmIqGNqD5zmyh+hwB0Bx70XMZ6PSsqIIasd0LIgGcw/TIsDQSNyGFSHRtof3Ic/VRfCT0RxeryBcfrSy8atYxCZx+8SJit+OQvnlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777876054; c=relaxed/simple;
	bh=bIoDk2j06MUp/QqFA4bLtlv5CWIKVoNpAc/ge5ILZac=;
	h=To:Subject:From:Message-Id:Date; b=CIqe1pVyy7uv3/zLgi/cKJECVL/PLK2ryjgfIAmYBosieT5qY5298T/VoXxJHfcfyfsArEsqwWW4k+Gwxpgdg0KoEsNriZdcDjZAn61+KUVyy4XF+LXDVdX1lckMD373EN9FV7GYJQkhOHk8HSPV3+tDSd5JUXeBMOlksPbPxKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHhJJHhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHhJJHhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B627EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777876053;
	bh=bIoDk2j06MUp/QqFA4bLtlv5CWIKVoNpAc/ge5ILZac=;
	h=To:Subject:From:Date:From;
	b=RHhJJHhNFqbagwmm+HfzSfqBnH5YkKqfGDKavlZF7BlpUijcJvCx0pFsH0/AuejqI
	 D4gmIG3jaaW6ybkN+I8N/j9LdpcKhVSNHEYCmFycVWiVFQ/VyUSrJw5NByj+9aXqYd
	 iRq/J6/5dIAlVcydtI5FCg7Tlf2JC1OQPW7sIptDMq8ajXcmvnWSShS5a212yyjsyN
	 /7C88ZK6VFQb1JF3rjWNY8yfVCzYFx2xzki3pFA2dExhkTd6rlE5AJvkEUHEujhxKb
	 hzeFo7gE61BJzjR/6vCpgEiGCzPkHNUdvbRRhWbTaji3hKlcWOfrYTtN9zWg1mGOVY
	 mqw9+W5hbBDeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94D5FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177787605368.4787.1827290645622614127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 830f77b0a40ec9079890695185fa2c240aaa87750aee031470e920879b763713
Date: Mon, 04 May 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777876053
