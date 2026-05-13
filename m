Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D694D2C0294
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 13:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778679033; cv=none; b=FqbizVxh58EjCN1q7OghD4iV02q9qkrDZy2f57a+v9RWgMvuzQ9ms/aGqpk7dwiMkQ9urBGk0Iw83VGl3ieWf9Mw3QInDzt6hTJHdiwJJIqEnyHuGi2thDjN77uuDsfDQ/mPxtDKytFGTv/WcJKA8yv5+dAQVKSEfnIHNhdsFDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778679033; c=relaxed/simple;
	bh=fu4Ag4Q/DW2RfkGRK6kbjNcB/qG7Gyj9k9AF0f+sRic=;
	h=To:Subject:From:Message-Id:Date; b=obv5qJVv9kf77GLQI9+jiMU/TruDtB0PBaAP8XtjKRMYy/5t/EXhSY/XKuC+EhvnDA4I/uqSNvODz/Gz6o1JyXiAMhJNRZggHvl2EUujaGlK7HvUn6Jd7CYqgq+hTpfcdP4vHOCNk92ImZ1kt03WG/2wJhsAbYIJAro9huFYRkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfIw7vCk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfIw7vCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F16C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778679033;
	bh=fu4Ag4Q/DW2RfkGRK6kbjNcB/qG7Gyj9k9AF0f+sRic=;
	h=To:Subject:From:Date:From;
	b=qfIw7vCkySAYYJ4BV/+ZboAtZE+Us1ZHbrh1T6juy0kEXwN6nnM01TcbznBy/pGQ4
	 o80ibg7GfR3aKYINwDNSMYm1LqPywuVXP9IxzR2q/YDn9h4hu37gxPr9hULlMDh2rB
	 bHZDqZ6aSRbDcbPfhwOzZjOsSrdM0qbpqI85tjMlKkCF2QpCNkvx+VrJ+uft2Nt+Uo
	 VAFiiJy1sWuDKBJ2HDl/F+yA0GF8bZBR5MThH2BOL6idQL+hxHOgjbFyQhAZWm478C
	 Y5yrkTO67LlmXtLtKSjGxxpYgh2LdCmt/MtvUE4BJlixcbOGSesSvo8vWLow5ttxrw
	 PbCITDhAbfQ9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA53DCD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177867903368.14018.16013685937017825806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac0d75b87f43b0dc481ab7d5a251012b93a5394c7cdf1c6b81c24db2d336efba
Date: Wed, 13 May 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778679033
