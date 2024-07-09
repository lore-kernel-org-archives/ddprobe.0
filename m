Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F6042067
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 03:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720496183; cv=none; b=SGXyPNKEkzK8eTZS7sB3t/jGtTI8W1KaxTe/c93d2twgDwNfbGVKb80Sizog8Wi2NM9WORJiXZC7GAwkuPeJuSIzyNdqPFK6TVEcYxhTh5u9NKUHkIjHIvNObAW2sdIkDSllUBb0iE/2Rls3prbbgnlX44IKSRyfVsYQCqfkC2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720496183; c=relaxed/simple;
	bh=9PF+BLx9F7d6oSZddwjmB5LSjGLQPJuB/cS59YijknI=;
	h=To:Subject:From:Message-Id:Date; b=mfJnENTEuC6AHgos6l53kzQsQqsDk+043mADvX3bYYgaezcCS8plJKASmsuh2wLcrJALl6wzbR4I2l/6hV2tq2YpWowmLxRzMZ5zgx0n71/sd6fJbsVrQZgGG6pYZdZJyyBVTbLt+np1KUe8EDChwmziZ126RbqYgDKIpTGd2Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqZjS0Xw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqZjS0Xw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58DDC4AF07
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 03:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720496182;
	bh=9PF+BLx9F7d6oSZddwjmB5LSjGLQPJuB/cS59YijknI=;
	h=To:Subject:From:Date:From;
	b=HqZjS0XwgBQ+SmGIPpuk09g7g77I1CtVPMPmA3MnPzVSKVuwdxUb8CZec71dn0H+y
	 nR/NziMr/2OF4i0u7OmPXjDzinu+QkoN5KGcH+/JC51HBavdEBMh7bZY4/TWN/7Yw5
	 1unRHDxOpkioS5aI8tlpRe+JXAmnyV67ph8iyvRkRjHt6gRvCoa9Au+xRh5rDSKhrM
	 FpX6LoWCWA/Kzrmzb7YVf0D3AGbfa+vMEmYPZIQ2c1MuFHdK+iSriAvpy4D2vdSh85
	 bz3l49Yw8y7SlDbfkqOcfsJoJShI9ZXsTjre8HYnlW86ZhAXhlPL5pzsY0OGBY1z0U
	 53Ln669pC98sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C023EC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 03:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172049618277.28662.5221902284009359582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27bd6527b3c9b148b16bcd07a1f9754b6021e039eba8bf0df81796bd661c7848
Date: Tue, 09 Jul 2024 03:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720496182
