Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360D0282F1E
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787010634; cv=none; b=oe1T7dXNrIm9qsDjJNqo5k1ZzK/Bzubh5Vz/7T84E4pWpGyBBcCk8ikX3vEZzAPQtrxbDSbKEVRM5rthOZg2yJICd0qZnyQ66gXjvCbo24N940dCHFOk4ohb6vEwlhR6djGsKwx6IlWQ9/ZRuUP5PsxFwjw4JEIktdlkAi1vqLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787010634; c=relaxed/simple;
	bh=pjQ46xdmZcI8l0o0jW9LVSHndtIaLkUf+0ww2sevqQc=;
	h=To:Subject:From:Message-Id:Date; b=B64yCYv8/dTfzHe/SrN4Q0ATd/lNxT1NNK6SKjup0gfvLn86rMgSdTAWyJcwL/d1AOYMw494WKKIovsBwDZNr9ednlsv/crpMF7JIAVOVUJSkwm/sSY++ylKq3y7r4y2z6V+nl7BgLQJGTYlm9wlVML+vADU6L5njA5Aby20Vvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYST2agf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYST2agf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5520C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787010633;
	bh=pjQ46xdmZcI8l0o0jW9LVSHndtIaLkUf+0ww2sevqQc=;
	h=To:Subject:From:Date:From;
	b=eYST2agf5PqA8pvDNs619Ds0XwIrNQab1jdHqRjK5KmWRRgTp4kAo0bksQX/LrHXm
	 EjP6OtRsq5vMBHuvmBy3v04NVBYH1NAYBXZnGG//DHavrgP4V2guOHeY5CEl/jWYrQ
	 2DVC7BoCm628zr8GVKNgyt/W1bx49MU3Xpwrr+QLZ5H4xGozJDkcZCVwl/+TFiBQM0
	 VjoMaTNaptCfrwKapaMeCJhQPVF7VA6AS9lF4aqHJykRPaT906CUYdooKKwRXnR+ZS
	 keYNb3KJ1eNS9YKa/5ggglIdcOf5BOY9rbfC5Pw7PKFnA+IpzWD5uTAWrpt/I4dWyE
	 i69a3Py7EtoaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7C8C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178701063368.755.1434295627878001986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e2f7b5798fc66818045dbc5af43ae9145963681c4c1178009d942dab8a848f
Date: Mon, 17 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787010633
