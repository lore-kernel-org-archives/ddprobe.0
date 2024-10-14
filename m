Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F67913D53F
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728885354; cv=none; b=elrrZj+GYyTLQL8UyLk0bpmFkLl0XJrZ0M+3ECCine5BkD9CpWfDpOKhCTKnAdFrUZipHcxc0LUI8TSGaycj7IdEJN8+djvGo+PfYnMMvqKe+6cCI2e8g43ZQkfkpaulWRoyc9RlEF9a1mwgTtdWHy8Ms8N6/qXn9kIQ45352m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728885354; c=relaxed/simple;
	bh=x5RuGOIN9QVKww04/QnQeD3xszp/OAGctPl5lok8B9c=;
	h=To:Subject:From:Message-Id:Date; b=PG6dZ6C10cDgNvBPWMKWNTU0WiFQ6yFXoSdhRE4+0fP1b4ss6iqprpGnIAiRf1A5c3s2rIfU+RI3qiUoOiE0CxoBCqzDo3EW1Lnv0zwnCb0xjPNep5+WfYZMuLUMceiHQ3fbDpzxqtJdmPpxHooai5zKXF2YJjTj0Fy5ssWosYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmCaCWL+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmCaCWL+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD81CC4CECF
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728885353;
	bh=x5RuGOIN9QVKww04/QnQeD3xszp/OAGctPl5lok8B9c=;
	h=To:Subject:From:Date:From;
	b=QmCaCWL+x19rheCBP2s7z2Y1aELua0uGd88thXG3HRrhoO5D8D9+Z1WK7rcV5Xq6b
	 IiC0opsAv/IiEUwtSjaIOH3jo5LlTE0TIuNMAvVeXeRdqZ1f5DV4mD6Nj2Mu854LUK
	 ujEORSV7HQVRBvCeOVWjGsveIVjm7ZOTbLcIl837TejTIEkjMM37C3R8XhV6k6QlNY
	 g29bnQRWbRcOIfzK4e98XrAuaQ239xxa0uLpgUU4HlKi3d9pz0NJ/e+rjCcJYpF5dY
	 dDg/ExTWztPvnDcbGUmehwGTQ4iRklmv0/RJ/qH6zIyodlEa3/T26bzeRoHlR8eFA7
	 aug9RSvm2fLlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D67DCF259D
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172888535363.8867.11718592753155227752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8483e5c46384b24c29d206e0e1cd9948f7d92fdc2c35d880f9a911a9d17b78e3
Date: Mon, 14 Oct 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728885353
