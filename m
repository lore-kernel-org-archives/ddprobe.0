Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2A742F709
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787669434; cv=none; b=ZHoI6zle2/qn8ZfRf2ctZDdioVJkdF052jsSTpYSWpaXLU+utw5rw8sMG1BHKPpU12jMG/jz2Nhm5B0OLVJKN62porrgDlcvpBFTmKwixGeRowekXj2vDUZs+FJPnepFlEIPZxteqS9MeRZBt6wslhavm5CXo3eKcoYUSw8WaEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787669434; c=relaxed/simple;
	bh=zqTzNmnqFHIpeFVigxztv1yI692X8rkT3kuOgBnGSRs=;
	h=To:Subject:From:Message-Id:Date; b=BXwGcDAaApRKaevpzyDhJwR8rDji+VF0A4b/D9LQtRxn48TrF6QNox4A0fj4Tp92Pv51WLPtY0oSPsMU+g2qe/iAHs9nJr4ySr66xXEfWGBf11DwgjHykdnE+EwnBzoqSSPTKNG3tz0yQjqmfit7l69RbGs3paXa6NzHQXVmAIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O34DLLBm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O34DLLBm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE883C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787669433;
	bh=zqTzNmnqFHIpeFVigxztv1yI692X8rkT3kuOgBnGSRs=;
	h=To:Subject:From:Date:From;
	b=O34DLLBm7ebDi+Kmc8p0RZKJXcF6G/syHz6CWQkcTW2mDZdgmGc5ARXiVtwSsnSNk
	 KXE1SzdtoqjmdIbgxN0eGt26BDQkj20oQY/1Kt2G9m5FY2McPw/dxrLCnwuPgDNzPs
	 jcBEOOGxpe1EuI/YFFR9b++XBPo9BPU9RYn2t0/j7/7WlpGQDd8hloRWn7D2DsxFsN
	 5TCMjUuyUsseaY4IvctNpB4ExurveaNLy9qJkQwncAe8scKF/K5D2Wy6eRTJ9wmwIp
	 3FNLxligSOHbx1WXWBMLwQtfRYNg9rAwu9yC3YhOng1Lx+lhMwOjOyg13KlWcsAMtx
	 gH0C6TWX4DqOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1E6C61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178766943368.21978.7737039674278412196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5a5503372c5ed9368606bcac88b4ef960d8bfd0e7d579f8f8069b3576d35ba6
Date: Tue, 25 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787669433
