Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5741F4FDA
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728621354; cv=none; b=GiEQiWY9S6nJv8KIPCJvVue/WvY7NmCUzACavr9cRndb5hmA5itQEvypJXow5Jddg2VqBhE4UTnrSYbH88kvJ4SzdKuvpfgyLMBYeKyXoC0uI7ZSOPCQv6ZYR1kjlKNngJjlln38YpdaK2CnRw2Hgf8b3Dnx2bJO2L0L891kbws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728621354; c=relaxed/simple;
	bh=Znk11tLVOXhJEte3ts0ak8ATyMkHnibHW8fOUsvDUZE=;
	h=To:Subject:From:Message-Id:Date; b=Y56+y2Vuesuu04xdPB6W663X+wEC0R+YlPqDG4Bw0lw/5CTGBYjjHekJ1o3BZq0zS+ZqlrfSMo4AeG4XV91OQ2mdoqEusagD6q+YFSsfTS4lSeQwVhS8M8j11KBFb57QqFf9vAam/4GNszjWghLbYWsF2oPFvrUiKUVa7djrQts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSqdjMsR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSqdjMsR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD4A8C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728621353;
	bh=Znk11tLVOXhJEte3ts0ak8ATyMkHnibHW8fOUsvDUZE=;
	h=To:Subject:From:Date:From;
	b=WSqdjMsR36mpPlFAiEgqU/nWynXQqon5oXGaLTFxpDwL4x04a/HkkqcMtlZSqXZG1
	 f6vDM7qUMtRH0mTVDlEpimgPsUtAAWIJYp5q0UuINTSV0k376Ep6tpZLlc0gCUiK1c
	 nNiKzVR8jSXBNSEXpi7v2v35+RO59qhhCemc7QG+Y21qd6qlTog1s9uiz8S36J9/9/
	 fPe8J9ZtiO+/RWS1PfLIT1q3THuy4SOIAMHTVllODYqS2G1vsGWi1+tXWnSPKOH0QA
	 BSrizKRZ61ohxyEKvVSlUV7ttnpKbRlmnnA62UL8iviWulJxz1LUXjwUcTeDhPYhIL
	 SsXplww0iqhfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC102D24458
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172862135364.17231.5655821130952972353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94929a9e27c7081fa5c14c18050a398d623d905a1f0672d63ab6e48fbb591e16
Date: Fri, 11 Oct 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728621353
