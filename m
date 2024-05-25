Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBCC19F
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 00:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716597203; cv=none; b=hpqru9pYvrkeGGUjs5SKWvo9dONYwKBVd/v5HStw+EduNuf1zVEnE1KWAt/6QLQ8b2boozE5wAs09IuNLOHysZwuYR83e4Zbii3bQ1nbZzuDYlwosxi0EyE7mkXs+agXYKLNxO3lk8vTAgd7+GwJTjM3CR797Z+D4+aHnNm3ydk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716597203; c=relaxed/simple;
	bh=GBVjJGTx2x4rVaW/4WmoxWgXRDwNys+SG3IAwcwqECo=;
	h=To:Subject:From:Message-Id:Date; b=YA8K7gceRM1WgAJg/fjnV2cYsZQGZZz0eSmjOj/xn07HLv8qJePtxnIrQ8d3ozNZRhvFmGy0e/F3WGA09NptQv8beDIdECeKqrSGKiJGspGigYrUR54eWRWWKXGHSIO4XNVhfAWsZRs/NCEDd1qM7WdJpM/yAlS4QKEqXkUoj3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DpgmZ8tf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DpgmZ8tf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E247AC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 00:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716597202;
	bh=GBVjJGTx2x4rVaW/4WmoxWgXRDwNys+SG3IAwcwqECo=;
	h=To:Subject:From:Date:From;
	b=DpgmZ8tfHmBCkxFaVKlQ/K87WgI6w/sDcipmHoRnNDOP4VDJplOGlzoRJMEa1rHXV
	 Mg+SdvGNZ+2Bh3QxhHAKgQ6bcgTlUzywrudLNVIKRwNKzIu+H9DbVaBckxMTG25xfx
	 xzelw5M8KMkKu5BUj26p8sjlsJqSoKIBO+C/81qKy2ValHHHWq4xG8BuB9wZlpYSNm
	 5QLunn74byDYNVMgfe3e2Ogki4qCQD2fBvM7ed832F8UxezGBlkgmvfqXRn3MjPGE0
	 h0dv2iO2H1pXsHecXAEcjOzFEZq3QKAlp7Jiqi986GpJgKJIWOQLP9zVn0jsPE0ciq
	 SGi0zCVFo4HYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D217AC25B74
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 00:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171659720285.26444.3296994308402626908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc17a84b7d4d09e5c6b0f790c770ab870279bf45ee5d25f9ba951e2090ad6982
Date: Sat, 25 May 2024 00:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716597202
