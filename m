Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9513A4F30E3
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790785234; cv=none; b=B9wiDvOrycNGfzjDiYXi6QW5ZqufyHWBWktWWxQIU9a0jGuwyvXhnz2X899+plA5WPNooyy72fnOKByw1qKZNHC10ntxpyzRfuixbdX8eCCZoZ0AxTr646v/D75tp/XWwV/Y0EhJEbb3z6dU0i07Lf8+5mYLnCCc1pSwMtgjIZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790785234; c=relaxed/simple;
	bh=6SZXaKWSXsJk+pec6yFkpsEVkmw3fIF4hFUlBISjGz4=;
	h=To:Subject:From:Message-Id:Date; b=UfrYMRhP+7bRYKQ98ZInP7zLS1pYMzuvld1s59IKZCUy+tlqdqbVVSQJl4qONHs+FeHGd1ofM6z/GT9ONKZmTE30W1b/0SzI6I0Io2Q8IHKSAhy11zBqxetdMGWgnnIILMC4uD4LzWtljExHnEjpb2yhcsTmKxEFLXZXwPJWBeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8dREVZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8dREVZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB26C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790785233;
	bh=6SZXaKWSXsJk+pec6yFkpsEVkmw3fIF4hFUlBISjGz4=;
	h=To:Subject:From:Date:From;
	b=P8dREVZRfszK1z7RfKMxXtO/V0Bc7+7n4d0Gj1ehmUuSYeSM5ifRWkPOd4rm35eg6
	 Q82Bv2LhVzUwTsZGtvq0ObR/rCDjzRjwFYa7bSl7M71NK0YY58mwbvkfMJ9wJ2GeS0
	 M8hPmXVxuXsBXNldNUBv0ABmK41OKN6NSRMhRx9q3zF5Xn8kNWXLJuafGtC4IrguG6
	 Bqx0ra897/+D7U9BK6sFP05802XavlUtRlUbHdMCS2sH3N6SLTZYE43XgN2RLrauzP
	 00t9nnF+UzkwD5eKGcHsfeAJhRbkmWWgBOpbOihXCwznf+dny5ef0iJh9kOrTwir/u
	 lnnHn8bDmbs5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA86BCA5FC7
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179078523368.1748.18332605475432508600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9318022daf411cbcea8cc9483d5e4f7667d22588459c98ab6522ca5cfbfd10e6
Date: Wed, 30 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790785233
