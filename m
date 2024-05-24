Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66580383BE
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 20:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716581003; cv=none; b=eGPPpLe4FQMbV5BI6rvLCNhwrYqpFo4DZSBmbSDvzpuitonWHBe94NxWUR6oU+o4QGg6nuR63gQSMGrjh2BoeClnqmtqKhhpfzl+yXWECW86mBkiyDqHK8n1pS7dOK9DRBToOGr/40O5pUTl/+yTDAlTChL+3eTxua6hc4XiHNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716581003; c=relaxed/simple;
	bh=IuiIsqnoPxDEYgKK1hfb1dHv8sPC8CG1KBcnCjAvsSc=;
	h=To:Subject:From:Message-Id:Date; b=q87NaGdeQtMHgxl0lDZtC59sADea7XNojHNMvZfy2SsmG255kyxgPsFu8ZasZ6uzj/suH5HxOWDhg7qHJ1avtMbrpRnYJRvKhKUGtE6uV3AZ314Lax7xeADQRkODO5bpb08Z2B22H+MbanQBsALz2DZscRALZ5bDr0yupaiX9nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMYKqyRV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMYKqyRV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F06C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 20:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716581002;
	bh=IuiIsqnoPxDEYgKK1hfb1dHv8sPC8CG1KBcnCjAvsSc=;
	h=To:Subject:From:Date:From;
	b=RMYKqyRVAjQk2OBsD4YmxDwi9nnGXXyzh9bRgVGtBrP3l2lCDQMXefSz4S6DEHb0b
	 XI41W2H16/xTgrepM3ZxbEtBL0OBS1iaUAz0qMQRCzK3SzLxYep55XOm0Okj30FQJo
	 QuBMQnZjf6LCMXdJT5RPN23+m+5OB9JsHXI+Rcq9HUggnEjsIelRgM73C3OcrpjMjF
	 cfcHQvKXH1DZfUaYbf2jpbxYgwY+yBnXHQc+n6umzYAbNcXaVc1MH/8N5eyiVjHF7J
	 tvXn7719dXkthLw1tQRgSme+lGhJUbEhMapzf4p6/q3pEZ5gWs7B5SOckJ4nnV126n
	 qB0c+ReyPeNzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1BF2C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 20:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171658100278.27959.4011643638828300674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 301d0e97bcc2000592510edfda467abe9b481417027b0ebe25c7f5e352057704
Date: Fri, 24 May 2024 20:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716581002
