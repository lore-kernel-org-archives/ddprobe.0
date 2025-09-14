Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFC64207A
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757886594; cv=none; b=cp3pYMGM8EuJ3npB7TafGvBy4qzvSTxBfsa1JQBFndl+qQMVvBmGpqdYg4rrdaB7effvwfxCvKjg+Bc+W4Ann9BuUKQJ1yU5UkjL91Q5wjmkK9wGzzZotsw1crUxrFJkOUZyvRe2GBZcRxAYxjiMX4pvYX/4DDbxBDQ9SD/99Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757886594; c=relaxed/simple;
	bh=lSUqvzdiNSDuA5ZWpR5qZRDPhLd8oZ9jVQZOhdDuuzU=;
	h=To:Subject:From:Message-Id:Date; b=iWSgkbObDx//Qokshm1uA9tG8ieq90zgBQDrB0nwJAfPfZUU8UGvDdg59eQehmiOu6r35TjA0jbV/L0dR5rlc6e39XNAwMcEc23eB4bSpK1dTxY0Cw1OTMhvUYhX4PrL2yPd0N5dFA4Hg2lvxC6NGQ5SMQZ7GqAiQ0EaIBx5mK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbR4AWPi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbR4AWPi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD013C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757886593;
	bh=lSUqvzdiNSDuA5ZWpR5qZRDPhLd8oZ9jVQZOhdDuuzU=;
	h=To:Subject:From:Date:From;
	b=cbR4AWPiXJnM97fzff0xVA8Uo8HiXMs6IjQNE3AtK6nGjv7MmU2IpkbhvKQLcyje6
	 KgoebJPRN8CRsRqkSD2i6vLI9z/o9HihgWxRSJJ7svXoBchfLr+C6wDt1SMjfsDXzK
	 qA9I74/wa0PPNQ10mzQDvREbDECzQrfx9RuOD77/4Yd/88dJjcP6rI5VuhCrqBbBb9
	 7xVJOoChI5UITzry3BwYqRdOfGeqcSwYNwrGVvCadpPhLT8NFFIOw5kWHtuWVIaJQ5
	 FqIG1IDK2YktXw0IGnex5e5OBRXAbPstw/JDw57Vgt6I0+FOPbE52CGGN9LZVy/tfu
	 Z13lEOpRahmZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F4DCAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175788659357.7934.8250037508402902273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18a0552d338c3e359195571caa87371d412da633d648c56231a72088533f65f7
Date: Sun, 14 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757886593
