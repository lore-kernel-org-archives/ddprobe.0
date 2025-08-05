Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158281F460B
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754414994; cv=none; b=ApxT0lkuOc2kZgdIPa2JlRvEWRGRcnzTWsii2k2Z59IZLe6X0wvXYAjIHg1OqjGhZmb8VVfLhOcZulpWZcXm9fgVfNsiAHGzWbwAA1bAfph5byn6ZA252RVmPfcdw7s8AOpbIsYLxen3LdRFbk6yu9UwzAva9rhevZOzM/uhJ+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754414994; c=relaxed/simple;
	bh=t2gj5rPMQ8mvzqfvm0veD4bvj/Fq2ly3X3JT7G8O6eQ=;
	h=To:Subject:From:Message-Id:Date; b=Mv7Unh9Kiaa0ubUIQzBcFF2P0FcnNt1OlzY7ti3ZsjcRfsfGqJl6LrxZi2vICmpb09eCFS3D6nv2ZGQMqjPw9/DbiaTQGWgnWMkevUDDFwSBj6nJL2eUIWoWC0STOjVo8/GL6BQnQzIqtTaSrs1sXNQ2eEA81Og3yk/1sls+sH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOKaSneQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOKaSneQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A027EC4CEF6
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754414993;
	bh=t2gj5rPMQ8mvzqfvm0veD4bvj/Fq2ly3X3JT7G8O6eQ=;
	h=To:Subject:From:Date:From;
	b=TOKaSneQjbWljRqEwlVTVqYUTTOitun/eryvoM8co2UE1Mswi/jwXu2cpUmkmxaac
	 vLsa+A+GfFkD+WLbCdtnj/nweHIFHs2D+0A+ZlMw2RJ8ZiLvrvER/Di2n/ANG1BBo8
	 /qxWg7jYtYLhtign/wVksr7+gbupkV8iU5WAXhlPW83LoEe6AXWA7jgewOnApFRaS2
	 XUEYgWDTs8WTBqi3n5BKJYnuZDQ+Vt+tCSa6GHcRuAvzOFYUVTdz77RcHc8N8+x55m
	 cRHVaLM8xfdp5wmZ7GVycj5gNc5UOPb4f2i5xDAzYF+HbUrH+Qmmub7E9jk+0XTE8m
	 BJcyLo/BaRfTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90799C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175441499358.22645.3510640586343548320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5a25a2640d2ccef67ca174ced8cec9d53cbbd07b9551e106f372e2ec2edd9b1
Date: Tue, 05 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754414993
