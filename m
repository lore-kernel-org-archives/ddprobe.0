Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C8111CA9
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 02:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721096723; cv=none; b=ZQNRSNfWDk5WN6oYxiMSjJzmG0i2ECAtNEoTrSW8idZN9q+ilBBK4aYoqJ2wna/Kg2AoCz4GaZmbScGLBPX9InzfiPRzv4hk476pSYkCq7qe+ErDw19QEmPNQMksOsf0pYpL4v+5xHj+PkndsYk+RVQ8fvUTJh/OnQpTTnxiTDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721096723; c=relaxed/simple;
	bh=YCjavEAcDtXYlEyBa/qLMxrhdbYLEo8Z6jKdUU1+9RU=;
	h=To:Subject:From:Message-Id:Date; b=J9vAjksWcIvxYcK/5xni4T73JzlRisx/KR1ZEYoeeJrvPIYenDmowE4wSkEbF0xjdbFgJgRyr0qtHnpcIw4j1gvICoatMpfp1wmeNo1L0s18e7QriRbnSyniSsNL/0d6HUxL5pRdD0CsxUNl0akOUMyQTba7YbSKoOjHU3oeQC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7b+ABdl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7b+ABdl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDCCAC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 02:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721096722;
	bh=YCjavEAcDtXYlEyBa/qLMxrhdbYLEo8Z6jKdUU1+9RU=;
	h=To:Subject:From:Date:From;
	b=N7b+ABdly9CrOtBlMX9c9z3CTzn7fDI4wF+PHbjWow41YQWNcn54gUKKBJtTCcVM+
	 4b5gwc4zrAqUTNYTr1n9MKIa6NJiXMhjDoGClmCRMTO25tUoG9sCQhvv2OcSk6PQKY
	 j7ECLr2s+fttnQGklHCR0M+Y8oVTtt6wYq/yKEU2NHKnLGtz3l1XgBwwH9AnjRRZu/
	 NsM3GpmTYbk7vwJcvJ0ChFkLehHbxjOiMwQwVQp35Y2JFDYLyYwdTe3hXHMGCdpooJ
	 W+KFnCb0OmQQBwirerT4G/ECjYsXXwo0ullNP9v3abVwKKf6TAvMjYaEX0jkeLtK7Z
	 vowd+txSgL8jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C96D2C3DA4B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 02:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172109672280.20145.2858345913020529877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bc797d376fbb7ba36b6df16c4ec92117c27b9a3710b62963aabd01487509b6d
Date: Tue, 16 Jul 2024 02:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721096722
