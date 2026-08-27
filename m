Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45888346AC0
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787829034; cv=none; b=t67gpw+fIr7dsAL5zcaNsXWmKA7KYqWFqvqnVktcQJJ+YEe3mDYN0g5fKFbLKs5xOh4VHXIIl3N+AGauJwaKcb7t5jrYlGpO0/gqj3GNMKgJ1f6MlbPBzvHk4/c7uFdDFXsWIf2Zd3UsTu+Zvp2tq9qVkHDw9gDa32PUfjppmq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787829034; c=relaxed/simple;
	bh=XQ0DJiick58l5oCMZ7lqaTsuNJ+d8Py5by0ajXI5LQo=;
	h=To:Subject:From:Message-Id:Date; b=WbCVcEP+HK0IPAgVSUwwb2Crt+X2unyGdFune/4ty4XyJtrfvuhgSrCpkBreLMvJoBCE7AE1ol1NIjoTbeRXOjIuEHy+lBNHv3XBxG+sexc/HyD3nDf34IK6BzJa56lk58UxMMzu1JB57UE4DoDeAUDj7+O3/nrIT3lr8ECh780=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQ+BZo3F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQ+BZo3F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03D8C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787829033;
	bh=XQ0DJiick58l5oCMZ7lqaTsuNJ+d8Py5by0ajXI5LQo=;
	h=To:Subject:From:Date:From;
	b=MQ+BZo3FVcXK4O43doCHUBD5W01glNt0mLBbFeJ1KhxM9+Tca+HVPf6kR+bIYco7K
	 g7sHsTZ/UWyWTPVS/5EOu9q2RABDgx1/q3eup/g/im0vx+uE5tzi5DUAPXYFGSEq3I
	 UmrxlTNDCbawh+5WByfJKVqVPatGny9KsW+oaYeux+qHM5g6h41T3O16NERnm0dTjk
	 m5zy6uktGWhITkzo31x0H6iTs1hI4oEGO2ibikzZ0iT5Cg7sakndbIE76nAZ6XUKq8
	 Ho6Ay50682NFwlsisvTV7GJ+tSeNVeoXXlEyNIWeXOYm5YlHN0EmtaCr4v4gJDV9gE
	 /K2QU6n94f8JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CAEC61DC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178782903368.8711.5948519473227995092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb934471cc22b9a955a7890449e784178ba920b7a2d04c3b57fa4528a8acb2fe
Date: Thu, 27 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787829033
