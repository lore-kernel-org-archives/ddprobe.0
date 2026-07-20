Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54356356759
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 18:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784573314; cv=none; b=pTm84rUJrpkmWzWuAjM2OC1zjggjr3jWLFP5wAR2e3iE6uX4qL9FdUQHGEOP+w/77dnNpEJdMPUyQtE8S5WRN8U0dLe9XIhbWs8FDZuLfDhU8JQ6pxIEWwPRRX8Pxu7DWutjxEpuRFYTfH+D5uMxk0rZN4bIqCxOykJ68+kQyfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784573314; c=relaxed/simple;
	bh=DcWStoOHRIOY6yaY4bH/9ENtTigTZgA8CNntQ79zxZQ=;
	h=To:Subject:From:Message-Id:Date; b=hw/AN50nCIM1sBTiAWZGdaBtjx9XRihXLTdRcwMLXyDDNkKzBHZBcb/dCOBktcMvDJ5EpGzh5jfGfiqYC7vPbFVkzdC0JO1bHakpb9LscurGqVHKzGRPXRpcwkG9v/If/qUhWIyfusHy3RVsuF7qILwnoE9Xo5EfNmk3CzOj1Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2+HcyI8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2+HcyI8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EA5C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784573313;
	bh=DcWStoOHRIOY6yaY4bH/9ENtTigTZgA8CNntQ79zxZQ=;
	h=To:Subject:From:Date:From;
	b=k2+HcyI8V57lSz2zORd+HDkr28fIkOekHdo1MLyCwJP402pCj5SJVehLGDFRpedNM
	 OWMz7aQNtr/z3OMO/a5Fz9wsicmqbLnZ0WEFtZXt6l/9r9vfat/Ug8R1geBcVlY6w4
	 4xjXGyj9GgL2mVIayJ38AvZEHKwl5HRWqrJRZgoUsOC9mXrsUPOiMXdKwyxPW+oYmB
	 kivnu64kmZFPhWaLf+O9Scs/X5fpi0FjFUBXmBq9gBGpqjoL6Dp/jkbT9sAamyJZgE
	 MA12QjOkTIEJ3VK9xi9CquytEwidSJGXYaheHln/L9fFpL5117zLuUmNMqQlsxIWYZ
	 FNR3fTIYdGTNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5CFC44520
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178457331370.31233.7650481981764448572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 658a47b5faa3aaa8cb73c48ef62368255adfdd9072c1f2cfabe46b42a4dca395
Date: Mon, 20 Jul 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784573313
