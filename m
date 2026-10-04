Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BC33EC684
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791096634; cv=none; b=RWlDxM6N5OpE0ZvGGTEaW+mqhRD95jpjlxnhg1E5im7Tr6a4drnY8LHyJUFpSgTyxEPSwy9nz5UY2C4l9q5M+93aZIRMzdfmOSTnQEYRMkzP/MFWWBb1Qq/JyEtktXMh6hQYouQBwZTu7Pbcgkw5aDvy6u5iFwlJUFff8+nGP7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791096634; c=relaxed/simple;
	bh=UfjtnA0MPVG8ZGiqxJ1HSXhNkbOUP/HEC7eLL63H1Jk=;
	h=To:Subject:From:Message-Id:Date; b=Xboo3kcVj/Qx16a2exXQRql+BUEGPqHslXGZwcnH/2Y+TURmDVArp7JaQr+THUWzuqWrfHbhigHePESf9eOy/t6NFx7LOSWUwuRgTvn8QHIqbzzbzEQe6Me7Xc0UUvD4tzMKpllYHLt3Yjlkup5ONRhTF5JHNTZjLWg6oQlYWJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqG9rl0E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqG9rl0E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0D1C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791096633;
	bh=UfjtnA0MPVG8ZGiqxJ1HSXhNkbOUP/HEC7eLL63H1Jk=;
	h=To:Subject:From:Date:From;
	b=tqG9rl0Eqops6oZ5PWwczM0/saKg4cJtAIPVT12BXEY/+5C5aQoQMLyaZUVg+L0cw
	 lFO/QBEuw9/+WtEDMxBsKTYpx27hijFDrarWy2lYoNhIJU0xQseCisyVQyBBX8zYhc
	 yyU+PWVKywiGlLYJmMHDR1gLc2RosgsYvNgfpdGGn7XsL3z8vm++iVdv56a6AhBEui
	 x57ySQlYtbWH9LlF1aaFWW4mLkHEBqL8s4gt8zAk158zjKRm07jUJ4GbAHaZNjNas6
	 WvOEOXVvx8LZntqHCuQ5JPj4q5JXl7hh6JAkoJKQEHSSNeMFU1+c3MGvDbRL0M4Pew
	 +Y6Zd3BAsJWuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E00CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179109663371.5867.2790901316881842285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18ee60173bd068c54bb5e8cf7f48a7ab1fbc5566797c688ff640d24d5f1cd0fb
Date: Sun, 04 Oct 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791096633
