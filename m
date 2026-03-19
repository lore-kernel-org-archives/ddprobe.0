Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF3D314D0B
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773899694; cv=none; b=o4JoRPWbUQypkSpJtOCqvnp1eEAfmUUGNXh4AuyXaXrltztja2XSFt+rhTztXE0mjuMXpOBoKaT7VCyb6xLyILOIqGoX43JBC4XPwtNmQygk1Q3+3BtQGc6lA+N3XH0AnCUAnXjb8IW6AY688kvWIvP/spFYQA76wAU0Crm5LJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773899694; c=relaxed/simple;
	bh=83VuvDhBdn/cvN1NgwuOvIHYPeyeOYEAQfihWlca158=;
	h=To:Subject:From:Message-Id:Date; b=CBSfrsAo7Kgq74YSD6FxbHfxvq49GQ08uacO70NwwswT+YuTSY1iIcnVd36vq6OhNkOvlekYpvGLk0DKuU38iVCe2nZiQZbfJLGlrH4N4NL/s46q/nn3oud5DxJuqHuslpLuX5hcw13ylpUbPyBcOuiuSnkJYbZneMqL2Ba3eJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLpUf0ge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLpUf0ge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2250C19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773899693;
	bh=83VuvDhBdn/cvN1NgwuOvIHYPeyeOYEAQfihWlca158=;
	h=To:Subject:From:Date:From;
	b=lLpUf0geos7eRpBcC44Xd6t2Qsx2IY9ELKQWMBUj0ldt30rDjxMu2Iivf29bMl5To
	 dmWtv1CpHj0ZpX1ZlVnSzM8vGPfcAgEn1HCgpJvIC7GickKPbrdkrLp+kVBauHV4PK
	 BA8SozjM9A3qdWYVOCYSNq54x2lY2OsCNIgN7OcvAvWyYCmKst3YH6HfJ6WB5ZQL/T
	 uEhSEwwRg6mhV8C3KLkZrhbYjqupNGlQScNSZdns/zVNzbaavwP4863KIP45Sy/t+K
	 oUzfbhraQlLaGILK/rQ74sL8pjY0+TMlFzf+1770zaUTVY6BekpqwIZC1ExpMFhaIn
	 DiKVh6WoetzHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F376103E19B
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177389969357.4356.5868356707429747582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6c5ba3eab1b9d89eeae3f0cc32ee1e566ecf1f35eff79b0550692cd1510044e
Date: Thu, 19 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773899693
