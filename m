Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D70A38BF67
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772088894; cv=none; b=AlTG7z/eg5wTLkyX2ubRbhDSkrvkl0W+k7eDnTyDBgkN4lOxu5NxYcy5XJCqWzE2ceZm6nwJXscpEXUCxMsxB38oALflWbhpLJkXEs1/2utYI9sd5NzmxhTcKBCRoc6Kb5igLMzynLhFN+kDGPIXGPIE66PGwpXl+xnG7O0q1cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772088894; c=relaxed/simple;
	bh=wf626lddGQFyBwzBimLZkW4kbIpOUYHGhUFpkA2nMt8=;
	h=To:Subject:From:Message-Id:Date; b=FktwCqPN+ZsSDXDNdFZF3WgyUi2els2aS/ip4fQzYsAzlkaqe30skiWFdBBhU/Dmath19GnCUgjKsxjTLv94PtsF/sEao6ajXNf4qwTDuCMGPuGHKM6vC52Md1TEIUdjWAaWBz7IjjdBiwVMeEerQKrHVIOCs/t43KM7dEBLFqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0hF+dbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0hF+dbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B19C19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772088893;
	bh=wf626lddGQFyBwzBimLZkW4kbIpOUYHGhUFpkA2nMt8=;
	h=To:Subject:From:Date:From;
	b=p0hF+dbvWeHZXqqYZ6C2kwkClfoe8a3bRezqEBKJOz5I2Mzz9zzdJuCv7M/YaK2oe
	 8Q2u08VToFesPNq6Zmnlzp5S+adZnTGzOskxH9JCc/OMrV0JPwfEUu/AYMeRlCi2IR
	 ba3il3Ba8egl9O6wgC9KHjfO992G6k7aG5PaWKq5Tpw9JGmr8mAYBMulwwwltEYqYv
	 dWDhhm9qHzVFAcDO0LoG7BjfTHAeF7KaxGS/wZcpdshjTP0qkTQo7G/w3xmE2S0ZHb
	 BZqjy2diF0NDFVAPil9LM3SHxbxnZBgPU5ySIFYyrNkgxmnTYfrGXxCVKUjSv+wbWF
	 2UmoAZYOxCT6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FC6FC5901
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177208889359.10828.4881861145612702910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ff4cbdde25ee0c0796e783d28c8c8b90e01682d70478eb11dd0f6382762183
Date: Thu, 26 Feb 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772088893
