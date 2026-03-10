Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158F039185E
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773152094; cv=none; b=UwhUFO6fOkLltDPCttDs2C9A44BMPtL60xORIkkQmCRzc7RZyy3/o7VooMV88GE1ehrusDP8Vpr90Hlv+EudG4aMJhM0gACuXTSqPhtRktv78RLxHWs3lOHkgb73hLDTLsV+dYLbYrv1Q0lprqkK5XSl2mVwpNSqv93c+VoqOYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773152094; c=relaxed/simple;
	bh=EwCF5oqb1k8dZka5k6K8rMTW5ghYtpflP1W3PUqrAfQ=;
	h=To:Subject:From:Message-Id:Date; b=eWtVi4oltrjBaoyzoeMuUvHN0/miWHk71Y+7QRJndTmI/iOuGfAB3nzyHQ/SR3m0iNuKojiqzvXjwYZ5KXVXGkr30fjzyeUJ/Qk13rWKLL7UjR1veTOrF8i6qKnvlD/Qm14irB89c26wLxxpzfvqAMf3LfDPZvxxFk90TuuSnlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbL34w8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbL34w8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B4AC2BC86
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773152093;
	bh=EwCF5oqb1k8dZka5k6K8rMTW5ghYtpflP1W3PUqrAfQ=;
	h=To:Subject:From:Date:From;
	b=YbL34w8Z1qTUtNDtOuq3cos7mlfZeVAgJk2U/hWqFvxAhG+WZIUQ+VYRwtYt9wJvk
	 R18eI/H2GDUdq98ySY998LfhLHLHykIH4qokbRxjxaYrYcE8jcbUzcwXAIKi6pOYUt
	 Dw0dBnP3NxNy1r03TesXHKVrr3wLYx3yYmy8wKApHFUN4EfrUpVVtZaaA8PlL4lLJA
	 00dHTkF9vbFxV/wt2WqVuEe47nMR+tV3n1f3OoFe6NvhTV0e1IaWBirm+BuExEb0v6
	 A0giyzaAzT8zsAV+rnnm79HFE09Si1U9dkgxyp3JT2b8faVxa8R+ujLO7aZRRmmFIW
	 DTmLfRywf04rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B90EB1054
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177315209359.10440.5536693971881072649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f925b11d60ab4984f6b1cc75d80d754a74d1ef1168472d10c0a8886b794c35
Date: Tue, 10 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773152093
