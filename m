Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1839415C12D
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725027354; cv=none; b=IyCYLlI3VrNqvVIEnoZsqvuMvTHO3hgfQ2+hrxf3v0BAfINCukyTbQd4SDit26wUe1kjv01eEhbtO48S55qexvXZhYp9JghBVNuA0c6XM8WjRwR/B/MasGAZ1Jr+/YoHt5VPn6pP/+r1yzWNXqL1A1cJONGIiVzJYz0ki8qYVAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725027354; c=relaxed/simple;
	bh=HkneMBZcrFFvCdyEuBrq6g7uLgFew1QT0W/pBM8qg2A=;
	h=To:Subject:From:Message-Id:Date; b=YCTocCrZdPmqnuxK93bYk5Hlh1+BozxJgrL4j4iblsYx07Flf+Wn2bLCwgUqq7jpUgnh37aFHRkn344Jwx0qxaeEAGo4zWmYriUFbbw7/a7JsmSRgO9XZC9ZFDUiNeLQLofn86TdA0R2dJe0Z/PLlJ1rhhqIaSuaFiQ4wEJLP50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihFVzDda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihFVzDda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FF3C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725027353;
	bh=HkneMBZcrFFvCdyEuBrq6g7uLgFew1QT0W/pBM8qg2A=;
	h=To:Subject:From:Date:From;
	b=ihFVzDda1pfgegbB2xi3SH6ZwFS42z8yjFlEj2r702yqZsyHr+MyYQGcxRVELPZ1p
	 D/CMppZLsSvL1g+0UcpJLfxtFetkgjBrERsIBIM6hmnTOvXuABQii1VIP2egexJyX4
	 teJkrpzVTnPps8cKX+QYZXQ4DQJos6VhF+aSFiC6Nk8SV0h298fws6FbUBL0aAeS43
	 DQCqx9IxeDu8ZDaO0I6nzQD4AxOMVZfspaRHF59g5AHmVgwj5oaqvro11rQAyeIYHj
	 LKwHYhh0rpEAwKkoMYPbnkhAGtj2CgMlAw3lwtu0d2d+YepwjBeUG0qnXO0HjUeNSR
	 arfrKbUoXaPhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979D4CA0FFA
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172502735360.30437.13128791768191106649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3afe7c3ecf1e03c124676ecd7431ac8377d40080361659c26ab8cbac120218f
Date: Fri, 30 Aug 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725027353
