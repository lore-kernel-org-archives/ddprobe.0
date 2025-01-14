Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAE0194A74
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736872554; cv=none; b=i29nBqNPH/YHUl88fjbeROTsLpwf/ugfG1AK4fnWb8lxX+dksR18nwxXXVXueGKMHr3FyzJTigWe43eBoVJAkIPlPWk71tMiqQ0nystLPioQoV9gHu0C4lZdBofDpPfuUJwMNA79nW4q8J+24nwor4Bhs4cuM4ZDfXrHp4K0vhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736872554; c=relaxed/simple;
	bh=/oFp51ACH0yOZkb7neYB1r4AD3UVSvk1XyUzxviv2tA=;
	h=To:Subject:From:Message-Id:Date; b=rNghgUFFBl2F3WKd8ory1hdu/f7FtWI7d5CDFjM6bmc8qUkPE703x2BG6DvidYCpFLBtYbprR2Mwvy5neB1ID4IjUbXXiu5JqhorYbSths5NuLtOQC3BjBQSYkGzq1geTp6C9zzQtSsCxyhP5mYD6YMrFHYtUqSBu0oJ32xla4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zxry7LxI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zxry7LxI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A771FC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736872553;
	bh=/oFp51ACH0yOZkb7neYB1r4AD3UVSvk1XyUzxviv2tA=;
	h=To:Subject:From:Date:From;
	b=Zxry7LxIgkxBpydwyOSox4oC2odNJpFHg1jMCoYFALuhJzvD9PkppNUUVplvfqect
	 lKRPqSlX/8DD2S33rgN8qE6JdVzYjrGLva0DgPYsmNUk+cJguNB/dTmjkwkCNf/bPl
	 X4RJNePY5yEO3dUL4vBq5o5CWx+75YVEAtgqYQ2IIObtVAebdMkmo6AaTVpDuzkkMe
	 qs3N50aG4n/1l8r9GrL9kkLCcNqZPa5MJZpxLPbXNa9LDeT9lBnlWn/LKC+o03oRqI
	 DLOfn8xXHcZwFnCg1sIQvaKKPFnyDHtw9uMz3GB7aX24foUwKXJccsbA9PVkgtwpr5
	 jYdcccuWBogkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935FAE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173687255359.16152.4827679468283789794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735db5e5ab15ab78405b34eb0d7edc913dc3fa98883805cc99a8dd383468e325
Date: Tue, 14 Jan 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736872553
