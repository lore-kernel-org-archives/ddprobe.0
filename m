Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E471F3B87
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 01:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780278874; cv=none; b=Fe/Lfwek7n4nbJmrKPn5/WMcDw6gynJmM6WEmQYAhs47e4RzipFl75tBmKvzn6SAr1/dL9VY3bfBEfSpuY0ornfr4fpvt+76iEFLmdiUD+dIj/x23Kj1O1EmzeoIFvO2+gezAXO5+DY6DFjtUHHQChNWVEEE3y0TUKOYUvbVvo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780278874; c=relaxed/simple;
	bh=SacXFaXZYnCSb25MfcRzskpwBVrwaMZ+YLev9jMsrMw=;
	h=To:Subject:From:Message-Id:Date; b=oJ6offftrwlIs1qbxq9XrS+AQanLf9VptHuwE9s4MR2JxGjrpJVTPXxkAQ0cfHtU490K+nDb9OSpciTyFt74iake/ET7hSadupVTN6l1rXkPQaqyp8nR5zTSmukmtq8cnzDLaqrrZ1HQeZrJ/JkAlNrAh3amWqE6p96X4xIlFjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+tL7Hym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+tL7Hym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD22AC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 01:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780278873;
	bh=SacXFaXZYnCSb25MfcRzskpwBVrwaMZ+YLev9jMsrMw=;
	h=To:Subject:From:Date:From;
	b=B+tL7Hymz3OYgMPLREMqg/3lUf83Puj2INSR53+x9r9+vbJw1h+eINAdjAV2J8ewD
	 7HGQh6WXFPxvgiIR5resxU7gJaXjQywyWgjZ67jxmz9zStG9W1jBjAyWtM9wTy0gOh
	 QCKlB4R+0eeDtTgBXoR3x9hDvfD96tYZhTGUGQ1HJKseoDDOe+m3u5qRe/nCGoJZ9k
	 tUa0Yij2/KqLjkBKT2VjvpXZnY0xL4jVcwlSVmzmp3Hr/hhFPqY8RH4egNOHK6Gp2o
	 Q9qdVoshQPJh5X0cM3WqqtrSgP5GRXWrwQKSt6rqfpWsQEPj0owpavDRS7JCp3WXnG
	 ci/upkrTJkKRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3CCCD6E56
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 01:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178027887375.18268.1015584080272653633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e628ded3d954068a3095324fa8397b6e1e7273b917e7f846ea0c77784612ed
Date: Mon, 01 Jun 2026 01:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780278873
