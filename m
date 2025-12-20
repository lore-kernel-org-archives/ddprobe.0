Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C471624E9
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766267034; cv=none; b=g5H5FwaXm0O1l3dhLxxyeoVhH0o7RKcD1suI/F5QGW+YVLRpiVVKqrRjBZjr9DTS9d7FJtKrMKEiIr6Yw8dUmJmTp2/a0RBAcEQoSs31VCe6SoORHOSl22fbx7222qoFOYCL7qIC5dJxnyHT290slXK36J9YSxkUsw6o7AAycdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766267034; c=relaxed/simple;
	bh=u4vz6dV5qsinndMbZzQY/y4uYwh0D7gHgVuB6z9e4/k=;
	h=To:Subject:From:Message-Id:Date; b=fCLvme2uCQ2oidEZ9VULdMbfCNFhNm/K/U+YEituqgMjsDe0+yw0tBJksTZSyd94IIzLfYo6OuadwbcO7mJnINjw4C/AaaAe8VucRUD3K3r31sFy8oMYUlt9ZpZ1OSqi9QE9vY6FLGWW72Qj5lE1b4SC281k4IM56sL3+HHaDG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fipB3HoW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fipB3HoW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B8CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766267033;
	bh=u4vz6dV5qsinndMbZzQY/y4uYwh0D7gHgVuB6z9e4/k=;
	h=To:Subject:From:Date:From;
	b=fipB3HoWjJPKbft81uTRGKFpkMcpJ3wIfBOcKOIxUbni37u3RpVOCVmWWUgpYWykA
	 B6pQ8/AThdP1kQ6GT0wq3vM+IkQtCdT6nOnVvwUHpyiyqnqrmpB3pLP/pdSOJonXgM
	 TjcIoE3D8bDlAarfb4q9YUIwoAymmSHzBO8RXe7TmkXE7cuKwQpsajVgOExIzVWZxH
	 3SV+01VYbXhx6xsksN/K+nCpSe48rqpAIn6eddgPLGbFutBh8BJrqRDNrlOZ77V4pT
	 dPzt9IBF7ZIG4woZmUQ/l0zDpLhMXL3BWkdoDv9Wu/SuEkhZgm4hzZnW6fmOmalF2/
	 LIt1VR5YhY+Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92307E67483
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176626703358.14985.15439836372507377652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c14d3cb60738e1e9912b9044301454ce13324ecf162a3004535f84b4b4237a7
Date: Sat, 20 Dec 2025 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766267033
