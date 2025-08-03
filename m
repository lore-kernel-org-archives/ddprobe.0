Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31875111AD
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754243395; cv=none; b=BuJhXqgFkDYVbD6mIptXFwBCznzBhyWHOdE/Xo+zb2ZUZbje33sJw7Q0M3S72rPbF9tt97bnW8zzdLuyqaFzjvtwRXlPGPZFHw6o4EZIHv8TUNe/voPwkQhhfID0adVSxBkTwccBS3v/HogHIuSfe8GUVt8rlwy27wxELWxOg1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754243395; c=relaxed/simple;
	bh=8XLjAXbNVdViyaPxHM+1WxdfbXZ2ZTkpuVihAbuKNM8=;
	h=To:Subject:From:Message-Id:Date; b=TIxkRVgNG3/PgIA2uByiN1QtHomAjj0rfLLKQ9mgbn96XeVQPm3v1MHpRBlPAtd7nOhIkHKt0WvjOajivZXPN50V/hMqVuyflrEYa4ULwYxasedanpwbYXTlScYZftlqADRMwfYJFICwkRwFk5oJMw3sYHVDLB+zat1R4h5cyQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LlUSIJeJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LlUSIJeJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E1FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754243393;
	bh=8XLjAXbNVdViyaPxHM+1WxdfbXZ2ZTkpuVihAbuKNM8=;
	h=To:Subject:From:Date:From;
	b=LlUSIJeJA4MVm6ShbUAIF/nVNTFTLB6PvUT3DkLPyrP7pQCfvRBkZZeeV+zO49fMU
	 GjH1avUN5mUUJ1vxSTmh26PtXti/S5uA6UXwMPMRUqtN1nkkGoMVNNzy73XodD4Opq
	 r6mw4MAytGzrryExacyK6gEUHuywmkhd5MiE7wZdAaKjabCka+kbAbpmo+PATF4Vgz
	 x8UJPsSH5fw4SkZl7qcOwfdQWVBNRZLQ9pCdiiZr+2lyeWJbYMw5txYGkz65d6938P
	 FaubhxzDV9MMe7rqlR7qnnr4Sn0ap4PRxItSuQ+2AUgxVvBjgznUCyoz10Th1/XCLT
	 9QyeJ7UWW+LDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B54C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175424339357.21955.2197141228061719181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d0fb7b42390ef57a900842bb50b904e24555e9d1a44b4da71b9a68adf267e4a
Date: Sun, 03 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754243393
