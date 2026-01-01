Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B121A0728
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767275034; cv=none; b=eifiHGfVCPzuN3VCR3Wdlak/kwQ1QeTDD/VVHNLPYFMTfQG2N7KJ3mho5VenSADIAqWHnHVNPYptM9quHOEaLb5IbeZvODpKDqrlsPwcYooUE5a3QjP0gRelJqKDggRKYxQiEPPN4bqqZxajPxXG1+kStaDK0ohKPJjVOx3V1T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767275034; c=relaxed/simple;
	bh=0+YnKTN0osIvvssvv3GbsVNQWt+skCdUuAnyMWuCwIM=;
	h=To:Subject:From:Message-Id:Date; b=En5hPDK+tTxWGlJms4lqKQqRtABeFkQEop8TH24SiYYPbSQgxFH1u6aBxbPsafTDYYK/RSCuivYy+62ulxNKoWC1cAkO2+Add5XZfrTsOfkZHe5cOII5qnjtE41B1sXcogZ/O0Hg0kaarsHUrUSi8ocOVUkbCAj//axnGJq2JgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fg3VG0jk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fg3VG0jk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53C1C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767275033;
	bh=0+YnKTN0osIvvssvv3GbsVNQWt+skCdUuAnyMWuCwIM=;
	h=To:Subject:From:Date:From;
	b=fg3VG0jk1C6Nui8Rsgn473Kz5IKoJ/SAszy7Ol86W3+4EPJjq6Pku5rWMAakIakKw
	 tOmnFi15hV3pQ7F+3l6us9JoM5d1MgT3cuYMlX13ULfBBvVfbWtLGZuSIPZNzcoI4h
	 OjbHH7m9syetS71M+HaYkRXixDy9Tab/J7KOuJwx+aiW0+rax74YwbHrCK2354MdZB
	 EbaifTCBeM74yZ2B6Th7rd/ad903aGDOewXipAR6sUEmg14yuROOvOHztyoqvTgWu1
	 rsBWbb6AJjcoa5lD7IJksL/1whuW5Jk2Yqm1xmGnxzIBUtkds7bdRswExm67acKGWM
	 mcrW4uoCRAp0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EE8EED609
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176727503357.6012.17980308249825256619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e788bed47539737c4cf00b8473384eb05729ff929b1187bae4ed32cb618b385e
Date: Thu, 01 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767275033
