Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF4F259489
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734945954; cv=none; b=Wggw92IuRpj3yRP0GRPqhVQj1NR9ctDCKd2hXR96i9Ylm1fTZRLMsFtiu33JvkAHyzbMMM6dUjMZ2SAyx8alI1bFZtk7V2sfwgp4WTzWXXW21g11f9DgZhIsiUkIVhi17KXTi/wEfwgLQP8R8FWLsvinzhe2V6VLwP7Xc+08oe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734945954; c=relaxed/simple;
	bh=ToDVFP1R2SuK8yzzhKKOGg/v0m3F2STVk5AmH9Vj1C8=;
	h=To:Subject:From:Message-Id:Date; b=rHiIZXITXYXWhS6yaZmwpSv2aI2zCkzc+0as3cBIQE3IVBn7ja7o7NREFbhyP9qpXGPG2ArA3cUiCfLIPrrd+t1AbhVLrhKAl0+qp53YcFbjgwa8jQUXhxbUG/FaYdxa+9dAr3lwhon+KQ8+XAtXkTIG0YtsFYQ1U2JMbjpE9+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRgRRQMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRgRRQMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B49B4C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734945953;
	bh=ToDVFP1R2SuK8yzzhKKOGg/v0m3F2STVk5AmH9Vj1C8=;
	h=To:Subject:From:Date:From;
	b=IRgRRQMvAyO79+kTJUZ69WJzBme/nRv44SnL73DCP/xgruJhUiKIHKajsHGDXs4GC
	 O8U3b7BlrqT9+R3IT8VD/M1eAClzIjXEh32ZuxlJOFZyvmhnHnhO1jSAtkEzF+GehO
	 Ph9ENb4vMNJ69ZVj+dWT2xQWmmOhDzPrgfvJ4aZmiZIyagTPGKCMAIgsQXsHB6O734
	 kqjvIL4D8l/YoB8plvzY+6A0jnPzarO31P1EkEVR0J7RHd3ph8iDL8rtEgXZBDhXIC
	 4XGSzCu8qk/8SV+V9ffornSbAXt/Z2gk2atW1pFZOHQFpbWhqxSNgJ1CVmeIRkeMgY
	 t+DYtbYrQfzug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB74E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173494595359.7762.1565169484585314052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62b7f6783b90eccd97633f89124204f855e7d1dbd0498514a8035795bd5d9f9d
Date: Mon, 23 Dec 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734945953
