Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E563DE425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782458254; cv=none; b=FOthmDhxVgU014lnZyU68gPVSJ9pmHmB3UQijeJGMi65z9cPGZVbSVL4D4P9QHIQZzN/YBLIkhZEzJiKcvjoLnk6LxF42gW8ffVpWq7XkuhkT/CklfVukDKN7I+6JEV/6Ot+UlFmnFz5mPtAMQ87TVB1EIz122dsdU/w4dgfTHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782458254; c=relaxed/simple;
	bh=9nXI+YPVTtr6CKMcOw3BcB0+G4+WSJlwExm3J9lzIKs=;
	h=To:Subject:From:Message-Id:Date; b=ZXvHLsCA7ueCZwUG9NtT2wx/nLmasnp/v0xb8nUTe8URIcWuS3KWMPI5wPmBRcn+gL34MpzI5P78peprMk7h333yTn6cnE9sM99B6L4gnDrTXc+kCHgxRYXJsY+CVlPc17ZfpuFkpQAMp4mJvpD7Z4iqQtT/4L+lVCjO32iLeLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SjAWRlHa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SjAWRlHa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35E1C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782458253;
	bh=9nXI+YPVTtr6CKMcOw3BcB0+G4+WSJlwExm3J9lzIKs=;
	h=To:Subject:From:Date:From;
	b=SjAWRlHapf0JiWHFbJH+HmNtVnHdKDiCp+iuPxQCCQIv2gEgkGDkQgnZva8zOUxpV
	 p9dqx4P4RVpaD6dwvkXkC/4o9epvyPs/t6iMn5UFaKIkteIxnTTLn1m0NIBVJ8XUNk
	 rb1WHnnc2ncsu+0aZBXad0tdsPzIc4OKYAmZqVvigGeg40EqlVWbHpi8VTbZN6hAZH
	 A46dG9ciXHSfv9PZxGB/CMfA8YIdmPnfOyD3HF9Q8KapsAIQSk41pNW434aP2vEGx5
	 y9pkMdnliDQ27gEdZcHCMJT/F+n2Qcw+5yUDD2IcSEBNr9ZA9/S9D2yViZoRFkaGQj
	 x+AlNoPA3lA3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6DFCDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178245825368.31750.8290425423744779624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56f84726876b9e2baa1f743de1434b2a49bf2179057ba1d273de3687ddd043b9
Date: Fri, 26 Jun 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782458253
