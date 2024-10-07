Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBCC18B483
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728302754; cv=none; b=UFaZGU6EFlMIJSZkUyINAZu7jm2dDykn64wzyLIis4Sfhc7rzR+9SrFkxdslEno0lJaOHwD3Jizyj2uy+I35Rqp2NnRLslsAl5ClWhZaz+3FQ/jgtxZB9ccl3427s4dSv/SjQ1kF0/mCTiBh5UXP2R4TCV4e3ouzGavOtUtEe5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728302754; c=relaxed/simple;
	bh=pgmyyaWJEozs9cTnwX/l+C3I6PSjlBmfllv7pqCWNTs=;
	h=To:Subject:From:Message-Id:Date; b=rAT/LdlAfxPyBJPa0cOdOGC81UPIxz1MFXSVubwUs+RO6XytmBuec0Wa4PDdRts84rYmXCb98BRrBE6atDGGcQe9XaXOpsD7yBrG7QRSGIMsEK8zP0YR0vVNYK/jbl8uv5+oP8uV49SgZmmlLksOYO4i0ixlMVX08MSVeshiQNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QR0iPZv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QR0iPZv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5321C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728302753;
	bh=pgmyyaWJEozs9cTnwX/l+C3I6PSjlBmfllv7pqCWNTs=;
	h=To:Subject:From:Date:From;
	b=QR0iPZv8uXtRpYc52TdnjBejGplZMZZWlPgIvPvY5InqUCYhlrVfWkLoYV4tSva0D
	 8noQAobCPqUPBGsWGSi0nlxqMHSvpfPkKwovAfmHsSmNZf9kBqiqGrX4iKJxke5TZz
	 CqMIAqctUA6KNNfAH6apxsjCEq/U8dIrwib4sulXvUT7r6nRddOWnGU1E9rJIRJvTu
	 EgOYWwX2PWGXwT46kWQFSo/8QeA0eWYzmQ4giKi1vmhk+r9XZY/cHxx6daxzi+rtev
	 ewuzwGx+2ngE7cyXyIHbT021rK9zj6Qi56MIB53Bb1CSgkBogb0Fo4UjHb4GSOHynT
	 VyJF9QDhc/r8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6C4CFB440
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172830275363.20520.6871418391643322803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9593ddfecd20b577fee13bddaa1b54bbc083dbd0c1556af6c4c55cb9e73ae50
Date: Mon, 07 Oct 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728302753
