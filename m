Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3539A17B418
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768119234; cv=none; b=XRBnQ+68SmQdaz65x8bVlVnAtQQHtdD+cXqcbulD9LCCCY/Z64rQTPZhpnCpEOZMhZF/ZxlNtRJ30uJWPnadK4yh2fk4L8Usn1qJWNMUIxdlF+VzVJXxykK4FymYjDsMF3Zuyp+p5bJkpJRN5YC7NW0mqsqe6gQqLq7C+5cyV+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768119234; c=relaxed/simple;
	bh=WqT/5Ut6ClIg2m3qW9VPLKkxL1iMo1YJmD4MXYP4i2g=;
	h=To:Subject:From:Message-Id:Date; b=pJ9ZywgCim8gBD1r7DzvMpQktDVh+yzHR/nFBnUmT/TGt/qspXW+vmT89QwC8+C5Ecj5bR/hHdD1WeFNYOlap+LEhnYGY4lu+OpycxJ2MiUbJ2+Jkrh/H/2BL7lXnVqOsis02Dd71wvdaKK2NapEYl+c08uETF+7GKQfnj4CpQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMUWL051; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMUWL051"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03D3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768119233;
	bh=WqT/5Ut6ClIg2m3qW9VPLKkxL1iMo1YJmD4MXYP4i2g=;
	h=To:Subject:From:Date:From;
	b=HMUWL051T7+MMngfvMcre5sRogrtnTyZ3cIgUUKDT1L9rk3Doa6B69biZomvDkv3q
	 7yC7tc8BpjfvQLeCHf+QYw0qT6TRxjSaBLlCZ9zt/x8v3Y+EI949SwbJjclCFcfvdF
	 lgFCPbm4W3ZyF6L8a4Y8FkuOq9R++he2TUaEw6242nACsIGxKJGCzu109d9Yzm4ns9
	 +SsJKIKtDVG51vjpM1SlfHR0o2yurvnzJJJok82wbRm5W+GF6VT0FeUr3UYmPhNB4V
	 Ej+CU0vfCfxE3D4lUMAJPtVG0cbMgPhc+qLncRLEdaVFYph9bZrVV7sa/kUxr9kr+p
	 jOjFC41dwuqsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5CFD2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176811923360.22838.17552333349915296466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45565139166cdd2ba60ea8cc5338b572410feb71f66d28db45f06ad72eed5d49
Date: Sun, 11 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768119233
