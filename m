Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F1D24F5FD
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 08:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712909963; cv=none; b=HIxF8sn2WMbEaMEUAEU2t5tE4HMbEPU1dfZOpak//kpI8G9ddl4faN1xMvvU/QfpQarMmIclabjbiPAgay5dCywkoP2d7HI+XQludumcQ87KINVu2dROjxcvu4z9g+gJtqyGhUHEzFLKTBz/BdUO/RASpJm95jF0wMdOz4UsG5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712909963; c=relaxed/simple;
	bh=UIpbMcmCvbg3zIAI3M0bP8NTsSN5cc9AF2nj1DztlpM=;
	h=To:Subject:From:Message-Id:Date; b=RJ6Qak33UuT6kD2W3sh+4yu9Y1zQOwfkwhTDmglw4DWs1Qh8oqopQ/wVI6dxk3RJHRnDuxJxjBp5AKyeRBQFxfmUoPE8vm/TK1DexIceuRW6hsRqN0EevlH5W+gwHARLNcB29cfQB6GuNRjZmTXtc0oIfe7GdZ9T6OkywuvnKLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+NMQWbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+NMQWbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA413C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 08:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712909963;
	bh=UIpbMcmCvbg3zIAI3M0bP8NTsSN5cc9AF2nj1DztlpM=;
	h=To:Subject:From:Date:From;
	b=u+NMQWbv8EZkqeKLStfqsVng0K/mVz1ahGjyfzMV3rnxC1LgsXNwFL71nuK1ouk+m
	 h8njGpukUkLfxzUx0KOaSL4CZYCYGJlXgsALNwzDBv4XeIwgxeTD4iGo0ArKF/NtFu
	 ORRHjLV3VA7StApr794fhbWsGEsvOiTVcLlplheqIEObWvvGiCZeW1AqRfdzF+1YuT
	 8RAA4eKy8/TuTCnmC6S+dXaQ8gY1YOqiGyfcPPCjYFKIXux334F4PQFvHSXNa9WS9Z
	 xzgOJEZag/I2XANDhixCLOOZRwjsuqKwhNY8cOfOBikLgmuYn9jJIAtMKct3iYe3Ev
	 e7fJ8XTahOHDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D22E0C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 08:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171290996281.29409.14239467114135481112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5057490a6d657536b9fb65381b5095185ed9818c6a4314a2884c50e33b84caec
Date: Fri, 12 Apr 2024 08:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712909962
