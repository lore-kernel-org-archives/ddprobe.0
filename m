Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EFF221F11
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 02:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764296574; cv=none; b=HQziMbjnXA1OVnnZAP1HmMh21J2BO1GZoiqZTIeITAtPvqsBg2xuZrb4QXoBkfGgdZopbdV4qxauMd0hXp2w5hd+4glvXwUCUZAZngAt9b41ZwVSTtn6J78bOCUQq8/TG++KM9J6mmYzxNIM/DHV3X1It7lLQWpu0J4Ebr3OI5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764296574; c=relaxed/simple;
	bh=KwCzpyD6GShYsupeloEHYHtnIAD06cfETWsr0h+AZYA=;
	h=To:Subject:From:Message-Id:Date; b=sxVPP6ZmzCmzTBY6cOqN4OSzjVXAXDfkh12Tdti3a7P9NF170Y60HxDn/iP25PQPkz0p4fOxGyihWwQdF5BrFgqlNuqjGztsDSeorrIVpni0oShF5C3+6896lQSfOegzf+/3EFgvbCBow+felNtVbVeEYBwo57qivp8hCscPWAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmVbN/uh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmVbN/uh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB42C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 02:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764296573;
	bh=KwCzpyD6GShYsupeloEHYHtnIAD06cfETWsr0h+AZYA=;
	h=To:Subject:From:Date:From;
	b=jmVbN/uhfTWIWpSFapv6SWKRashxV0+qmLKuYylD0+U5K0Ji+Fzsou1EAxQ9znNWO
	 kFd/pHXILE4ysGI9lojzUA181Fni6VqlW1dgkchuGebgTbbqonsQ6lsrT6Mzttdv3d
	 vjxF9Lrm2XPeqH71iXWxbSLjtG2zJEt7MMtRF8KmYzFjls8TFnX0iDPUBxLMNmYElW
	 05blkVXEFkwVzGeMb1A+0XPnp4L2U1PfRwtEEPRJ79kv8bh2PtYjxtz3kQpwdLyd7x
	 ZJwfTiuHj0RvIENfWkhrPMMHXu1HLVOfYFP+DTtj4/bpH9QuAGz7VflL0qJ2fBBFnf
	 nVrDV7mNqyQhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9993BCFD2F6
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 02:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176429657359.6587.4433022995015877254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce3784c05f9610610222bd3d69264f794fabaf53c45cd7656a88243cfbf7349f
Date: Fri, 28 Nov 2025 02:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764296573
