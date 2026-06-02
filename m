Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447A831985D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 05:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780378474; cv=none; b=BhRvwEeHQqEqw0k384Ub4kF9VzT9rckZ54qYBGhLwnb5CZRwIGI3ebCLS3WNOaqIFy6pgUwtWdg3PptUBPZC0WAK5H1e+eGXi0y0iNBm9SP7Jt4dSRw17CFvF4hMz17JTx7O2CA3JsU+IGrI7RK9kx8VzJsRcqJGWwJVOP8tbjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780378474; c=relaxed/simple;
	bh=Ro3BCZSy1BXSMCy4z/qoQXkV2KRLHyzp96U+PT2xL8Y=;
	h=To:Subject:From:Message-Id:Date; b=VVGArkX78tmfZjoenyasCEz2QHyZAJRwfXmU69+JJbmFZACEumsKVYDF5Rvf1SLkMrHZHqr/TgaS29Xdhzddz6ah6HvWdca3keLLMGppZfQE36n7WV2Mj2SQgimKH6A7AjogMKCaVMbKbfmX7JP4Q/X2aUj9A6+0w5NgmhxXi6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pH+9GL0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pH+9GL0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9001C2BCC4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 05:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780378473;
	bh=Ro3BCZSy1BXSMCy4z/qoQXkV2KRLHyzp96U+PT2xL8Y=;
	h=To:Subject:From:Date:From;
	b=pH+9GL0lSONv6zFBcJbY9nWWIOK7FhYKubMmiL7Gio4Rogh3BAjfuV9sorsrElZFj
	 5IebmeDpkdeWYII17Th6IxttEAE0lS8NeaVxMleWP9ypXfWYBhL1hp+T1fHn80VdX6
	 NXVximqvdkXh4iyuyOnqFJUjbm5md96lyU53a+YibqzOswHfNRoCd59oYQD1LTtDZZ
	 NxtNaODweX+ym4a4Wo6X0LRBbYVK2cEjNEQnFGYtZ/bqlKCEyKxUvJGYsqxJfg0Hi6
	 YuXHAJ3DIFUI+/dAkVvvpwWUuGC4Kj/ZPM++OwYdGVoV+HV731KFqMWiZQfFTSiqtx
	 NYsBcdb7n7yNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE68CD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 05:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178037847368.2396.11940160865754732807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 413df3c5c22cf890485a19706ac13ecc5bd4741afccf085cdde9d763bf9e2c3c
Date: Tue, 02 Jun 2026 05:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780378473
