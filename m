Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562CA3D76
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749890994; cv=none; b=URb0e4Ez/7J2qHqm9R9vy9MVYzpRL/9eikue4mCblJ9cglXZfdvGDAELH7csmNPU0kjGuou3gQEz6K4v72ZseNmHua7ycB/7QIv9UFcn5+Hqix8cYQdleXNG74OqkqBh+h8FiX+EISnxubnTOOy5Dq0NlLQt4mG5O05yQH+QJFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749890994; c=relaxed/simple;
	bh=XlSRBxjVee1i4P8OgnwQnx6RkaVzRmvg02nJtr/V/Tc=;
	h=To:Subject:From:Message-Id:Date; b=PxgZbLuxoNW+oEQd+o9xkMIq0uOnHPNfnRWunpVBQGaHzSi2BewBU4zDeHSD3PGqPqebF+zJH3PwBEzFjqp2wdqwvvt27CnN+g+iqqtfvqIQ03fmcQ5R71ES5b5Ff+/1mUOpWA7cJF9BUcL1ldtzN9H91vr6AACJvCMiSVq78WA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMnTPzHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMnTPzHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7B4C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749890993;
	bh=XlSRBxjVee1i4P8OgnwQnx6RkaVzRmvg02nJtr/V/Tc=;
	h=To:Subject:From:Date:From;
	b=pMnTPzHpDfShJUEPTiy3FoRmGedvcRXKXVNk99xX3/rjZik3MipcyclG2WuQUF/Sr
	 0iz+r4ORM7Xg2W1/JXJFs8CX0qHCQQKcECtLekxUFSw1ym8zlsISdYnre/g1DWyTWM
	 sSCHyNiuTVliMj01Eoxk9i9XxBvNRT4JGgcUCxBv7ty0x1KwJyIfuLk8n40D/Mxh+2
	 cscPGvxdmAg+1UusCxy81zMu1iLJ8ZHZEeBKIUZyXqJBFJdGk5XgSAfU0AfVm5HBap
	 HLL50RPhkE10/4B9BFC9nA9Hj4wn7CujSnkjma9ag1RpSo7wlgfKy1FOrXfeFggMsg
	 gzYiqfwiKrcCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC6CC71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174989099360.32751.16846242930482984785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edd695f63ad18129d3d7f6c718fa27fb4b6e85f55d5ed65b2aaaf160a39a56e0
Date: Sat, 14 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749890993
