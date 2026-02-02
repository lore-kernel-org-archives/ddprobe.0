Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7F63570A3
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770028434; cv=none; b=X19alVPIG97l8l0fPNWAEYe9dwVCI6fUpMwfjYF2Iav0hb92UYk9WOvkf+f3b2X1OTPomW6fwvT4gGKFT8+jtCXq+CI3WZKFLuU+ETSfPjPjiNAaSAqRFsVZFWk3nNe58Ml6s2LpXC7df31URycxwc420J4coEf7HdV/qPfXuu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770028434; c=relaxed/simple;
	bh=sYavopG3ePNyxdj2tx6Skbl/VJr95SehmA/fza8Ihgw=;
	h=To:Subject:From:Message-Id:Date; b=Dz+MJb2jaHRMhUhvi2smLklUfNk0b5e9T9qTyaP90XjpNYu7RVivCR+0QDQ4ie5y/8U7LveBIPJLO3nTpEhLyuy4yVURqhWivrAQ6e0+dR9UsKNxXwYroQLAu1anaHRAf5gD3r1o06FhWqRQm3sRi6I8zFBVIEk+P6WTDjvuOF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKhrBKHg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKhrBKHg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F57C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770028433;
	bh=sYavopG3ePNyxdj2tx6Skbl/VJr95SehmA/fza8Ihgw=;
	h=To:Subject:From:Date:From;
	b=NKhrBKHgOMrNM1IjrhYGNrJDWUIheVnRtNUl2ijwEzDNUh4CFtD1u0D6JuN76/7Wf
	 7YwFMdYyoDuwt7o7NBhrLmzBJ6jFbZEmMEg7lLqZc/AOypDfxVQXXDuc6pN31489Ui
	 /98RmCAstB9/9CCLTQKfm1H3HmCj3YsmGDgESJoWQxNkUYFRZfpL7lyShGFfNG+hHD
	 Gt/Ox7D/ZejOGO62Q2pr59AwrgwZiAjkJByUZWabrrnjGlqQp3SBpxCu9XYC+wIaxt
	 QuA0K12S6CS/Q80mcpMFzEPoF9BEP+nWoMZXNG7ZOqkG6ajx3CbLF3NHrHW4TUvvR8
	 ydB2fEECvitog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95840E73153
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177002843360.20640.5968277458215794277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b14ef6279ad65e9a2131bbed032f432b338bfc188ee6403875fb6d9e41ac17d2
Date: Mon, 02 Feb 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770028433
