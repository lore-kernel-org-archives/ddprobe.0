Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E48910E4
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712018897; cv=none; b=V/F8S2CDx4orBLBLxPsx2ucOBJItE56Z/U07jmZ6rpZHDpVoUlRHYstOvD8/RkDiXky9dxrnX/8+r36Z09ENZ0yyo91JM/XVQlCTiKUlbSpKEomOpv5qCHatNg5d3xEGykI4BzC6JxquK4keQeKxsWqpYaCkTl4uddvNg9Dyqao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712018897; c=relaxed/simple;
	bh=1wVtKITyusUNLyj3OZgiaXXibxDfH66gYQ+GyecyRvk=;
	h=To:Subject:From:Message-Id:Date; b=NH3lds3EMXQlMqf/DDahfESuWPQO4VecW3GAgVysgLKUd+tKcOBtQJvaC3Leud4CCHuReNcgLpWSR3ECf48W5GM53QTFPPXvjVQhKAVtZJGx4k6SOVrp8lqD9fKUZjx0drEJjnYTljv47MAQ03cKsYZTsTLhzMfaX7tsWaBPXis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIZuLv0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIZuLv0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80FCBC433F1
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712018896;
	bh=1wVtKITyusUNLyj3OZgiaXXibxDfH66gYQ+GyecyRvk=;
	h=To:Subject:From:Date:From;
	b=GIZuLv0u1pQ6oRAu5ey+V3gM7o+fHzbqZX6teEHV+GKy08aqzJdgT/gUxAl1OCIGs
	 6GGgRlTnYeYylbOOT1oVCAh+SNwrA8QvWQmHiiI9oQ0krHLNLMjsXDi2+2fI1ypPca
	 zVXp/WloY9QzcMHevJARCiMlAI7qGEeLaB8g3PX6PDawdx50LyVrp0aZhQOLgJ93HA
	 doipgz8Ys5TA01uPGCs9n+YT/K1DQdov5UXimf9xkSzaEQoLmEDbSrtjBRM2t5a2aj
	 Pf6+Sh4BqoH259tZnJdbpQM7dZNXlIh+utobu4y397Ss4tBjAquqe55fs4Ssyt63V6
	 pXKcJMA25NMfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B7F0CD1288
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171201889642.17999.1412543025069648309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cbecb24299848f10c93f25f48042f630b5a0202a9822d66eaed2e187a731837
Date: Tue, 02 Apr 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712018896
