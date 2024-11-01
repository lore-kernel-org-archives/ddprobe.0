Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D6A156F27
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730448954; cv=none; b=re3BfIbuE2hWq5LU3o4zibuwELTFK5nhUM2Z+qYs2Mz4nUbb1jrffw0i0tzL1yOwVMFtauxiQb2TKMsqV3zt7bmTaSk2UqkiUlwnOLKIBB8GAaWfu4gXLET2X2yeewc9Mo4xkdccqVQMJkQsxPUjK8qgoPQs+XwI6SGB89J3jFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730448954; c=relaxed/simple;
	bh=xOFhoWdBd7f/TT/Y0xK8R3JfxcVRhkfDqbRM/Wt90jg=;
	h=To:Subject:From:Message-Id:Date; b=oLBOHasgeIQTb+yORQFNIQrlIjtqQ/cf6xTSVI8zLJNZk9tfgM1WmTnLxHkT4h3jdeG4NQZZDqwe9rIsKKtDD8Vey1HrEzWRoPBnG8h6JVraPTucuTnB7LkO52OojMBzOqTO+xO64+97kFoXJsGBsWL0uerhO6yWURHqVXKLacA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFcN8lv1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFcN8lv1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE7BC4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730448953;
	bh=xOFhoWdBd7f/TT/Y0xK8R3JfxcVRhkfDqbRM/Wt90jg=;
	h=To:Subject:From:Date:From;
	b=VFcN8lv1vV1AsIflhnWPU3SG4KN01rAPL//Bi1+Zs6kIlr5tIdydF0aRjGCFz0x4q
	 dj1GoHTH1vQvwTZPVts6cpaYFgEO1NrzHWlkWywG1ZQDDu2wsakPxUzRG6dvj1UChp
	 JxnDvzpvMVYZyBkU22d3obR1qVs9ylF8ivcLCKmJq5xVT6NpXXLARw6QZx5hnk/oDX
	 emtHpw4SMS7KO3bzbfVU0dRo80nR3UPHRxvKp86KUbUA5B30oDW5tqtEmAJSumkWDP
	 nmkSuWGdyhLmlHaRC/l9cnu1B1LJ7V2qlR9wh4Kl6wEGJcJXVXE4nZ992z5Ln6XoQ5
	 1aSa5Gu0pS3bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAB1E674B5
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173044895369.6654.11826141511108161648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4ec6c471c8f7d18570c796c281e367a13a922f43f2085a27c93e7b9a87943c7
Date: Fri, 01 Nov 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730448953
