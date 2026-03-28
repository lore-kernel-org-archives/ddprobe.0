Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1316633FE27
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774665294; cv=none; b=PJbN2zQeMf6M0BIS7KBxbfqsSqGb9OijFAz1EepPP5NWLdgmnquycWxAzc15lumEZFIllibdxGrfiUOI1XrA/GlWW6ACqnjI6jxfbehE3LI+c0mVNNN1YJ78JUbPCYDtRB3Hmi2mCxSQEQCjggexN+3RVoovaUjtVyzswHFzKkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774665294; c=relaxed/simple;
	bh=rwVRI89LAyDx/+X9lucBzEWh86v1IMKmxQT4ovTHk0s=;
	h=To:Subject:From:Message-Id:Date; b=fo0gSO4KBUm/gJ2AiDqYeFXnUhltzZLHVoxUaVt1BaXBI6JToVaVr6wpG2ReWJPCmL+OGt99n8g7NFMnA+V+YXiUPM8d+AveMgpG9Ra7XZdb+UC+BhXFo+MaanlcmH4zlev+oWvgEcTW7i9kPpWn8VQacWZRsQLT7TYODT93i1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZgGXxoWm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZgGXxoWm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C2FC19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774665293;
	bh=rwVRI89LAyDx/+X9lucBzEWh86v1IMKmxQT4ovTHk0s=;
	h=To:Subject:From:Date:From;
	b=ZgGXxoWmvh5X26ELJ+7nt7+dGP/HuYJC2qAbevUK5/QWeabqH8ecN8r5Da5Y+XaiL
	 ovpGthacoCDUNXWeaioeo/8vla0GptHAM6Ftft6b0VctT1WG4m3le9KMZP7Sb/P8mF
	 s3YSDL9QopK35teSXlcIpgpo+ZmScPJg3v594scdb0gEv9IW/9iVaTX7TrYiUW/6B8
	 /GwnZs7Zr/9XsBnyAgKEgU0QMc4QiXXcxbIR0y1dA2fjfL1tbNfFPY0Bx0Dmgzix+v
	 gUavMqQHOPAM3EIORlcgs4/pHcvbu5v0U232XOoP/2I6XpNxhHzMh+X0GZc3P9UVfn
	 NsDDvBB5hdQcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9755510F3DC8
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177466529358.8970.575587055485585142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51c01eeec0bf46fdac7ecb7b9f22fdead45bc5e8f1e0aa119625161e66b4c3ad
Date: Sat, 28 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774665293
