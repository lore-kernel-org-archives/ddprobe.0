Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C9A1E884
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 05:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740894534; cv=none; b=qNxUbpdi/yKy73FrnpxZDkGLc/9t+uskhL3iXXgChkEinT/MGXKZmfZZ6bJ38vhw98MibokjonovPPqx5SDKqm4rGW1ajZ/J9lyNQkZLEgMdN+gucwUTg1H2L3tFyYSqo92d5QHc8QdietzJ96/0XumTj0XpfX2fEy0CWlA2Twk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740894534; c=relaxed/simple;
	bh=YkCHs4xKHqjck6GJCb+o+NcH0UW9byzgPcgXyBXIggM=;
	h=To:Subject:From:Message-Id:Date; b=ErKBuDny0/1pmiwpC9IaaLtpQC3ciraoyzn2te6TcZwECq2PwW3j9Z1m5TF8ilBYu0iehkva8vLsCCk64VK4BfRsGTvHvvsOUyT8ykss4T8IPapR2/MAOs91Db3C6mxXyHWjH/K5jPwIQsPq9pmy/KoRl64PF0z0Se4ZUqZdj+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujjuRjnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujjuRjnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE46C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 05:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740894533;
	bh=YkCHs4xKHqjck6GJCb+o+NcH0UW9byzgPcgXyBXIggM=;
	h=To:Subject:From:Date:From;
	b=ujjuRjnPj1SFwTDDRiIXqX5qHJx3PCuCEetULgNFLyxl5fWdrhQjzpf/3CJbwlylp
	 3mMOWMYIUJ5s7dinSmEzisTWsrWNn8mBzHr1Y8T8kEPo3+aMMLampWjLfeFC+vCCZz
	 jkDkc0TeSS33HXCutssk+GAk7zBsOOnzMyuPH5nnsKywJWfXdC3OIaRsWHJLgvOYz8
	 hZ6FEzytwOXW3rZhImYaN4DFPAoaZpTdlgMn1rJLSbkTd6foloR74DIUMRoKWYTvCC
	 V4tKXRvDzUU50Ne1IMgPwz3NXEFguUxi1ZpZlJA/5S7nVTkSsbI5d0EjrHe2H+yYkG
	 ooWvYC43o3Hyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98121C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 05:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174089453358.31293.1996871128112618604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13b0b6e501d8d88c3b3ac1fa46102a8d87eb467c59d6710954ad8cea4eee71a2
Date: Sun, 02 Mar 2025 05:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740894533
