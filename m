Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267012F83CC
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762937994; cv=none; b=csaYj24aNjoLhE0yJBca0uqEQrpo3tLHI5O6rwNOdkR4u+1awQhjyHa9QwImSYySESdspK3YndxHxBymJhZlfFZp4EEX/f2ZE+t1oES5OuQF7zCbGuSEHNiyM1v0LRG2+iLw3L/ABZmN6I4dQewJ5I5+zKg7cfME5Ilcm5bELCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762937994; c=relaxed/simple;
	bh=G82rs7Smve7QoN/NHYm3uPfuHBNeNsDhXaU4AEBqFyM=;
	h=To:Subject:From:Message-Id:Date; b=g44S7l4eeYmN4NeMKohtSOCN6JdaxqNjFstjHphh4AXw0ytPKYtt3DjviuTpt8Xh09U1IAdW60Xx0lSp1jMZirj6Toqpixf4HKVsd4xyEFRD6wzcFW0TZlhLBS9zvkrpuX8xz7Xell2g+MgesA8tjKbHU6k6lNKVGjToQLyLwb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8SxfpTJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8SxfpTJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9A7C19423
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762937993;
	bh=G82rs7Smve7QoN/NHYm3uPfuHBNeNsDhXaU4AEBqFyM=;
	h=To:Subject:From:Date:From;
	b=Q8SxfpTJ6ZaUiXFEBrm+yhNBHM81BK/OUfp+3FsoSZneJwjWy6YW9XzfgKF9mV7BG
	 gDRdnjvQCmTz3xJPm+8c46Xp6iD+h/FK8jd73DWNnmELeZIXBLM8FaDLKE8L7pyQQt
	 tqY5mKqN/bEzB12EvFMiLHxWTulKyFh5QpC9qIRvOR15UfCnHUxlrxb1I+dFzZZYfJ
	 H2gt+HzFbV6QKGXtKlrnLb/Gkn2Gw6f0mFWNHkjfV9KV9DhzozkapcLqI+SPzg3TFU
	 DyMWsf8ahsdJcB4jgDPKSJSSgDQWOZtNJBbFp9W5vhs+uYQfo6cI1TaIT8O5tJ4Gow
	 hWs7UhFsAiyLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F10FCCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176293799357.21511.11793719809547832888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e87ad9f3b9dc4a81482f643c317fb1f56ef0955b99ef718d1da3b90fb3d5dce7
Date: Wed, 12 Nov 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762937993
