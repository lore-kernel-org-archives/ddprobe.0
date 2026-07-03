Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214221F30A9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 18:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783104514; cv=none; b=LaJIhk2Mg8CLCc2lEXWgW2IHp6IeaPy43bUX+VBZmKFqiRqP1S62RGSj+Mw4F9n8IT30WvcpVzatoP3eEyyRQE+l6iZk30pevTy/U0IAsgv9F7WJ/vaXwl8htKjOYMNR4MhbI9g0kGiLfvQtAJfrxB/osJ7H8DD6PNajtsZekpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783104514; c=relaxed/simple;
	bh=Dyv/GKcc6qY4yNQBMEhFaHNWfGw5NJ9SLN77iOhnyxw=;
	h=To:Subject:From:Message-Id:Date; b=E719pMIJtRNxLQ0G9IHEvNhAlGzilYVdJuM82/jW0M6jInjruu2xNSm4muJZDjH9Z5TFF4zRYSZXDhM/IikuKsrX3qsgwTE5K9tKKeHcM/kXo0rjvAnQRy+eotEm9tfpZloPfBn6kKpcAoI2dJudBh25YXO2dgEJAxD5LY+8jNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvU4pOvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvU4pOvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9FFC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783104513;
	bh=Dyv/GKcc6qY4yNQBMEhFaHNWfGw5NJ9SLN77iOhnyxw=;
	h=To:Subject:From:Date:From;
	b=ZvU4pOvWA4+l+UplewzuZ3VtpP5EoQBng255TT/2lfgKPngv0Pm0o4peZE2WDmBRW
	 arvHaH9MwVB2TCP4o1cumdEstMWYNa1jme4wdiBcFD6dzYPF6rEXRtvyrvvGa05/x5
	 anuhCI1DmA2SevBRqJBobGxm6zpDSMweq7GF691Toy8fLFJEuksiDaeSJvd30IuJQ/
	 VVYil//cXo7fDO5SAyqwjM5KZONAquBSVBUcrZ0GBiORHD1OAYjwI8GIuq8laAVejy
	 IYBXRtJixhzBpDkkO3DnqJa2kOqhOkfSjlKF0b2e/YVnUcp9zo/ese75rr104B8Idh
	 DIaZtiy1+ME+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB3BC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178310451368.26165.2344883183288012028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30a191d602cd9519b4f380254863af92210934b1bdb1228a13e4e2a61f6557ea
Date: Fri, 03 Jul 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783104513
