Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395C940D56C
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 03:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781061934; cv=none; b=mauynak6rSFSfehekLoeu3FCf6EB6gLspSE1q7IrKeJLPVt1egy+6AyuqelmRmY40l8qO2Wc4kG9ya5U3QwlJuVsTWQa8z9YYyz8v7YI3/fUtd4VoGPHQZFMrudDBkcKe0GPblO/yQPHC6U+4mL0lQsEYAQKowe45L2+215PdD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781061934; c=relaxed/simple;
	bh=R5YfZkpYeXNlUk1huxGZz8rR5Yi8O6YqQ6d+vO7PSXE=;
	h=To:Subject:From:Message-Id:Date; b=R1EO6vvY1VizBPxg/7/sG8iNCuh8IwuknIdVAohNVH1IWw4qHYBjJEh9yOuo9RMaEUHUME+QTodXf9UnRYG0JKjONAcqJqhSLyoIQza6ErsyjcKU9/He+0DlU0nJ8bMGlZiziCkPZzskGna48xXv65gzLFgGkJNXYILMPUIfbBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0J1XU9B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0J1XU9B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9379C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 03:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781061933;
	bh=R5YfZkpYeXNlUk1huxGZz8rR5Yi8O6YqQ6d+vO7PSXE=;
	h=To:Subject:From:Date:From;
	b=D0J1XU9BRuO33EP/GcJDQfyqPF0pO6GgCs7ypppwdE8QasZ8BFUdUMcU2undsaQ2m
	 kWTCtYMbx4JISkbSPFa6eY+TKgR49AGLVsBbaaKX8q4qmrP2oHBPOS7mfncHmMJ3lR
	 q6NdaRh2Dlv8prIW96LwHGOKQozCXS+v8H5dHrnhaO/Zl+q3GPH4DWxFnNYZMIPalc
	 TuwTUApBKD8LCHiYCb+/F4JsSLKCTAy+QXYLu4XOVa2ojFYpdKZagqVN2ixWexXCgh
	 OCX8jeAnk/ZBeTQz90UqDFjyoA/HdRF2x6XQPZ5FyRP89qKtOpCN1BgFkgBM4ONUAE
	 W1ZdnKa+IQK0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4DECD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 03:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178106193368.1329.17415297353977041404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 276abae1fe4cf8aa168d96a185bc6a1696c7fefe8c749a7ccab8cdfc7dc0d9bc
Date: Wed, 10 Jun 2026 03:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781061933
