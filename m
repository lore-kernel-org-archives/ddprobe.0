Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE46481B9
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723614954; cv=none; b=uFXdtsAyUNxe5D7VV5GpqnJ7vgPJcHicBAFcEOsXIf8nMxYQp+UOBiiQ2LdcJN58lXx0wSaFIHCMqK0PpjIWbUk2emWy6DtlS7Lgqs6KgijI7sRdovk/yuoJdO9V80na39L+C6OzBuMlWhZeUGH7CcM+WoAzUnbCWxosND3ql3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723614954; c=relaxed/simple;
	bh=hz0x353koivzXH4VjegyfMoUgqAhblRbTRj+YZLxWvM=;
	h=To:Subject:From:Message-Id:Date; b=U3ExDR3q51h3fV1ADKXkoJyoOcYlTNS4VNwAq0vl2Qpp+veWF8u7COHOvcWcEQbH/qesbMJWQ6sfEMyydLYR1+3GjLeTRMGkKMwNmBhUtFEEXRXcvG2d+n384JFh9qW7z+D7zeZWQnJmSplN1qpEfTr4kTuE7+iU/jvydHCu4DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1EElgVk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1EElgVk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3356C32786
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723614953;
	bh=hz0x353koivzXH4VjegyfMoUgqAhblRbTRj+YZLxWvM=;
	h=To:Subject:From:Date:From;
	b=F1EElgVkNxYrb9uv1E741QehK0WKHhXxmfOXR8+8cuJVSSJqS5FD/synCZjG6WkJr
	 eEdU6ZHE6Q1b2hzKUkhgzCjeQOauMkRORHGZI13oQElCZuEFf23ulOgKsVDzfcaddU
	 po/IdAaQPhcZ/L9aLY/MCnPtNZa7ESDFUYKBCseSlFsy/1pYry3jftI7n6b4k62olG
	 TjhDgO5ZB1/1Ovglzf5Y43E1fwfTL9vvaE2eWq0DMUnAlH/8PhZTx/gmQGR11cpQd6
	 9SS7No5xp8yUscbUThe07tzLEugtM92cf0r6hF641M8yWge546pZnvi6jq7wr0EYGI
	 hzXwGsI67B9SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9566AC3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172361495360.29210.7743810223336030976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a87e5ff1484a1826fb24b8c711cf1acb84e8e4fffc0b0b47ab524ab9f30f064
Date: Wed, 14 Aug 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723614953
