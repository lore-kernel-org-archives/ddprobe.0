Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF8E47AF45
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768937034; cv=none; b=mA5jQvWROuQyeKjm6DwcDnEICwUX184kHGipLk+lnHx9iSBn/kfsFr73TYo69FAMxZWXWVGkB3dXjtidbA9lrNirHzuFD0K6/ftttLsWjzkWsymJVNH93Mm9fFPvtvb+NJ18kHB9ACVuxWFS4PwhCkUEhHq1be/x2JD9oVteV6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768937034; c=relaxed/simple;
	bh=OGuM8hpPTp02e666tO23sHDmt0k10u+ox+e1m7p2IKg=;
	h=To:Subject:From:Message-Id:Date; b=bV344uV+OeC+D3Ss1nKjZIwa02m8C6Ztyj1R8iNpHl1c5Eid9qcOFX32SfobM+AqmtXf0vHSg+2akRD/NQ1vtEWP6PPqcHCTqjOJ6Ka9BGDbVPeera4o0rrWbcKvz9f5cZn6hw5salDxQzNrZY57oJlD4uxeP7zG9gtziLWAsIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7PUhq63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7PUhq63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0ACC19421
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768937033;
	bh=OGuM8hpPTp02e666tO23sHDmt0k10u+ox+e1m7p2IKg=;
	h=To:Subject:From:Date:From;
	b=s7PUhq63Mo1I6C6kun8QNt85RDMpPGoRD88RNIKnbyTdd7u9skOzAYugl5+/0Flhe
	 lK7zib35WhuD33NDb5ZWMSsCqwy3rA5cfrF8iPRBziiPe6tBrn/GYyVuR1NUbRGWKX
	 kAlEi2HpEc8ASkyrIIG4QEhMV0zKqKa6yQOJq0UDOGJfT7M3YTR27bJtvg5NZL/c2f
	 YPTP44KBY2IVaJ6Tpxt+Yg1GYf7DOntRuYOBYe6OjZ6R8czL4RF4nq+6xXo8H+N7RW
	 2wnbH3nzz7g8SNpRx/JX6ZfijmQ8X7aJ56Lfy6JT+Z6sC1+KhCaqPzQ34Pmfje90Cx
	 0fMYI9GUR77MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C8CD26293
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176893703358.20257.992013147813024523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ba2fcd61cf8471b64e094b8438a58a23f00949465ea60cdb4a76b1c068d496
Date: Tue, 20 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768937033
