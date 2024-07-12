Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 765EA1BDC8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 23:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720826963; cv=none; b=JjqC3nfb9J0RVVR/5nq1OsDHK1dfHOUSSC6q+xkOeMWxMRXqZq3Ie8NcZ7s8Lorq0yj7ML3WbvjW1hPaEsTTQ5Jtn4BjrNi//Tn5gwPBi0AohVK2cw4FfufT2VfjpuJa3WuVtI9A9c8XhGQNmPHa6ptRbK8lKkbuYIBlyjIXWVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720826963; c=relaxed/simple;
	bh=Kb/sFVjrZdMRJ/VNvpqnucHIIaY6HNK9Ee1CgU7q63I=;
	h=To:Subject:From:Message-Id:Date; b=ZEoT+R8gQ4T0xG/qT4UZZzPL/Ul0KzMlw1s6I75y1XJCUc8tL4590EQJAb3tfgYwJhc0bO1l0d0Ffk0KFhuCeXLYF/fHYMzQYzKwWmBOZtlMjYYvC9NZTMP3blwdVe7lLB49CbUdl65YXX/m6ljqCnL2gpMn0ujeQM8xxzOlWXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hibMlGum; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hibMlGum"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A4DC32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 23:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720826962;
	bh=Kb/sFVjrZdMRJ/VNvpqnucHIIaY6HNK9Ee1CgU7q63I=;
	h=To:Subject:From:Date:From;
	b=hibMlGumb8hkv2q54mhVfreXGLfPefwLupVwsNr/vAv5M2QP/QmyLIBdvW/FCTrH7
	 h49LLwIHkmhDPU+HHAH2dU3E7PW+XF5pxlY92Vf3pfpBwRHwr7MmWMkucsuoE0HnsM
	 s4SEqE8ujt5Oiq3gynCKv04bNTnD/9CbQy/lrJnQAbEjiqnm+wPSbzTJmfOEFNkZhw
	 sBkLXfDFafwuLzUZmfJrjfusmD5y8t9I6+jM3MafH8ZI3y41vM66UzA2jISbvFaD9e
	 qKFupHsS3GVftSI3hcHssyy10iYMm5Sq3wjpuLcP6WOX3ixhZVxyZgZ5lRUj9ZbEw4
	 2Wrmh/zbACflg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD896C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 23:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172082696277.8343.5926326564856171272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aff755450302716b7f0eeac88cc268d6822794e97cb0a0e078934175545a9b6b
Date: Fri, 12 Jul 2024 23:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720826962
