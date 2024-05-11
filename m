Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619CD208A0
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 02:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715395943; cv=none; b=i2ntohucE+H3TAAM71O4qlbm/sNtVnDS48l7mYfxV5Z6+swY4y7XqGYN5tRzWWb5G6nX4d7ij0x4AxZ04jGkwT9GKWX0F4JX9DsDnvwAs0GW7/8zttbHkOcUujDMcQCtMQYDMQwbiIjQjmVIgkWKzaj16xQ7l00bkdeM3YjOxBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715395943; c=relaxed/simple;
	bh=bzIZasJ1fkA3R/+DlBkAM555xD/JiJ+TPQjjFK4HAHU=;
	h=To:Subject:From:Message-Id:Date; b=HGLa1Qs8In/yNsu6KelQBQAR6rbThRO30VgqK2usIf0lwXNrTdsuk6kS+RbMtxe0DH4x8HYEwNNYnLBx391hknFdM/p28d1XWfSSDuVoWPbPjGJVhfHiikm5ESzfZg8bp0Oa5H0NqSUJmId6gtZ+TE4NLppaC3C4MmX6pMN+Qzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Od50aDdB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Od50aDdB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47C5C113CC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 02:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715395942;
	bh=bzIZasJ1fkA3R/+DlBkAM555xD/JiJ+TPQjjFK4HAHU=;
	h=To:Subject:From:Date:From;
	b=Od50aDdBK3AhCqpuCSKOfzeFDlmP42s/oPtIHp9hg8chq/tXcelKVBZJ8VkXUZ/rD
	 qn4JEsgYKsSA3GEpKYVe+76nptyC1c6leI4xrjyH0K8J5ZZ9UIur1+Qso5Am1ZKoSx
	 VUyhC3yR3YHEPEh4kopqJ0P2ZOnIkOidHRRLowzob9A265FhSN4H/uJOnGjr6vOxau
	 goBKBn8Puy8RoHWQfOCSKL45buwm0H4c18AmdvF45Wb45wyz3wx4zwyH+DRzy8n+SD
	 1dXS2aCCkD+HIOdM8uT4Drs1xDJnIxkLQLsP1/tdeLSdfvYd2KID5kKXcygF+P48LX
	 dz1WixazVmyDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0663C25B77
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 02:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171539594276.7884.9797629134695909503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0442b271052b5222f2692d1405c54fc322a43028cd0f6dff9d2f35aaffb25377
Date: Sat, 11 May 2024 02:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715395942
