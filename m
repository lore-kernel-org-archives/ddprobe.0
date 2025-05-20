Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C031AE875
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747783194; cv=none; b=cxdZFMDgxdyGcb9XNe19xmBlz5+GiLgtXf6gCWfT9IxucP3CaA499D+x8R9nHzaurHCSH96FDohcjXXqwxurqX9wuF1zpOaMgmhC7aY1KuIMc7QKVjv/2h95tPTwnXTgQmy8fz2yfuGXyvu0xYMBYSAqGUHjKMhNY/+y5SxPTyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747783194; c=relaxed/simple;
	bh=wZ4c89DBT0CocXQ5t0Y/Ig0PZNNlXZs4DGhFu0YXWAs=;
	h=To:Subject:From:Message-Id:Date; b=EBryPFNh+nNeWrYOs9o6CInbhciD0ExKeWnLj8yhTvfPxJvnxWVwn2nWD+qqTwkEeQT7EGomSQMJHliAe0KHSzgjIUTVbKLV06vbERbvT7ptC64Pb8vdl0aUfyoyI7eQa0sK/+/jLEiZGI3/d3hEeVNkZiXJkBk69k909BGywvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szvf90u/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szvf90u/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3860C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747783193;
	bh=wZ4c89DBT0CocXQ5t0Y/Ig0PZNNlXZs4DGhFu0YXWAs=;
	h=To:Subject:From:Date:From;
	b=szvf90u/YWJ/f5pB1S/T1rl63FeDUEJ4cS37YPZ4Qs72DlcQCfEvCIRd+ttfxc2rE
	 TpwQzdGVq4O/yXfxJcJmaYAinvet/nGHKuvQNl6OgWPXdI3oB8r3SpciHPjMaoNZO9
	 vs+nCOpeh2xlA7Y1+i9xJUMiRTunDZUdMLO2KS1YLw3Ha6pdUnjAYVbvavBCleqjgO
	 OLBg3ai9nQs9oN6JfHi38SBlv5w62m9rq12fWg/MJ51f0KDTr54kA/TUaiPW5Z38DT
	 CSZc3ZgTTnXvjAYrsp6wHfOVIU9cb2BHivlHnZYp81PEAI8vvgW6H/brcWxPFs5gyD
	 WPb6BejEXlY0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DB1C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174778319357.13762.4394846722098997988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8575196ee8ecadadf9c2e5583f1259954f0718675f31178b0953fc526780f4a
Date: Tue, 20 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747783193
