Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3621A2C11
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767317634; cv=none; b=YIZAmxU2w4W4nT7VMIR/zcpNk1T7T63O10DPCqGXybfMqpXzIX7vV/arlmuGvQdTdN1/OgTgXcXxkewhlKjeO5hrEXCnxhbmLu9sCZXmvWTOY0LNJL3Ec2qfYTkmwnJiFUSuuTLTcE64aO5hkVkWXLsXWykgekxdpvKhoy6hkUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767317634; c=relaxed/simple;
	bh=zqPlWAACFkF5sNjJzhBgaXZBZGB7ItpxsFga3JSyLhE=;
	h=To:Subject:From:Message-Id:Date; b=Uc6nZmbFwD2TpQGFQIVCfGIOF4VD0/s7ZPYfD0f/5fWa3HOxc97BHjPREyRpKsZOb6xxe+cZcpUJxIXX4oE9sU3nn24YJ4buJjYiuhBFcvAGAM0YmR32snFX5HfvqG3uRVIdPJAvx7epvjO00FLSq6B0pqIArPSDILBqNu/ENlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9+OBkZa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9+OBkZa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8E1C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767317633;
	bh=zqPlWAACFkF5sNjJzhBgaXZBZGB7ItpxsFga3JSyLhE=;
	h=To:Subject:From:Date:From;
	b=b9+OBkZaVy6IKV96zjq6A33JYQHZV2N/2iJTa1ikin4YuAL4cs/ync5wzxL/a8YW6
	 tkgerwoU9hC0rJNwKDnGEpotFHsvXisZyVGDftZgJ8VvbAJHh8G9/W2zl2NAxxgrID
	 AH1sYPq87yhNTHXXNPPYq4uNGlJ0z8XoyQmYc19F0T2/r5IXaZ3D3nU+yKpVzL20FD
	 38POVWSNKIHxWEQcKyGVQzmtnq8NsVv/rPhJ0FjjLNzHT0p8sAqZ8bxp2gVIhsMIQN
	 b6aJYUCR2PnyTiXnAKNennl3BE2Y0jmQoeWfS04EL+VwkGJyNfC5DTnVjulYGUODb3
	 +05xOojSeKYhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97903FA3724
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176731763359.13412.2394344400772414015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01998cd0a061e55d0cb1b7466bd84bc50a003992fed0a24f6a2dcdeafa07a0b8
Date: Fri, 02 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767317633
