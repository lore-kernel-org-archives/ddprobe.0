Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2821015E8B
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769796834; cv=none; b=HHuloCbQ9V13LEP19spzRZr9v1EcsaCS5v2pyKxZmMJeZm98zmovXkIKJ/rL0GAPN4rdes0YO4d+L6nDz8pbDtOE005pCiw71UDTgGGVq0V/BZnv0v1Spt6NkE2JZPOCg8Yi3v2dNuRditDKT6KkhlLL/ITMZfYSHdlYb3dVvJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769796834; c=relaxed/simple;
	bh=XQYxrZgdt/uzSyPx4xS3Pdf8LxZpXjp+QtoGcIQWPN8=;
	h=To:Subject:From:Message-Id:Date; b=QqO25pNMvV5tvxIBafteXZMCYlsCGuW6PCIfqtChO3GJ1MS92S08DNArufbZ32Sc/znEkYXMeLDhSpmPVBcbbeYdexN7yKGGKRos4YPswTEqdlQmrQmH3XRMXCi83IvrG88q9js0R1oxDJmhPOzAYt2Q/MQ9lYAjwQPQG8qLEMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YmE7qYJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YmE7qYJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A867DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769796833;
	bh=XQYxrZgdt/uzSyPx4xS3Pdf8LxZpXjp+QtoGcIQWPN8=;
	h=To:Subject:From:Date:From;
	b=YmE7qYJuK3WX4WdAu8YZp0LyQiqCLE+GIL/ZZoJEKFOAd14jFBom/heDJBKvVVJ5s
	 0tWs0qPffsaIxkY/JV81p8VBYOZUczcAD5iAQBP1kuzNkYvY0MJtSxjfykUieh0ZQb
	 DuT7eNt1+sM1l8fDOQqSDkyWzGI9WF0RAv8IeBBq+m0Mb7tadlGAseGfLvJcMQuDdw
	 tXju37lWEBAAskwU3r9imNgO7jivwa7wf+lUlER4LO5Sk79pKhHpe+WX3bCEdr0HqR
	 0jjZrKWMWTpe7Wel+JQiffPf2ME9VKuxPtXEBl603wwMxGzyqptgoPz6b5mpKg4qli
	 aexJ11a+FM3IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99465E6BF2F
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176979683358.11267.1345824182326524295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 266549f2edfedc217a090f802405ecbe0c66300c6bd38d2a815f8ea66d8c3ff7
Date: Fri, 30 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769796833
