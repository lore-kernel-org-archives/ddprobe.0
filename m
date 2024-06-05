Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4175A13AD26
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 07:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717572983; cv=none; b=RZWt3/5wpPEuMnW1/V0JmfvfVCiKHHpVv8nig7l9ZtbNKH/7V037U19pLQXJ0L1Jba5de4Hb+Z10rL6veeiE2Q3VeIe92kMnJ9ENKdlgkgSxUy6cK3jssca2aA83q0VSc8xVAbMCJ04LijzE2NZfqPjmxs7f8r4VR6YUnoxmZIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717572983; c=relaxed/simple;
	bh=6LTvnlRIeNxxTkbFmOJe15/7ynmgLkZ3YsDURmHbmuw=;
	h=To:Subject:From:Message-Id:Date; b=S0c4X6Wk8CbmtYCCHR5LVT8Xt3XIfqCsI4UAw8pJkOB5qlnINkfLDS8oTk7gqGoe8WfqDOvgoyDPdMHbAAibZMb2uES1/S2gUEJYMl6T6K3c2XyJgUDh+pAdlZcKISTvgH0EHK3HSXEM5AhkpIN/3e+sUg7PnrqAZJrm5G4Hpno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgmkFOxu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgmkFOxu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8CCC3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 07:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717572982;
	bh=6LTvnlRIeNxxTkbFmOJe15/7ynmgLkZ3YsDURmHbmuw=;
	h=To:Subject:From:Date:From;
	b=hgmkFOxu31mz43fYEJP+bkB3tv0CkAAyqj9EPRYhf7avP0yhP+lw2sUc43hF3Vint
	 9PQjMgW1hGlmdm80ke+Fo89vAS9hQECNDfXWeBTjHw3cBhnZcgxsFuU3ss+OlzGm3S
	 YFjNkaGvshBN7rFZb4z/OZ+5HmhNmJSA2h3wUgUhPJ6lCZwQJldq+0bPPKL+ZBa9IJ
	 kwmwVPWQ/rR1g9c70dnHcBx/JocgXDoLWaP/h9A3m8O40QUloldVEyYCYa/hMMc7ab
	 1ABTPxXOKuHBiikcm5DYfB8z/WX7bMY/NZ6HHqZpRbkIriovr0CsSBYDKzEWnEYfPf
	 F6DHz3gnJGz/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD80BC27C52
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 07:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171757298276.15766.6942965910778873979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8ebe497b1aa320f707f15ede82652a340d18e0a870938ea89bf6a1b6e61a4ad
Date: Wed, 05 Jun 2024 07:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717572982
