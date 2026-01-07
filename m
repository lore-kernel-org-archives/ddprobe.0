Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D94A22A4EE
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767761034; cv=none; b=LBqcO4svcCJe0Q1l7gm1a/OJWJf1Vrv+7T6Ta5O4k6tSHwRCajTHQuAefZ5sIeOV61gekXl2RsUl9vL5xpZk7Cg7nFmceac0a9QveTX/wwx9v8TzzWrpWWNtXCPAwngQooVlv4nhZwkcKSSEYfRZRgos0/thwUqOJtC5wEAEsPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767761034; c=relaxed/simple;
	bh=8UtqoaWVgNOB1w3ywnkEoUqjjwRFrcpXSzhZYlrdXFE=;
	h=To:Subject:From:Message-Id:Date; b=k/9M907lOhqHCx6ILayu3r3HJ+bODl/dN3L4PQmuekn4pH4hxvYy1T7bKac9Lux9rghvnfizw4jPF0XA3jYOmiRvVkNoWn1adOJVoifqI+W3Hr2Ote+tBo7NyE9uLFMTpo0MgUE7CJnAyQOLzFvNe1LJh4nN2A5X8jT2xeKIySY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LafQOZ5+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LafQOZ5+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E059C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767761033;
	bh=8UtqoaWVgNOB1w3ywnkEoUqjjwRFrcpXSzhZYlrdXFE=;
	h=To:Subject:From:Date:From;
	b=LafQOZ5+tquoOal8Bc+FO1uWdM/dZpYXKQeahRR3gDxetgvwUTDwS4NNXdJdEIzgM
	 13ArUu7LJKCDqbnpYelc6d/RpCYGbr9e4V1Yn7On7NSvK0anDKtM89QlPTbxcyskcN
	 KVTbP3ExsyKtc7nXqv24qmVbkEz/c1vNryJrULKKuKnOZ+zyOuHCcwM7D9IFsQ9EOf
	 sdt9MdGDntmQQAmUjry3L+yh+6lAAS3CmonGjcsdH4AzeI/dlDXxxTn+alPWX3Ycbo
	 /JIK6EG84mlIRY1mlrkkoRVkJwGrLrZ8CubKtcxYjRQdV8ITS1YsLs+Jiw6HJrMOKY
	 ePtwu1Z2tZ42Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEAACF6BE4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176776103358.24617.15452262542080679923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c2e981d8b44f15bc70d6b80061becbcc7908e5451b6b1b1ff0cc91d7946b886
Date: Wed, 07 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767761033
