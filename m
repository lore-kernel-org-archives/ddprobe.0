Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B6F34D931
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762975794; cv=none; b=taeL01Bg4y1FdEl3TTqrVwxhs8WK/dSLdN3/IdGEn26q9OjpkNELx7SknF9l61O+k8Di/yQWNksSq9LGAPT+Xm4cedzRfEHDOCuiEzFJPouHEXpSqR4CXdQT3h/G9hJEXZwp6dCjm3Qf17RpvTEaqjkC6jDaSiujezmQ6/nj/+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762975794; c=relaxed/simple;
	bh=KzbG4WoJo3ApkUQDi94a6GrN5T45w/+l3PGsznSE2Gg=;
	h=To:Subject:From:Message-Id:Date; b=o5H0nihnowlVrxvdYVWUXrYTSyEbfNsPpp1LuV22bjX0MViO9qCkfXrpJlm0shAQoX81t0kYrvlr4ylcBaxsxaU6nhQEhX5cszubSvS/gLU62mftzATIKEQAXTN4AoA4JSt8vltiHVCxBTbJaelrEB8JGZ+6ExXtM02zoPhMvIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6hBl/x2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6hBl/x2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6F8C19423
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762975793;
	bh=KzbG4WoJo3ApkUQDi94a6GrN5T45w/+l3PGsznSE2Gg=;
	h=To:Subject:From:Date:From;
	b=a6hBl/x2qQcJMhLhHAV0rDIKk4zE7khrvyufkvzuBPJXZQura7PPQSq3Pjr2uR3fr
	 dqa6qkhcvYBtcKwgHPwc0x11iadFoc7qEPcsXysUWxlcXHAhQ4HBZK6IoJHUAEdI1O
	 HNrthL6xLn4C2cm0Tw5QPrEzHKx/0+J0i5bu+5QkuQYFpGGI9VvD0zeQ2no1sdLJzt
	 UIYo/XzqBlapPHBkFfNHZnZ+FI/3CaNIJgBjQQIhZsBMDDeCCqHY9uFVdl97kxo1Xy
	 Ci+ucPmfOC8RdkdyPRntEKny1f9lEo0SX40tijYYxHtMaOiBJlBVddMPEZML6vY6pc
	 2s/W3XrwgGbhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CA0CD3444
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176297579358.10705.5047227790723655877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3cf5d7c3851817c1c956ce5c6ad218037248a4a11bd5ed4f450e7e44d705a34
Date: Wed, 12 Nov 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762975793
