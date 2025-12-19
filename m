Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2270A29D26C
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766148234; cv=none; b=aadlX2zuhEaqPpNoyZpZ8tvI67wBHlvd5rqX+Jokzkh3bec6mo6CCXvOju2wksYMJJ0ozMvBMTUB151n6WCcqJKO4MnCmwZGnJdxGmapGfVUz4eKSEFFtzTQ8wzX+SH+D4tmZ9Dau3fdX1zLeIqf9a03c+J0PadglOOlrOuYcqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766148234; c=relaxed/simple;
	bh=4G8W9LSfBsM8ETT3GX+ETpjvmuumH/UmMpmB9w5medg=;
	h=To:Subject:From:Message-Id:Date; b=EZp4khPtqS6om0UDQuTthd446/GVhTkrhJH7afw9t1KI24M68ILQttXeq4SFtN5P7NtlV2mCVlfKTEzftQkOCpNW1W69rbzyGAJOHMvJ4ZbQGwMvzYBPcgUL/aGMPUU7bMZ/mJcpxx1/PPz+Xmw4qRqBcV0Trr/1uPL91mXhMgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xp7ayfzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xp7ayfzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1508C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766148233;
	bh=4G8W9LSfBsM8ETT3GX+ETpjvmuumH/UmMpmB9w5medg=;
	h=To:Subject:From:Date:From;
	b=Xp7ayfzA9+q0o714/ZIJ2Lzy/w1+OjsilPzOudqx1und9AZ1wlAnouECclOjApCTV
	 0FpEUUd7wY+k3F6UcnrTmxa1LhjnM/umD6TIWKx60lpM0Vtph8Z05GF3+gUCoFasmj
	 6oFIk+MU+xFJSCzjlI9CjJ9ZWchKMt7/sSMlyHyBHFXewRJ4LKHUynKoXVwWpL/VLe
	 TRYqhLJ43zUQGHommRcVLr1mmiwnVMrvZd3hV6TNUKliSoxy2xjMdidRrC8DoMcRTs
	 Lo7Ml5U8evwuoBqWOElPNhB89sAN5NJn8mJB7ihWuG3wd921exeIgRBKz4khVFaqGT
	 uqwQo+fARS1SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEA6D767FF
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176614823358.31399.13770386102480300191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cba256092d9d79034dae8ffa63364074c0351a746ca078ffc6bd222c8531462
Date: Fri, 19 Dec 2025 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766148233
