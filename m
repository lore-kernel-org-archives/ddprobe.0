Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42698179BC
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738134954; cv=none; b=EEOqusVS9llZ67GvgcGmvEXH1lHhGQpr+KgJ8nDbPLliUikGuwgKeh1uBFAtOlug+wymzqMuOQrj9ULmAdNEIpL4glHH6+fAHRfb/VgkJqymB+bq0swl3YqssMrYh9D73kdLCRNHZRGjHzsHHMZhOqnFCbkRREHNg6hzd6MThlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738134954; c=relaxed/simple;
	bh=VuvJxm5pNMckzN5bWj1Ux+CY+4qMS5o6/Dl9OW38Wuw=;
	h=To:Subject:From:Message-Id:Date; b=oAk/cv1Xd+dWJ1pQOe9xUT1PQ+xE8k+i/opjGg7lKA0a/LfRwqylXO2WEALoWyBov4OxP6haz4CdhRp+0AXtwidek4v33WVkTY+TbKBfYA48aIL+InLQew0et0NoUFpBSmSwvIpnGqF0SZs+BOw1XzkKNH0DpLJO1AylxlMzWuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CX3W3psX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CX3W3psX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27FDC4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738134953;
	bh=VuvJxm5pNMckzN5bWj1Ux+CY+4qMS5o6/Dl9OW38Wuw=;
	h=To:Subject:From:Date:From;
	b=CX3W3psXASEaNTYTB6Y1X8vW9nDKdLIKalmfB6GV3dsyw/w5xgRBXdL+XodIAqt6+
	 fASjX6BCya8+jzE0mqQpcTdRe9lcvvVnnc3DtwWnErzGFqdmPWPNrW42nX9QrnWsdI
	 Hx8+3NgDl5S8sAMViBF8kP2xFN4SyslMkbJ9F/Q2NUbyRK23Xy3p5xpUs4+e/XAV+l
	 dvBInpajozXaTsflRchq4nB4MumycQOTMJxifbESK72MHvUYnr8lI89XZPUUx8dEvg
	 4cvPDM/8xyVzZBiv07thwTr1x2zrwA1DZMo4Q2KVR090XMYPcIcV8rFfvkp1qC1VVD
	 VxGxLQD7YQTtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EFEC0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173813495359.25577.5960576643402126015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aa90adeb85a9417f5d74cd9f22c6c1447dca1dd2b426af604c5a99740881408
Date: Wed, 29 Jan 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738134953
