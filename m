Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556754334BC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791240634; cv=none; b=ZnCgZowpm9/nV/8caH6Dp4GVIqa+ABlQG6SFSrhZQsKSF3eg1+pgDXr5gn91aeIrFcMrKdxhHbEwbpUiUjqyNn29MEavNQqTjGVeMGI/CxVeKgMrHG0hjx7cEK1EPk80XkC6/OjmITY5Xsg/9hq52uFcOCxiEZfaiw0/BxogjW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791240634; c=relaxed/simple;
	bh=48v/rmTse7NOnjspSUjS/Jq1RtZg8vlWYKNaoY9BkH4=;
	h=To:Subject:From:Message-Id:Date; b=jsOEqldkFUik78cIwL62W0kYAHpY+o0fliMbZE3fVG7c2vJkQLY1CbBMFqiasRd9OcuJAE6G15Nj1CbXeBc1eJCb0QVYc1NFAqwDJktyokgR2wLpRoW1q+o404+qZtWQluPJogtqnju/r5prmGM5d8ZjEO41Xyzr/AXahYPTv3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Am9Qpmlk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Am9Qpmlk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D95AFC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791240633;
	bh=48v/rmTse7NOnjspSUjS/Jq1RtZg8vlWYKNaoY9BkH4=;
	h=To:Subject:From:Date:From;
	b=Am9Qpmlkui6Y/KjKggf43+T9YsqnZtF1ECRgrLfXFD6YOKD3rPNTo+m0l+OMs+M9B
	 4henVF2mqAiT4k5CKaRCbGVg3GbrrXdW+zTsllZQRvERR05h8/Qa3iMHcvnz9f26ci
	 pB6XH1jAglSatpNj77LHZ/RTwQtH+1K8nmD+S9MWf3kbUspycMNUhJVg2y7FKdLWI1
	 egOSla/hPby05/fNJ9X6x15YyMd10x+p9UCe4rJXr9N8MRjL2A0fwSXToayYlO2cjW
	 cYCwVlahVrV1G5AqYO6IeF/L9P7/nG0aWwf8vZxCfUVVfVciqrgF1Qz0HZwf7PmRHG
	 yznbLRR2wU2GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B427DCA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179124063372.26467.10953485985232556047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99949933a46a66fff3e062ab3bd0dbaac3e9d68db54ea268606dc8659b281ab4
Date: Mon, 05 Oct 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791240633
