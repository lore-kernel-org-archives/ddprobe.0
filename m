Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3527332ECF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 22:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763419314; cv=none; b=fO2ELYKZXCScADd377IBLRO782DK4zCzQZAihRqA+kAR96cD+3peKqJ2yBuNGCFwk+MWx/0OQ8h1ey+VbH2LxGHfdATL02a3NbxuCWLP130iIuwrG4VrcKDMGHdtG+CMnSWvsO87UryiVk3eHAq+xWENC+jqNl5j69tH9fbal4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763419314; c=relaxed/simple;
	bh=Q+nwWbxfGxqRmmIUDT5x82YtH9MzVsozJiqQNMcuN9E=;
	h=To:Subject:From:Message-Id:Date; b=NMr9loOSJa0uDI1SEa6VxJLuyTudQCWpW1TTd9LFZBzSnwmG7MT3gfkpWtRkNmkxrX9wUBcRsQwBawYSig5tun4EEaUvGS6asWP3Hw6ZTmdCEOY5DF+9hUe4AJrwKdWYAM8EqDQg8vxbAeGWQBXyQfwx6SvlUVbOg8Oh23W3hWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUlAXEfu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUlAXEfu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA159C4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 22:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763419313;
	bh=Q+nwWbxfGxqRmmIUDT5x82YtH9MzVsozJiqQNMcuN9E=;
	h=To:Subject:From:Date:From;
	b=CUlAXEfukQnqDnj/28hi+8O/VRkWRXE4JExZgj4f6jmk9DdjVd/ULf1/U7Uc/laXL
	 oixDCppuFsM0EI0yfSvyjl9NLxnet5oq0E89jQsT+4cq+2yUMowT3d+0iNZiZ0A+au
	 ah4eUC1csAbJE94qicD63KQoPAPMLj5mgVzQyp0c5fzQcGJMKOOaIor8lTkqb9Gjri
	 hGeiKcZJGRdSCnHsYuCluDgMuwrv8dX4xoSq98SNrQBEjU2Pu0qQyZaKT+lzivu5UP
	 nS2ToHgzgTSopM9kQ7gpFE/Kexcns6+0LqkMq5ME3k62HHXdBSSGX94GzR4yisi/ep
	 RazzGxQ/nm/Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92210CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 22:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176341931358.31999.11404452319125164197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ee4a360f317e29c9a9b024c58da3ebff58fb2280d82158374ad22efc1857d1
Date: Mon, 17 Nov 2025 22:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763419313
