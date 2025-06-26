Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31782264D3
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750965593; cv=none; b=D+E5lMFpHPt5ePnovrwf4j78hwBZhNtuW7Bz+4PVHCmPYldR2dhEOQqh9RLk7hqYFL+sZ1MxyhyxXOeZZ9wpF5cao6kYtTzXadSIRAcZfravk5cCDIAT/sV06Z23uxkLBvGkb2kFhC64TiXvhp4BJQVYa4baI/vK23j5Y5uD9KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750965593; c=relaxed/simple;
	bh=QqCyvbswn/+Np3qmaUSYX8VY/MZjm26ouXVfbNGt2QU=;
	h=To:Subject:From:Message-Id:Date; b=rTxvEtZaOi5srU0WMSEoIQzt3oJJmbDJWvTvSRoI5bCLaMtkmppz11AulxWnnRQTZqlBlCEht9GmpAMylCUBAfYOPAm98/ILNbG2xOjlOG4nQhplHQNGniyfbkL4iTnSkJqrysDwMenTm1xkRj8qNqFAAJIe2Z6EBsKf4fsKqL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unMdl3fx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unMdl3fx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88A5C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750965593;
	bh=QqCyvbswn/+Np3qmaUSYX8VY/MZjm26ouXVfbNGt2QU=;
	h=To:Subject:From:Date:From;
	b=unMdl3fxYZFheWEoHaJUDX7qENEOvC4D3qzJgx2rIIYHVACuelVNYrGX+GXvFEQB1
	 Q/xy5KRZduEN1yXMNBE8Pafkd5aeecJge6RRtOPlRmbyHmEw0pU/5LHjZgLFUpHXHs
	 rEKLBKif7yztdFYcYRQA0a5hJLUvnNXHrZjW4WZZ5KioOPGve2MGnAaaAULms9Hh7b
	 37B9I+PY3eORaA3ulCORNGJN/FDo5rZvRg5Tgki+yHD2tVxpAcmWWjSvBgBPE2/DQv
	 HqzWb6A/5olD16DEODbllAgyH3CLvKqMz3RfI1zE1h9yN20ZPDmX9toEtY2yil5vBB
	 uvBr0ipwf+9/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936C6C7EE31
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175096559359.17928.6803368327696887058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af12c052718444ed7b43e37e54b7f37c06bee6cb0fd6fa1b2f3ff504e9691b06
Date: Thu, 26 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750965593
