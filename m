Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1CA2741A0
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777811254; cv=none; b=Rq7gh5ut1VHjIQ1KXbIuFdttF0MQ5D97F4hg4ZQ8e/YHEYzFQaPh7cou2Vdf6+a4LMpy6Mij6mdV5q7Z4A9tepKbeiIlVhCuJiP6+HTQ2dWRPsD1nONPolDd9qP1Q6IAhJNZB5dAQbkJmT8n8pE5fJLxb8l79CuAy+mASVp3x9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777811254; c=relaxed/simple;
	bh=MvPjpff9/UfaXdN3CbQiv6aIPx11DkiaiSX35szhfo0=;
	h=To:Subject:From:Message-Id:Date; b=Mw8K6aMz1EuWqd+2U2d6g3gEiXoz6lQV8rTsnPbQJklCXOkrCbXcWDqYynMT6id9ZPXMuZ8uWg4qwvopBPbmJllyp/aAxoFGUzfxlglFD7r8VnBBMKsJ6r4xZDkJ9ZidYQB6a9xc3j7tUWMJqx+nzW0fcu1nrvyGTAg2e4E1K9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gv7dh/FN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gv7dh/FN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2AFC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777811253;
	bh=MvPjpff9/UfaXdN3CbQiv6aIPx11DkiaiSX35szhfo0=;
	h=To:Subject:From:Date:From;
	b=gv7dh/FNZkmlSJBCSiCEDHOopUOA+gyI1qlQ6OcZujGDfbnrgoI+W236BrgwG3hnd
	 SkKfIFIPijg8Nskw98C5vEEAy3Ks6iEntvJJAenlfvXA24HbjD01d4Cql+fCcnJrU9
	 4mDDHMpRbWIiS1OYU2823Uu3y4WhGhsIqcvOvUmud549qapIT4Z1doVNsYMrzRiQ2i
	 o3BNY0n4Q0+Q6huc4bLvbUjoup8gt39YQGu0gKwxw/XlgUCDo+RySD908zHSkZTs8o
	 s1EYITdYaq/X09BqmWz5ybJKbfNHB4UR5ptYaUlTL+5iYvCRGfwx/xk6MjahpgPdOa
	 vaYfQ2G36uoSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4CACD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177781125368.16318.5357134810923535673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c6bfc22eddb8e180db4fce5c6fafab768f5730f5587395a3f9b81a3501ce649
Date: Sun, 03 May 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777811253
