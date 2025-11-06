Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF766332ECF
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762468193; cv=none; b=Y3RJgAn8sGFbXabPOGEk8G+4EL9NRQw/SB20UrpuvTn2YCaoFRmEEA/zXHsSDVUJrlYLXKv3JEveMhKb8xzUxe6h5MGU8og03LTqiYbeT3rjaQFSVCt2HpCHdPSZiuI52otzWImVIDZ2VhwzYX3O9X5ngFqqlzL+MuaC5o33owo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762468193; c=relaxed/simple;
	bh=XReKFLyHLLVcPffkxkTJzI0hyagYTh+laAD3OPSJUfs=;
	h=To:Subject:From:Message-Id:Date; b=A2iZCQ3zKKa37sajpf04mBqHORt8ZIzu1E3NV3mMOEMY7S62rTjXw2ZgXlNdO0mUEXXeGK3ovog7S+2fOKgW9YpvuKk+9zugfWtcof+gGEk0P3uUmi3uRUg4ERrScWmox7ZlPTUlH8oJwPjynCUrJt0dT2IW34Q4YdTf7HXph7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVY+hNR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVY+hNR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7FFC116C6
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762468193;
	bh=XReKFLyHLLVcPffkxkTJzI0hyagYTh+laAD3OPSJUfs=;
	h=To:Subject:From:Date:From;
	b=nVY+hNR0FiI+LPLN9xQfz+uSUUcw4zMlgJlqFv1bJ3uT5UWsS/NNUuwPcO1qhilpS
	 o1KFa4PpE8rWIsGvHCo6cXvyncYWVvUKjJGw8wNuf4kIOEnVXvuIYmCWavdZdvPWhv
	 MfQ6CM0kaDSp4cENXE08ouu30m2ZgppvXJl2FIRD0QwJ1qfxxMDgNJBRDvr7T0Qvww
	 Dz3Cj5QvycOXFIgaFLtyDW5XvrUehiWNNbfui0BMEafeDVZn09CXP/3SJW1ifFeBib
	 xeL/j3XKdMkO1sMX3l6J8Mt+B/KmymcAQcLJzAAMmzUyk97s9WIETVC+hMU59uaFJb
	 uERi/2UvCAZIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC79CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176246819363.20224.10548768047276939955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6681c6b650ba7c047a9cdc849f02cd4c7628c542674002fd2ea4d13f1beba9c4
Date: Thu, 06 Nov 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762468193
