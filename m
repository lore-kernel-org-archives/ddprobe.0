Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C447D287278
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752135593; cv=none; b=e4xWULhT3O3KidgXvcVkkXsRVizW+Yg16Asx29j5UBY7ESfeFWhqrW0JJuLckAcNdOtZ0kjTuUqfeoOXul87znLOEbMD9AkS5j9kMKS2sXz89Zm0dK9vQFSvg0xeq2QaJ7FgEguZJZ9DXUvdU62uy5ksQbiZss2fhtMEVkvcphw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752135593; c=relaxed/simple;
	bh=0B5LpfDcNI/cAbPqQ1g7EkOhSy2IGKwq9vjz+Rkwy70=;
	h=To:Subject:From:Message-Id:Date; b=Bj0OunR+rGfQGCt6BardPHqqT5m9upanU4hnSe9nXsXp6InF8MYo+7ffxlqhX0RBBBjsJ16ozlAj8H/Pa7x8bSsK3xk5Wki9Czd3mChz0Lc5LmFqnE8GMY1v0o1DdwFtOgv3PqFqThmrNRW2zRJd0tg/RWbn62TJFM5GHVc7ga4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCYfjAmE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCYfjAmE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02F5C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752135593;
	bh=0B5LpfDcNI/cAbPqQ1g7EkOhSy2IGKwq9vjz+Rkwy70=;
	h=To:Subject:From:Date:From;
	b=iCYfjAmEp8hUuknX2qssUegHUPt4F3DNa2w4tjASvjlSdosqH+BWGnY6v934MD1k9
	 15Ec7xdeO9cjgUH2ZpAZJaviBgnE0kpNuONmF4XfPG9aRbnrukx9bSKGbwdxcQVhmh
	 Z9g9DCKWFJjMyhZZ6cQC+DqeEY/XElgXdAUMB+a0P3Blf6J7nz77j+dMooc5B5MLuZ
	 7XLqGowH1+FJG15RufeCq0HUckCL+PjvSGWdw0VmTQtVLEKTHjG+wBoU32v2m0atUc
	 qFcnuPXfAU2XNF2u4snXXljGrPvMKON2nA5KxJMZv16Xz1pzJm7og7YgRCSMX2jKP7
	 bcgyY9lomzU7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A9BC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175213559358.12431.2974619187151058491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aa6150b3fbf21226610916826622000e13994da3f3d729d1303c9f1aaa68b59
Date: Thu, 10 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752135593
