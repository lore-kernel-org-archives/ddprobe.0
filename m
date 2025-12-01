Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2248C36D50A
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 20:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764621174; cv=none; b=MvoIFisJbIdQeKi0gGnL7WLyhx0BSAYM9gnYrbFLQV2O2ByNc6MM68GWX7ZgKp3vMRtGxsCjFNBdlhAQAiL3EDqJ2dNgLckU06JiaobwXaFp57tQGXZNGDlGG3hnbMHFc/YnCgjXYsIaOFYx4BvdgnrplOl5kdxCtN2V1Wrf0qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764621174; c=relaxed/simple;
	bh=2cWkrFhLH29MdnhS7ydJPuzLgPV6JO0Uv8uviHqlxn8=;
	h=To:Subject:From:Message-Id:Date; b=LK3I/7TYtWx7uEcG96bc5OCXrZH9SixcMs5XefoBIFadYIXoJeEyD1H/U/UpUlJJ+Blkp/2iJIMHxFUW7KAmuyAimptRBU1CSgxKAqBm+kBttQ4dyMLdwOs3u76c+R8/sImSxko216zeX0Em7J/TDGPwaNN92fcAclb2fil8nJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tb2d6vXc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tb2d6vXc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A884AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 20:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764621173;
	bh=2cWkrFhLH29MdnhS7ydJPuzLgPV6JO0Uv8uviHqlxn8=;
	h=To:Subject:From:Date:From;
	b=tb2d6vXchQc0gVA2gOepmHUG1Gzrz9Byt/ipgMdlpZGhbLhOIQPzgGvT32WVnTXC7
	 AdCFRDO/g/XZHrS+aGwXDXtkJILhi+JMsEIbZlI86zyXN4gR4gWZR4yA7RYXoTxMIy
	 17wxoGYgh0F+2jY0FjLN/eIgy8G7DxOe4uzeqBRmHz03moS8f8VsDDmsONWQfP5viH
	 TCVHvk/RMlp2NyXefKLE3dIFKl0DgcB24vkI+4GGnu1QczBs1zD4keI3f6wH4+vLQP
	 wwg/Bg4PG35wlyiVs0qtQ3rCy3dW6d/qkE75hbp6PLLn8JoE5aLYZzhb2ytPGFWqKo
	 nRFTVpTMG6H+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9615FD116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 20:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176462117360.1767.9348547748365226647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82cc7c34f50a8099c03594a82e48cb460bcc74650c056592a7789ddbc5360aa3
Date: Mon, 01 Dec 2025 20:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764621173
