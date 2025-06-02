Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D590801
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748823594; cv=none; b=J5UgWFaAcQw0sgWjMA1WHJD3ANbGWkCKMYVU7Hpm8L/Xv6Vk75EkXb3Qh7WGEwr4cHpcX84xAy9l9mIKjVqyl0oaDl4Hsa3//jSUDBFSIiv6z5XAK/AgZfv3rSOGSJ10+wk5xUNTIS1E0HW/BBEJy/Xth3rvmUcFkwY7JKPZtZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748823594; c=relaxed/simple;
	bh=+fY+Y39ye0Qhi3CJ+XmsRyT5CsyL4jnQ2/EEVKMltQg=;
	h=To:Subject:From:Message-Id:Date; b=i1VS9+iJ0QiCl0F0J9+UB2mrBy352WH49/eRacz8xScSaQHExW8PjHTKG7iWv8HlN4xdUq7m4wpDI7rUs5C99AbfJ+FObw/wAy+v/yR8VXxa02IeVJqTNehqESh0zpAfLHmNx3E4ALHJlZg8pNzu3lpHprJwoNnT3gxu0lHLT1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sRsh35ML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRsh35ML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F7DC4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748823593;
	bh=+fY+Y39ye0Qhi3CJ+XmsRyT5CsyL4jnQ2/EEVKMltQg=;
	h=To:Subject:From:Date:From;
	b=sRsh35MLr3XqXae6lJh0Ulf8gKJKhuY744CtcA4B/dc8saBbx165LQzeDvkX1Nw9r
	 D0nmXREi6zXPCQ/Zsfi2+dpm1x3Zx/Kv8g+nns//KuQ9/1c4EegsmDN4cBQO6mdRVY
	 SqwZ+bZqfBDORTYpS7ibm3iIq630XrY+of3jKOtdAnJBp5XcqX+olbM8dKmnDT5njp
	 wgeE1XFVTohaYQANYrUjdwQ/cxwQYo9gaGKlpdeQvkCOfHEUwbKUaLW2aAXx3CL8Sw
	 v29Xa9Z8kipytD+SWHvC8GoU2Z2MzdxlnczNbc1oKxi0qhFYpG64z7RlfJfm/NRr/3
	 TWmuCakmSUYSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907AFC5B543
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174882359358.30692.13629115050307313630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0ae50c601770a6d8d4d8540d086587344690cc5d5330efb86defc7b25453a80
Date: Mon, 02 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748823593
