Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6380F2D9ECB
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790838034; cv=none; b=WO7fEYdo69snWQcNZ6ikFa8MuYu+XKvOeYnAMkBY3g2/Cr6T6K1uHYWnTTAJtow+ftHyEsk9gdKxpaHZA9clgPF3+HVIk7qDPXh0GKYVjxe1XQa7jSPnSjZTQfhkvhtbu/K2w+1vgNIADfXYgVsoGazeVjBUiPzgSFOjD/aqi9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790838034; c=relaxed/simple;
	bh=3ou2Cifq3WReJL5kJxMTj7/MFJsumOGUbFJvVWgFdL4=;
	h=To:Subject:From:Message-Id:Date; b=FAcleuGIxCizoULnhFDhJiGB6izsIsz6LrZEwp7XCBpJ1CzrXjCcuzh3deZ9mSyFVk6boQyThDcZwlhHSIpHv4Au7Lan3VPQE6KKb4XQ3rf/c0yHChPpQZhxNKBIfesQfeOV4i1XDv8BfJgDEFLWmKGNBxgoUfAyF54YoNvkB9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EANArnvP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EANArnvP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D541EC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790838033;
	bh=3ou2Cifq3WReJL5kJxMTj7/MFJsumOGUbFJvVWgFdL4=;
	h=To:Subject:From:Date:From;
	b=EANArnvPwIK4r5xGHQ/Qq7vIhhnCHTFbRqu7+30JpaY3FBUNYTi3hQzWC1rkP33qs
	 Cv/D1MkOuI7oaw3qiE7+j53qf4BiJtNGLnakP3MB9ctzlflXgOGqCrq2kCOVTBEdCC
	 An+Bc6wyQED3wE3EAbU1MpYZV0e5v/Q1U+IkvHS1j0V0kTbCb8UERhQpUGN/w2yFbn
	 M/2+IY0m2qioFRlN68N0/UC/TZWiDRqd6hugzwLhX3EFbSyFEuaWuFRaSleBJBOiW4
	 93Tam1gnzoZYogMVfWn0VG5Cuak1RtQbaO52sbWQMVEh+quqJL7j2agMJyADZWltHR
	 SP83R9fm1oImA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC37CA5FC5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179083803370.10112.652935732582748540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd80c0bcf10f3226044878a0bfbf122f2bdff47ac82f4599b6c63d79725b7a54
Date: Thu, 01 Oct 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790838033
