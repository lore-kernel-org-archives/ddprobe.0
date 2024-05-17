Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51ABA29CE3
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 23:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715987543; cv=none; b=tYD7D28Q4mMXCYEWJORnAdfWzrVb1EW9yS3kguoFrk2nimFyVHX0eZjSU+Mb6JesI7YIK6BmDCtTM+/6a8yVWU0uvPAhI65rj7hbv1E71Y6ALu6jydOAFPJNdDi/uz0xKzoUDPEkbQ9eChj5fOyFNAGxMshEH58a3zF1aLEPw24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715987543; c=relaxed/simple;
	bh=v/MTyMDEOEn+vhbLWahXn55m7MDuVZ0Wa4JQXn9n2FM=;
	h=To:Subject:From:Message-Id:Date; b=nd0/zicXv4n+2Luc6fYkHNphisT7IL3T+m/FKSJWSmHgU/JGUWmROI8G7sStKr91AW7uE8i7I0oXWJ4Rv+PFOhgmKKquwu1k0jBxzHeTWsuOmcSbYfwnEwhATQCnz14fIGtew3Bc59u3IdBrL1RT9oB3PJE4VU5wh8G55zFeHtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/Ztaeaz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/Ztaeaz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B70C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 23:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715987542;
	bh=v/MTyMDEOEn+vhbLWahXn55m7MDuVZ0Wa4JQXn9n2FM=;
	h=To:Subject:From:Date:From;
	b=C/Ztaeaz75e+XKaCNJUtrg3/pf3cFLSrt9jSF0s+LK6Hwe68lUUevUla2yO+hTk66
	 tK+7/JD7Losvo8NXYGFVLMrozl0u+CBlgMLyT1lLXatNPpQbWmDU5eWH1rGA5uUc5r
	 hjdVPuBSBIw+6So2fzaq0y/WyN5Rf4Fv781D3eRAYlTt+S6nBKUht16qBFINc8QW0h
	 a9fQjjVXsSjOO6Lw9zy7pFS+7XRbjH3q6l0/HgCzwac3dpPWffekjlir311n8AcFmj
	 ouOjKKMaJO/wfHJer8YDu3kQ09ucdP4VfGVDzbOoJTcSy2M7LfuxNXG5DsCVh/PPC3
	 HtOsWZcAvrS/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1596C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 23:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171598754278.16791.7338417190263934632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c7f5cd44d27cd1c2b7a72ddabdb1333d09153f8f850b8af9ffc846f3cef4284
Date: Fri, 17 May 2024 23:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715987542
