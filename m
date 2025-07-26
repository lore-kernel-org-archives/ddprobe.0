Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159992AD0C
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753528194; cv=none; b=E6q9I01B+o2I0D3YmTl7oHz9jfOKyLW5C663Q5guKg++lym08Y1yf4fm2SyzB+YZatGXHQqA4GfhJcLzXfhbhSeuPwR8MoRKc3pnk6JSnIjj4BS+d1HvSVQPl3v+4NV5RmbLNh0NrSwRWXP/v05fyfVJ7uH3amuLhDkeR7wk0gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753528194; c=relaxed/simple;
	bh=NsvaCWwAqI6mTuFSEWefgVsYuO2VyVrTm+KPXvk2lm4=;
	h=To:Subject:From:Message-Id:Date; b=KJl/wfjJnrAecBsAoKB07GCYgROd8CEhnxHC5EPmmtUYBLaBOUzD26Oj8xLL5wxHo3BhIR+UYjnddDkpB5bvdshkP8mJmEMCFmgZf1DfVO0egqDKvC3NcBdRRQ8/VY5pROaAZlLTwSjN6RmfuWadeethKhrFrgercnrPWQ14TsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RW5Z1TSO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RW5Z1TSO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0123C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753528193;
	bh=NsvaCWwAqI6mTuFSEWefgVsYuO2VyVrTm+KPXvk2lm4=;
	h=To:Subject:From:Date:From;
	b=RW5Z1TSOe7nPRjYjyonV+0fL/AaaQ1AL8lU/Onv1xqzuKqHDnfptiu2GF27rYDQwQ
	 dK04IjursfPFr1PTQXzlMlMXmyOUGmu66mJ2UfH/YNl2QpG2+YEg0UgjfPMGZnfPD5
	 aqO/4ztHnsgYCCrdeQ2mm7LuVWFNBd7Fjy9qQVGTbCsxOuQzl1ru1nBFY94AZSOeJF
	 w+5zdKgy3p6yTDXHZacTJbahq29mdushAZLklsKFVk9YyJC/dQA7m6sRohQK2vkzlG
	 xtco6xfzOaKZaWc+2vbwG83HRSQRqtPZdIhvHGg7Pcn+MlY/ibTvHVh0khPaXStEAn
	 kBBTZ6L6JNAgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC29C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175352819357.23511.4796826511046344602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c38cfea00fef0fca900ff49cf442c5fe8ca33f85f4627eafd6d4d394bbb372fc
Date: Sat, 26 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753528193
