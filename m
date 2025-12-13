Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2FC2AF1D
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 00:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765585974; cv=none; b=FPdBzEuQv0CJKg95qWzPUNvNBCmBK7iMe9tP7jJq/cH5bSAYlCjliDwoIlNhT7G0og2fanY018BLSxGGRUzFXgNO+5L6EentHeq+HXdjqB/7TRpFfl6nkDaJeHA/t+NzIZGMmCGaVn7W+8DwLcKjA9I7MiT38w+mxKH9phAICaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765585974; c=relaxed/simple;
	bh=DOD/cWbxKDpoImmUxmJQnajhTdEPSfj6kPuyE66/uCQ=;
	h=To:Subject:From:Message-Id:Date; b=rhgLF4HtTaoscGQP80EglhM+9lXmw/Ef8+0VRGVPB11T3gHEKxUljSeYGmB4ANzxKJ8FTalh5Sn44DJrGCypSsROGXHaqIR1sYg/y3KIM6LlUpTj8lbNd+GxPZVRHK/pUfImCXKNoa36G4PBDQGOq071aSBoQcbrV/lSJaZyVVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsEc04bf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsEc04bf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B26C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 00:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765585973;
	bh=DOD/cWbxKDpoImmUxmJQnajhTdEPSfj6kPuyE66/uCQ=;
	h=To:Subject:From:Date:From;
	b=OsEc04bf1MfL3NvuaSaQHhmu2dULnAxLK+lWvNbjWQnAdxUnHn0qjW0CfxEymjF5L
	 opYLhHW9GJefN2IBu+qof80EaFTFyWCUmDQ+QtArYad4Jxzw1xNJpBqdub8Mhfhov6
	 VSQQabN3ij5qqet/79PSPixq5lMYdY+TmmHwWCUAWhlC6BvxCUp6r0DidCTAeEpd6h
	 Qu/TI+3BKLEQC3rTtIy/svYVboXq8SWqtXmjF7e4FHNgivH7Q6VRdZKO1j+fZX09Bf
	 2HmgOTOrO1VHXc0utrHZ1vOOL6/iGFNRPXpwjmm9L2Xkx/s6FPXCxfCXoWENddYCUg
	 KrMDTscEChvKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937A6D59F5C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 00:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176558597359.29769.12793421726071260730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2ccd0bb7e83881e5bea212935fe23b36cb156944abd17ee9cdb02c8cf950a74
Date: Sat, 13 Dec 2025 00:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765585973
