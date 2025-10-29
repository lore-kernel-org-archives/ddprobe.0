Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C25C2F85B
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761746994; cv=none; b=FqCCrQavrPlitnSUvoOhPLQgq4vkMbUHxqGcd+RJ5w0tWeW0lG2l6iBng9a1EAtSIc3xrZuFnjxpQBfFAh9vMkHjFTHS1ttEWje7IfGxAU/drfbNsYGKZwjVUfvVldefqy6OJp56lhFM5rfY8WSVH4f/jfAERddWbS4070aV5Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761746994; c=relaxed/simple;
	bh=fEkd9A3Ra2gYBJadctzpBeTRLfMrt1pYE2ektNsrcdc=;
	h=To:Subject:From:Message-Id:Date; b=MatAHSuTvvZTFMxkFj+erzQiefSmwoDGEFxyV8QmhX+ya3Mmu6egvp7BCYhs0AJTP53O8Jk/9Mhylu+XK8sAzWpGF0H87NiWJlj/fk2DS1lIYnNPhFSvHI7hpiZ+NkQknDHunQ3DBt/LM8yRHd4GBR0aVNWRDtDMp/mVQZnrzCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffchGfM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffchGfM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFF3C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761746993;
	bh=fEkd9A3Ra2gYBJadctzpBeTRLfMrt1pYE2ektNsrcdc=;
	h=To:Subject:From:Date:From;
	b=ffchGfM5e5qzrYmm6OGH7MHkmv6F0K8sukSSnFsuxArN/kPcWDFhT+EyiziFYqEWf
	 I5SaQv8F4aYHAUGjK99jYtVK+VpVuNPxO+g85FI5hUQ0rIbFxR17P+pgAuKz8Ulq/u
	 m+9C0rc18bBOyvXhoYMXjRTX+lWLL48rYUC31VfJCvJPLk+67NsW+UOL8WDbdcX08Q
	 NSuj7H4OiRGBxbApZK43Nnb7k/eALNprDhIGcr767vhGiD/mOYPNI/2je6YzAO1xPP
	 X/IzaeeOrsEtWri5Q5Xn8JCYIvi6QbVrS2Fdk1paHBHkKY6e6AJq0aCO2VWhAdvDdf
	 Xz7eqTacOQx7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902D3CCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176174699358.3881.7868157991628089833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9650cd9c885931a93f67c2b95d5ac73beeb169fb92a680a5fcd8e7cd9e36f2e
Date: Wed, 29 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761746993
