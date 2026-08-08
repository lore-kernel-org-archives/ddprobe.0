Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8D2339875
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786156834; cv=none; b=rPWH5bTrD3AZz+/U53y6gnK4kBhobNGrW57JVvJNqCrFUwiohugStkdXxSZtizKUnBqztPmZ94enB38NyZALH9mlBlo15tg1w9gQ5SmZM9eTcW/W2ajMfZS7D9gz8mcsrwmiWsar1AZZNzE4pa/Jd6VeNMP3d/1j8Qin+3bT9Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786156834; c=relaxed/simple;
	bh=V84npCafILelGLOgUUcBFJolQ74aAIhB7Rn5aijV3fc=;
	h=To:Subject:From:Message-Id:Date; b=IZmMefwRgZ09h9KIZ/5Fhs4bQy1DaLjNzNedaWY115JzsNDMnQZx75/YYujnsCyOhBp7cV82yp/utKjKNpCWs9SbjE9f8L3H3jr8kIA5UrYdpcXmRfEoFGfJYui9PKUr2PGMUvnZQzy51FUJH6BODIdH5oojbr0sfJV4gjHuvAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fa462w1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fa462w1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAEA1C19425
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786156833;
	bh=V84npCafILelGLOgUUcBFJolQ74aAIhB7Rn5aijV3fc=;
	h=To:Subject:From:Date:From;
	b=Fa462w1OLnn7aOEZyO/yHWfrBToD/DannY1qnHeQ4R+aS2GmjeQL0EeGDBbW2POMz
	 fJ3S3XoEod/LzA9OV6ONO/GfrXJiDUmkvyM+juJg94pIRjfL2XWZxNSzX1CwHPJZUE
	 jnPs108iHGzzKL6+a6ZkSq1ewQO/EwQcLA0LnWNKj5GrK7D+oB6SLAIFEVj77Ho05f
	 LIYLTYqNkweB6avAALmRPsfNqFbYFrw0wBx3KfvIvvMtkRXYUxAR31ay/Ux8lfFbmR
	 acvyD3wue3EnDBhprqn8HNZ8y4TIIjFNuGS5F8Cnx1JZO/mpUvr94MI7rcWQS8Ca7w
	 cLD66HLxaNQZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF912C5AC82
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178615683370.11212.14026671199815847655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0abd3522d81e83976b809edaed3340810dd573e638763953fc9a873f32d6c35d
Date: Sat, 08 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786156833
