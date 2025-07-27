Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD061C8611
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753647593; cv=none; b=dwFAca86MpOaVQNptxDVAhY/AyK1X0emOZpIZtHWeI0/ZfWeLslD0nDeM66NhBlgWFgutvG90IzhyBbMqLe98Ije3ay0Pz1RTtgXmdoCXqnMxbuHV4miLZjnFBNItrpjPDGsoSu6Xm4hmxb19ZSaw9P+d/tLO3ev0R1xiTvmpeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753647593; c=relaxed/simple;
	bh=oYEOwZa2pwkXwuCzWPAG/sQFOUmGUBYaW6vDhb2j9fQ=;
	h=To:Subject:From:Message-Id:Date; b=l/4rEmxCZqbn1kNL4nOQyR9JOYB0Wjw6Fo3JbBwBp3UosZTFEnGQVJ7aaNXzzPxfxykhecplTKtqVs/ti7Nhe8qd/wXi7HcSxydRV1gUXEWiF2lDYPbKlp8xrnmEzqaD1rkYZyiOm2mbe+E8KZW46OQW3AB5lGEQ5tFD8/p5DD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGYRkzZp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGYRkzZp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E02BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753647593;
	bh=oYEOwZa2pwkXwuCzWPAG/sQFOUmGUBYaW6vDhb2j9fQ=;
	h=To:Subject:From:Date:From;
	b=AGYRkzZpFwwShZ5dqcEm1cPt/gXBJc8hVNi6+1Xkq6cGcxD/yvV2WcEdDOjzxcFeB
	 Np3lLWf3yfXW6Bmuh3CHMTJAoHLKAUJhmBaf2soHc3+L9PY6D+38eUOGKf+sc9CsCc
	 M37W8uMTASBhCWKf6ek/Hv8wp/3Xw8QjT52pmUhkbVubW/VFP21sBzLS9ebceKpr/H
	 GthkSCbRK1gv9eeh3mZGo3+DpEyKV8Fmpt76Ca6MK3erZd7Wqm/iLqn+zNPjT7zbP2
	 vXBpJQ9VBfEvbT3FexhY8CLpIr5pCj7Ri/9/mrvgDCZ62NbjqjBhDCeb2LovNCvENx
	 eVE+W7D9Wx1DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F109C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175364759357.25248.2244674026255336387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bec087e7fd8143aff0652a10b808753f4cb52526b64433ce7f4df35d11ba249
Date: Sun, 27 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753647593
