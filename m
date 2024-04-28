Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507DB17C96
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 23:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714347743; cv=none; b=q0w8ThVraqCVsY7DqK4TvkhlHyqVxF8AqVjm0ifzX1NNOZXZMB8gjAZHZ+oTW7KP99NXOzt8b/8BlLD7MAqsXj7gMMqNzmAZWbatGgJbshbVZRsjyf5dv65m4HDNu6yoqVqrq8yWr1WdIAecr6Pkr1hcxkIEa/QQLYvX6OzKikM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714347743; c=relaxed/simple;
	bh=stq1OOFV8ffrorhNdPUE88RYnp3SvwQttWqYjm+X9g8=;
	h=To:Subject:From:Message-Id:Date; b=dEaSm2++SUkCpAZgActnh/h8iIJUCxYFDBnq/x1uqU5sCkraGqKkl92vEaUUi8Jux5Dv+yBRK5y6Iwbjc/1zrtMnDgCnK9nGwyLDk9EYJ6jif5J97rZhEuGtuhDadxlc5tJk2eJs2B7trM70aTDn6j+zpUamOj6aa48DnWhqrl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZJ8M2DT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZJ8M2DT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D860DC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 23:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714347742;
	bh=stq1OOFV8ffrorhNdPUE88RYnp3SvwQttWqYjm+X9g8=;
	h=To:Subject:From:Date:From;
	b=DZJ8M2DTUqT7EEAxNYvPOl+ansnknPi9PoIDHVaPVaIRy+CIH/TGLlTInGtb83e25
	 ru/hFnqV4Wy8XwLbCjwE1420ETOz1zY27q98ks8D7Ha6h2RwXr1im4bGWL2iMGeips
	 6dr3YWC8fcWBOJTufLu112wpg66OwFboBjBrum9GHLP1RmXOibjUF8oQLz5uWaDY3t
	 VdIo7MFNgk5dT9qPwjuZ21T8aX5bJdiQc9mxNT88X7gf6Q+mR5m0WpWdcD2eb9iP8v
	 Knvihsw701zzXIqkHIoZIW3+Z//bv4Y8CCAdj1uZqDiyxI9KU4Fh3UvGArLZGcd/DA
	 SakD9rMRdjDhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E31C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 23:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171434774278.2331.8021741024772678842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d97d8e91310476fa30db39f00fdcc376041076053e1a0356222cc426a3e680c
Date: Sun, 28 Apr 2024 23:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714347742
