Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9BD15AF6
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735188954; cv=none; b=YAuxD+o9KPqvbp0A4nviDviwhlbjRg42H+jzT9e6ql749/J3zUtVtbmH2BcLuSItqxNiMitp52cmaV6GAvteWawRstkH/VV9K66vftBIzZ3q1FObYvplsMSfxaynz98oKasPdV6WPlYh4HQSycIFY0dcTZsTb2up0fYsWpnp0VY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735188954; c=relaxed/simple;
	bh=M7daHJDVvRgVlY7PZAlDeBzTN12M7Om7S0ZJNrETb7s=;
	h=To:Subject:From:Message-Id:Date; b=QaGcL+eKupt8b5CRx1Vq/T7VvjXVQ1auU2MNZv9fefiVbo0pJntmSwtA+dRX/8g526Hi+8dYFY2P/bml2N5XQdUikG8CyZjx40CaCu9PPkpwa4jhUDFPmhtL1sbgfnxoC1gIejNYxt/dyfAIes8ojF46JZO+726Eo9hOOGl9pYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLVx2tOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLVx2tOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C845AC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735188953;
	bh=M7daHJDVvRgVlY7PZAlDeBzTN12M7Om7S0ZJNrETb7s=;
	h=To:Subject:From:Date:From;
	b=kLVx2tOyOy69foN8zrwmfzS4/8KS8Gk1kMQj8FXZbhxMenDsjyBOTfqvJGbtGbyyd
	 Xjo/3kvwtLC7ozbHEVzHeLdS4Q4dBTK+CWoTW0lgEAfsCsC3fLFLzrbBYBNIQEnTPd
	 x1JrWVAwmkOiav29LKgoibn3CwFu0AOPgRIiQ8HBVOoaEiyM/TClQn1R7E6Mehdzha
	 VR52RBh+shoZTqb7MPQCCJOWFJ2oM7MOFHV89YvAJKF2xo4q09G/OkJFMv6qGE9aAi
	 FBw4AYlmRWqgR11tAi4lQMktvk5wJOUceu9/MHLA4rF9F6sdFJxiBdvwMNzJf+vhxi
	 IsjOLZD9qgRjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B016AE77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173518895364.17043.2730220163578817326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db24e5a9406613814f4765435bea3343403897a887a07ff97751f1dbb7f2d09
Date: Thu, 26 Dec 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735188953
