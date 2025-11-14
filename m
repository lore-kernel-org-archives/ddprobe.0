Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198E535C183
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763156394; cv=none; b=H349NpI+D9OvPJNbTW2RErpCm8DpUtV8Lut2y5lkbtM1yrpk9eW3Rb5T/9dxTeAyW7D4wK4bhvo5394fNmnzwK/5ICbQOYq7FJPcJvjr6Ot/NJsTrUcxnTiQYExwrB96f28xz9dWN2RTp777yuGiSzi5886+BcwSFLm1C8rZ4wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763156394; c=relaxed/simple;
	bh=gQN4golgUMsufxqgmXNKdKFN42eHArgokv0MpffvQRQ=;
	h=To:Subject:From:Message-Id:Date; b=SQ6HRfJJ+WAEva0TeF4JEh0pYp/qprKpGYPdr7FdgZWTWpr8WWM4P+F76DJKnt/M45vNlOdymPUjHluCy6vcaUSz9uCofxPqX9kNX/cNw3L17UAH7M60cD2/hW8IyqxwAf3Cs97wHl3nCWlMZVvW9w2j2mhJ8AF9pCMR8fNMFGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/K4tgo/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/K4tgo/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2C1C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763156393;
	bh=gQN4golgUMsufxqgmXNKdKFN42eHArgokv0MpffvQRQ=;
	h=To:Subject:From:Date:From;
	b=H/K4tgo/Vf/J0THfns1R2KSYFCQofbXVULHENAGolbmi0fab3u7Nvf7pgagWmuJJO
	 CJ1HJGoSionRLpxVxymMPlqQpMAE+mu1yTmOM08sNtjol9oz4cAj2J9nOWiRgCn8FZ
	 TW/91B8ieZuixC+Dp0naICSwSzJl7O47Rr8CU9vStCIcTCmL38dBjJFoKNPEZ4yiGU
	 M4aOz8SMjbtedt3Btid0n5GQMQPuRrkOmqCTCqUy5c/2LrNYFShkTi/M2vrqxEH7wW
	 9I7qfWuTKx5uizpM3RdrHwP3DAbAHPEsiLLDjvd1tAe3aLhhk87w2AWm6ZgcmewB/8
	 VTmpHFOB2VDLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE10CEACD2
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176315639358.22175.18106010153942354838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d3257c9ffda96e3a142d2531647c776a61c5052fe831086362d924e2732aaa
Date: Fri, 14 Nov 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763156393
