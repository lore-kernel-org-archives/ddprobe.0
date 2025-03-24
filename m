Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A560204F64
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742807994; cv=none; b=LU8tO9DDsAktNYkQGcnZXwh/d3nuYClDOMOeK1KG3scPnhbJkpuHQhCcU0WtQz2WOeJ0bh4Vy24oVMKRbI4XVNBQQslIauAxkNCyqk4ricvwufeNS6YaBLDflXz1BrramIJJkobF0dP8rEMnvaYjEJ5BL8aChQ2VJyeG6jBzs1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742807994; c=relaxed/simple;
	bh=t1cHn2+NELmJ4uk1Nmn81pMINRT+rMzA7QH6FoF2KOU=;
	h=To:Subject:From:Message-Id:Date; b=twmHaVR1WUHOUVCUWIKwZCtE0vQzuEX6FlbO1fs9aiA2/A/xhJKElp/UTX34KsdZTYZcPljoQraybExkXHvIo6XuJMaEG/9FGALIN7t8GDO5I2KM//lIeq5qi/WwCcaE4WfXn+E5QDDilQ4mp8jZYbwdHL44EdV/yHJjlT7Czb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjiB9AB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjiB9AB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FED2C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742807993;
	bh=t1cHn2+NELmJ4uk1Nmn81pMINRT+rMzA7QH6FoF2KOU=;
	h=To:Subject:From:Date:From;
	b=NjiB9AB+ckIwcTbds0WjlVEOq5t42etqU0Giiys3faqoSfZzpirp4EDUmZDFg1Rf2
	 thLBu2rfCTSheTelioyXjme8dCL/VVGLnG1+BuYwxsrP2aLbA+0iHX01kmsPiY5fku
	 Ef6e7GDULFdApwHcpHIxyx1BdCu+mkuARw7ZZzJIyoXe7hCE6YFqa5DIsHPQHKPHnq
	 HMB0yzS5XzgY/vF8TECK8BWly20zQ3svaYkp5lH+5wEbrI5b6fWasraXmjz/yp3v6Z
	 U/uswdMjhf1kbP1jyUonDFiQgOlYsslhLzbj8ZMAJuMZE00iuEpENV1JQaLYifAkvC
	 iHgG64YTZ07Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90470C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174280799358.21089.8696840062081809140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85e65199215c9e44afed1fa85a3344ed899785e2d4ddc8c47862b8e60b1c674b
Date: Mon, 24 Mar 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742807993
