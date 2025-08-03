Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BF52AD31
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754261995; cv=none; b=sRKoAVJ3q1axxPH1tnOQnO3q7dtSDnENzmUu5Br6oroK+GQJYEP8AOGIuJZpjobjo31dBBJ6AlLTgAIltVEm76l48U4RlRoJoM2UdQyPXJHEznXXleiaYqc3yUoxaCmPUq3SnZQoRI1fE8KiB7IVRevYOlz3kpm3bA6ck2rNhxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754261995; c=relaxed/simple;
	bh=toWvNvNObfO3NHSC1843k0nBaqvy0DRWy+kjsn391pU=;
	h=To:Subject:From:Message-Id:Date; b=Wv997er7x05xH8KSx+ao3P43pmNDhEZPFS4vKrdKvFiz4kgsZ7X9VlckSFDtsYASUbI/PzpSLDsrEM4VjkfcAN9T5jPXiJFPqIK9TQsbLRJntKdhqIyO6axdSsTLyV582aeU+rx1AijdK3BYDCtqqaRavFuqB7icHv/vSpd+piI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+x4nNvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+x4nNvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38BCC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754261993;
	bh=toWvNvNObfO3NHSC1843k0nBaqvy0DRWy+kjsn391pU=;
	h=To:Subject:From:Date:From;
	b=J+x4nNvXFYrfxLGt/egNcajf9VQ10RZcB4fvXD8FQZXRdY04Kj9qS8q2p8LFdLb7o
	 KFkvTnWBi8Wo/s43oxPJath69C1f2chx3pajg2qvXmpcnioPUP3kaOlFOoTYOCLFPR
	 dx7RPSa3XagZptdjWRw3y1981pImRIC/mKNoMlxrC6buh1Dt7YYwg5SKU0t6CaM8xm
	 9MFjpInduYu/aEbtUkyN4YnmqTQyFCMhC/gMvhxJhxImcwRbt5KBAJpuZnBG0NRvKB
	 cfUrlPm2PyKYhWoxgKs+IhDHvVOUveuGN1NlBCq+pZMs796islIxVew1YnGha9afDQ
	 nJToy99DlEzhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F51AC87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175426199357.17947.10079552477898898327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eb79522353952b6ce6d9f6ebfe11f5e0c4f180d795794f96c0fe5287a49a768
Date: Sun, 03 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754261993
