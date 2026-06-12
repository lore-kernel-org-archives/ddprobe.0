Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2191429D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 05:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781243194; cv=none; b=ZlMtAzq4FKr82nWp+metZVYpwm6rML3zOWRSnz4f/sCuQcaGWnSC00QBp9CQdIexPn9hkO/d5+Xv8QwcBnEITLav/E2WclKM4Gb93eQVjKkXXwjCKJC06SKpaZ76fGB1fbXycZXYzy9L6/tvII0DioRhYxSPdQKef+wO5KDZVcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781243194; c=relaxed/simple;
	bh=vC8U1IsJygRZiLRkATDGT988OZZBVd1tA1P/0XoXzxw=;
	h=To:Subject:From:Message-Id:Date; b=tv4CNWafJkMlxfdwF/Jdj3ZDLvung8MKjqAeSg3I2f/sg6ErweByNIvYJ+0f2hFEdBnSSWT1T6uc7Joj92YtVGv1PQp9C0KDsV2RFCXdWPi/gYbKMR7O6eZWWbDK+nxiArTxk5j8rvlB50V4E0GCYNqaqb96tNP5sOo4YbMeAao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqMP6CXk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqMP6CXk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C66DAC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 05:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781243193;
	bh=vC8U1IsJygRZiLRkATDGT988OZZBVd1tA1P/0XoXzxw=;
	h=To:Subject:From:Date:From;
	b=WqMP6CXkSbR3WShf3/y3hVRzLLXi3EijZ+wD1Oytgmj5buQZuNyavGbHXb7rwEvrY
	 hFqbN0fe5Ik8MhnKWqY9LvF5xiMy1M36AIVz/sI0dNuaNJu9sizzz0Lbbg6oKhafTf
	 vKYMuV1SSawFbrubpmUX1c0pE+hrcIUl6X4MSQK+aMKa9QtqaI5MHDQlCyJ4NzckmB
	 Gt5FWO0vc95pG86WzNeY43OTXQCch0PGF7dnD+kYDUw9+ZI9AVoYMTLHOVEyO/kboV
	 2odN/ClfU2YydJYULuh0K03gI1gIEvJIAWhnFj6IEUU18p3+B8NVeJYXXd/C5QgpRw
	 TYtxNX09g9P1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4DCDCD98D2
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 05:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178124319372.14992.17548098836885055091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee6a4587cdf5060f7ffaa5e58d5bfde560fa1cc7bfeb276f634bcd548a0276a
Date: Fri, 12 Jun 2026 05:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781243193
