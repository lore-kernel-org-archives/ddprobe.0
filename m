Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B21610D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749448194; cv=none; b=I5u6zok47OJX/XbILv5QeYiDRDaYeBbe/QJUBfJlSGh1OG/lOukTI2qpbXqv1FPs2Xh6TD2MU+1iRznzkiRQI8mj+jOJgarudFJcF/mFKSQZwjlbGlp7rgh/Sq75UXUY+89YT0ExuCV0e/k4Wn9hNtl/nUxg39PeX73nw28tcag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749448194; c=relaxed/simple;
	bh=ldOb5Fu/qm1dpfSD8GAfMWjEK7pmVGl8ykzASCaq3u4=;
	h=To:Subject:From:Message-Id:Date; b=XV0mW4F9F5yhdjP0eR5bwKMjP/8pKgW4ptN8bqneozZP8iPKvPY7Y+IhVMMfJ4IbxaV67blkYKyq8ZfEuThWnlot/GCqYs3p8yFIWzJ9fG+XntZjBlu4WqG1jFQgnUfq7SuvaTkljZcuTNAWWi93vafHFvRbfcitQVuXRQl3Ujo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gevIGLQh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gevIGLQh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52F2C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749448193;
	bh=ldOb5Fu/qm1dpfSD8GAfMWjEK7pmVGl8ykzASCaq3u4=;
	h=To:Subject:From:Date:From;
	b=gevIGLQhCwayIt1XRZ0T/Imj7UzTAhfAY8jlk/jDBVlAgPTJrnztBYHFYubqFL/oU
	 cLvJHBp/YnhxTjMnCks2KH2BOlcBEBvSNdyhG+fjVh85kkxWpwBOg9MVYNajTCLCGa
	 U91Y/pRJBley+IULy9V7DYOiyPttsycvJpgBcKePFdHdQR0oA447sl8d7feN2nINGz
	 2guZf/YazJ1jzHBDqQcuFzkz31MzpVlb1JTBhiP9wgY3Tz74DrjMHe/Tn1LMgVj241
	 xuCH31jDUjSoSWWGagPpPTvLjJYbJSRU/UqSt0X7GZC2y+4ueilH2CzJToBl7dUYUE
	 EsDqSsQ03kxtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93982C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174944819357.4315.16046029026004272904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0159e03d0d750d943baee37b05bd33ee0e636eaf9e742c39eb29c674baf6b2d5
Date: Mon, 09 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749448193
