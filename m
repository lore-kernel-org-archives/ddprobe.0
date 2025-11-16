Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E0B201278
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 11:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763293854; cv=none; b=SG5UF3KPlJlWfv1kzho9hYc5pA61GMRsjBw4dkHInLNA2Ls3UkXoNw49c6MkE7W4SqHiZy059eMJMSoC/h/NC96mRFkkQhjkCVEEf/NCo7OtIwvu9gV4xHAuEwqMM7WWxsL+d+8RBbOZzrUopLSfhKEpwBynqlm4zZr31c+Dh2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763293854; c=relaxed/simple;
	bh=IkINb4HBpaNyNd+j2H4dZ3TJWkg+T66WhdLS+z4nRVk=;
	h=To:Subject:From:Message-Id:Date; b=pUh0ktVDSRavb8CQo1zbunzK3UtWZcgJTg1VTmpjm68f8lDGQFye6bdjKjwdILCzcHZFGEkUXCFvMyVuU89tL4KeZ7C+s0IUE/Ew2ntFrVjSIMY42w6zJqIkyZVagzO6aY1A5GOO/bltrwnIqj4NErLwmuGsQSoJOrgIai7BinA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7CEFyn9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7CEFyn9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37E5C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763293853;
	bh=IkINb4HBpaNyNd+j2H4dZ3TJWkg+T66WhdLS+z4nRVk=;
	h=To:Subject:From:Date:From;
	b=t7CEFyn9uEvFdfX4/IQCUdLs3guz5fIkREZAR7dLirGQ6plAD4I3Ld1kCMc+mHZ7h
	 xlxzrFu1o0IgPKuqhTxxJqZDiwPDocNuPfP2/j+KBnqvXedCXylBCzYv4Pum+wf5D8
	 JYnMJgX8wsx5hjy7NioeL3nejXk8JeXHFPHPV10yTmHTErTCHtAaPGBXciONfqXMnu
	 CJZt9iuP+YRf1TZ3FTfAze88vVLsAMsClLOZBs7YGb63JOpW6iQ3CZsqp77QG7p4Y0
	 tDrV9tK4UGDq9TfaRioF4LzRAT1CZKw4Vebprir48h3qrrFukeEr9hdIZdAmRsVRcX
	 9xWPTglASKYKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FBBCD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176329385359.14315.5371566239029491057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e318d38bc60c47b8ae3330c77bddb283877a100081b94e5fef9401b2cc7947c
Date: Sun, 16 Nov 2025 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763293853
