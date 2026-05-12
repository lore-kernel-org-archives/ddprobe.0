Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3E8360EC2
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 11:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778586634; cv=none; b=eVNkS+pkBTgse+EA3A+4u+Us/MDDYY6nnRhj10NfuJsH1tG/LriA643YiYNl9fNRySIUG3Pn8onWk6JFBYtRsJ8VPCOaQDjbhM0XBQ9WOowXalwdAbn2XkE9+4kcp1KpNypJY3oh9mdF2UXbkOdWMzFokTVoplcDxtTj9U26/4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778586634; c=relaxed/simple;
	bh=gi3N1H+kebJRTb6AOnGuFQr3bSUBCEvZeTOmmijiKcI=;
	h=To:Subject:From:Message-Id:Date; b=WYIdTGNQZlpZhJXRGc8EKkWA3zBgqFy4zEaJSoZZ6opyLaSQ/qPN8WOcAQZNY83032bYvbgWaLOyhko4CaQhqx7n+/o8k/oydYL36BAvX8qEeKc2kRJElGO0oK9ZEWgmopMzVeVfMhCsj1Ts2987N9ZXhM+Xh3TwXd1qyrIddms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iK4OpJMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iK4OpJMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4D8C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778586633;
	bh=gi3N1H+kebJRTb6AOnGuFQr3bSUBCEvZeTOmmijiKcI=;
	h=To:Subject:From:Date:From;
	b=iK4OpJMGk64C2UQzmlMr8I/lawmAd1l7N3ex6KTWfptTKO8FKgjRFNpS1dYh0qi61
	 gMfcstPra3Ji5eTm2ddni2O1GLeKuiCahG8uMybHqc8Y6MPsRdMMA+LVxwAA7DDVs6
	 J90H2KzuG5yW3H1k/JjLzjL0+Em5rGv4YB56glVtYpxFwNcSY/hAvnGEPqwq0d4VQk
	 dIs4Gaw+Uq4B6cTqVb3FzP0aCNdpqedyBvRC7RudVDABIqZJrZzXU2xbXEFUaNUBTA
	 D50Xo/JEDhdqCyr7bnAh+nbaF4vGMPY47qu+4ovmNNH7d/miwWiCuvtgWzlEA6Rcwr
	 ZryoUYBfZQ4Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1E0CD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177858663368.12948.7458166269452436289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e17e950c24fc378c016eac7d9be1f4a65a09192d62593d66373af0c7e048290
Date: Tue, 12 May 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778586633
