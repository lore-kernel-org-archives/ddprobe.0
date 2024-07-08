Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51369171D2
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 08:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720425983; cv=none; b=NpJAiMD8UwRWr2A7fyo1SsTCAoqLAnay80j/HvzaDX6IfAecrowWWumXi4xY9BsYcR32ZMor46XueuAwvdEBcdoJJZSwcSr+grYif7NrwKWaWRE5BlsvpeqUjxr0AtddUBj+mJHV8FJUJP/9qOt1EEz49Dv0YQNr/CmBjMizXeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720425983; c=relaxed/simple;
	bh=EtM9SQMPTSXVMorMVFGcH1QJ9pkvB7Yu/TYKXzlt/p0=;
	h=To:Subject:From:Message-Id:Date; b=sfT4hD4oFdq9OrpbBwvbvvnuCUHUOJ0XwY/vRtN3CDWVsGqYbFp5XjRlmbg+cOpQY5wcXSse/FLvT8OGn/c5aCe750uKCtcP8xb3k6H0Q05kpUCgQc9amr214NXpF9nkPDxgWsYRU3Ulk3aqmbjidXwV086csg+X2pVYoJu5MxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZaqhOpi+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZaqhOpi+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC389C4AF0A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 08:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720425982;
	bh=EtM9SQMPTSXVMorMVFGcH1QJ9pkvB7Yu/TYKXzlt/p0=;
	h=To:Subject:From:Date:From;
	b=ZaqhOpi+YD9STCo1K5jPiLMRgkZ3ro2kBXp36oscvqwf/DNHk4PZrXXWmKDUvZR02
	 WHozjIvkUIwtTfOpxEB+O1Av4/8mZeaWRHSlBre3dYPOBt8wccG0nAL7JaZ+pwuSRw
	 wPBAIXLgLvLY4MAhCpMlAHV4DXMntk4Qmw2wi6d1IiQcORC8YW8aT7+zPpZvNBLHLI
	 M9qoKWOV4PHolo9IUW3Swz9M7eQlGG1ECIZ9dFpP74IDL0ZEIz+I19+rjf/TFn3yhU
	 8CeUYJbSTFxUHh9QCH4+/Nt1CwURpHZcTZdtJMmT3XiBrwRdybGkJOGvY542T1PGFt
	 OzoCfFr1soF0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C476CC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 08:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172042598278.27333.15242471924524937730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc4c671b3aa39c0cfc5539808aaaff815be69ef7e64e10a5cd2694ebd2904e4
Date: Mon, 08 Jul 2024 08:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720425982
