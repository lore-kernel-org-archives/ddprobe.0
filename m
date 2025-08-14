Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3167A2264CF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755174595; cv=none; b=q/myq7xlbM03KfBuL8k0YkgwavNnKLkw9EAjs5J5BfWZQcWIlQdiF18EeywlD6xWW/wi02mUo4NmFsEVmP5FwMOBudf5UyBEvYIgnerNwMO862QEYkd+K/7q0TSUVRZChq888lY8sJR6Gqw89kDRyYuaCFTecdq5ljIAiqqssbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755174595; c=relaxed/simple;
	bh=0NpTV1zaWo9PJowX1N9zNkPc2z508j/pwz3eiaaq/dM=;
	h=To:Subject:From:Message-Id:Date; b=gGmrnyDAcxKXQDFir3a21wGwKz+GmDq70rjwKsJ82+FwcFqFuyK74QybVFjjZ2ipZLQnwO0lSC8veI5pOtDLgVZyUPceqw6ifvKqyCzQefNZMWnI7OK8n+Hxad++Rnflty1mg+s7m8wXiPWjjXAqdfZmMX3OxezDmhdNgFBY4u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+wm5Ub/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+wm5Ub/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B0DC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755174593;
	bh=0NpTV1zaWo9PJowX1N9zNkPc2z508j/pwz3eiaaq/dM=;
	h=To:Subject:From:Date:From;
	b=K+wm5Ub/FWihzV40ZjQFc4Uv+ejAwUAefP0ya2Z29iZ8fGN4zgE7nBUKk1z/NHB+g
	 NKYwNP7Ki+ntIuF5EGVJIxvAr6M5KyntcJADcx3EYU+wMtorJAw6e1z2rtkMz4PYkw
	 AYuf7M1diOhjWBJf4B4HjGv0UgnjMGFh3xyMqq7hQVrqDyBRm/3SvbAglMq6ymC7Co
	 Bvka8ZT1SKnMoeVfxZouM/Dq5QqE0K0ndlmepWoxOc+m1OCXfgV555GO34rqydS+eY
	 lOdMpydWOU0ljBNoN7A6YxwYGhyxl/+O7CRAAQ73cAjk+pjH9KjC9spII5WgSFe7fD
	 nxPulS3ROw71w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960EACA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175517459360.28250.8518612583255943449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fda41e006651aa3234654aefcebd6df8e673d781f813f88b3960906802845fce
Date: Thu, 14 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755174593
