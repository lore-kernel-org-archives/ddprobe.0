Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC861E515
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751377794; cv=none; b=m4QHFRhae/Nt7siA0CWSisEmMtyITNIzMMNlAMjDRM9yJ8378UeV/Dg96K6fFipmq2/xuy/hJ/MK6XoRX53cmTgXmvkwEkSIjrLNnaXwMw/CnzBlPCZcx6kO3bB8q1xSY+bUwj3ID9uyGDkYFdvUlt96OkTlZmtMlG10FomPZIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751377794; c=relaxed/simple;
	bh=0jMhMR3KfdK5dNVXScTwfWudctYQSW0zHFN9cMyax3c=;
	h=To:Subject:From:Message-Id:Date; b=rOD3wFMIpxkOEj+KuqZXOVJgOv0If+gJR26yleetuUmrjGPt9c4IoAiBPm4uStJxsDrqeJJJEMbABELzX/NZEisYrxifkOJ3nuqQkOgPP5sa05i+uuIJZnLo0It4ddvRMDaKS4QglaPlfsNews84nm2BwDm8QWc2Yhd0NeAnTM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVmzL0K5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVmzL0K5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A740C4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751377793;
	bh=0jMhMR3KfdK5dNVXScTwfWudctYQSW0zHFN9cMyax3c=;
	h=To:Subject:From:Date:From;
	b=BVmzL0K5GIKBQfLrf7EOwk0qiXn8mEF5N19fahlJ2xlG1Q9v5U3Vynrqsk3eSua9Y
	 hkYIRlAXf8GBMuoUSkp5Qd8hvpftS640ZSm1Tl+jsTI03o8XvUzRnLlCks6XpcLf4t
	 Ua4yjYmbseaWbFJhGLFR1VWAWwkdKXxHfR6arxdzEwuCyCRbXwB71JaIIeAfFvpuPh
	 1AWfUEoZ1xbe5fTF3VXcfLI9Xy7IgzMwiy3Aa1PcLqSPMp20aOqj2Zr+jIJ4PwMj8Q
	 JwXLLd0LKl3slxx4xpryTMUBvEX1dO54C7Wrp6f4UDRjS/5TQzvo2bYVgx/3LEWa5S
	 0h2zM4qxy2UFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBDFC83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175137779357.15489.14063035853340838095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f0ed277095fc0326521cd5c9c5e3b1ce838f70c553cb575efb93d8c510e8cab
Date: Tue, 01 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751377793
