Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C1827442
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752987594; cv=none; b=WX5OWnEuV198vYHDVAejVmsT6165B/uL7GbAfZTG04eS+bYgIlF4RMyZCTs/2C/nVNjd8JEYcooyrDmXkaQ1ZAwvXPtbqKgrS05c9OtWSrF1qyz0d9fPze0T5KBuM2UDpIuiQqXOIbg/o7CA9ZasXc+gOu9ZAoolnkMz1ZgVESE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752987594; c=relaxed/simple;
	bh=uJDVekQl0uPVhVmdfGyA/l+e4bg0vWcBb+3gZjV25zE=;
	h=To:Subject:From:Message-Id:Date; b=gAsGA+AdsLOzCrZVTgNu9mE9DEFLOBakCDDFXY1D7j8NtVGbvFJiAbx+DiZNkJIwNZDwW8NRm4TYUlfwCg2F668ZlufjOqVgg2Xi/naHm5SRbJHbASLrV5hISHxXl3zbbU/40VW6VxfFcmKA1LIp/vQBYY2izp2MhhHkdjgsB6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pU4djx3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pU4djx3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8344C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752987593;
	bh=uJDVekQl0uPVhVmdfGyA/l+e4bg0vWcBb+3gZjV25zE=;
	h=To:Subject:From:Date:From;
	b=pU4djx3tWnLRGHI9TSaxXvMI523T2a4G7/r2WcQanbvq6uIzsd+C2kt6gUCP0SXpe
	 QsSCny1Nq6NLNSnCvVRJzBJG893tnHS149hVh1zRk1OjFVYbPVq3Pgll7v34nBYhoS
	 T36YFhLI7do0H25QIlxEaftMe3Cj0ru1oskudHkNYKVP5Oq1ADNYajcNsb4GYyvdUd
	 /FpraJvaju6hQaMYb2C21FIgqbpwdJJFADTovqPN/pb71BWnrWOtmwuTiA9aXJ81r2
	 A7GJeClr4i51KWDXjwwmieeYCMl1xaOoHsXGcRiFwvQ4oJRPGAL7IpGGzBmq4FGRQ3
	 GXNVJIrHKzsXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9607DC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175298759358.20924.781141589707340507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd12114a94b6ef95487bd84b77c50937131c3d801e100747ad3fbb36a7c0e055
Date: Sun, 20 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752987593
