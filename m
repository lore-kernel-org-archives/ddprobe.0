Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CCD35C188
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 20:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779394354; cv=none; b=bvgNkgI8lSxRT2evn+PiGWjJA4nmfwO08rCy+SYn/1XkwfeAFRY6q4yHA5l3i2EkXLnanWOz/Hz7S8NwzH3C1zg92GFyIaJ33/7bNRgzjsupjEc+dHmTntCtasmHt0TZStoSfPw5LXzzGGs6r61/19GwyQUM8ASqs0TZXNCeyxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779394354; c=relaxed/simple;
	bh=o1VsaGVAlug0lPioVTkhLKykQsRQirRYxrMrMabjlGg=;
	h=To:Subject:From:Message-Id:Date; b=Q1xYt68vckOstK9p8HNmkQQ7r4L2n+mQoZ1tDNVfYdicW0rf1MLZt0odJPNw7c16aQE+RVp6tK8EQqhNPXzORyimiTOy2yMVdznE0In16mBBwDGgVZGR4Dz/N2w5wZyoMg3g+dLd4/lXrwwylYi53iajmgLCj6sfFnR5eIrOVqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWOZs9I0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWOZs9I0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB357C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 20:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779394353;
	bh=o1VsaGVAlug0lPioVTkhLKykQsRQirRYxrMrMabjlGg=;
	h=To:Subject:From:Date:From;
	b=HWOZs9I02Zvmu5vEiwlMPmkCn8n+LJh+oRKJWqBSeGlXer/5pu1b5CIZ9DvoHhvXs
	 emzcieBWz9lNyrfIk161NBbEW+2AmG69tu/1DcmevVKx/c2cflSYcYBqeNJdn2A9jd
	 mTqCGEXYp78gZA5OOx5HumYxNSr4yOLka6uARlFQfAeVmsppLVzn2ifpD34VRqJdMS
	 Og7tDp1/K1rey4Kw1g5cowQcgC48l+vfb6dtSxGuf0WpMRPP6C3J+x4rQMiHOKAWjm
	 cQXhEh2nH+rh494y8uPEU1mnSPhkS50hrwOw2HGl6Q/1sgZ4cra6B6pQR7CIaNK3oe
	 SQEAW18wbMGLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0968CD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 20:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177939435370.13112.16189808599205505520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577e407d70d3ac3460f0fefbf78fbfc0d559a47c4473e09688bfcc1da551b395
Date: Thu, 21 May 2026 20:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779394353
