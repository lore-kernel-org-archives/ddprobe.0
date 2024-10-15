Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087F718BB8B
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728977154; cv=none; b=q2F1vkWnUaAGGPNLIe3Zh9MFDD9+7d917NNiqgUCytdjanK/r3gmVaUFSkFggy1LSHxqUUGrxau/s9XSEak7tfDIotMCVJIzbQOkIDXubVxdOQkPBBIr7rpiqyKSeB7p6rklkdIF09PnvWl+mKhdJQh0eR05w41jiKxqJDN0QRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728977154; c=relaxed/simple;
	bh=yIEvGvBIyhRV42GqNt0hgwNH4m+MSvXGIrXw9mKsM48=;
	h=To:Subject:From:Message-Id:Date; b=UQX9LEgMZtihRyux1r6pUWac0XVDrP82mNGwvE5TKzxVs3BFY0CIqb8GxRrM5ZDQ0FAAigNSk+FBtV1+SvXBPQx6UA/gY7w+X076yN9SVaKOV4RiROcbWoM9QbaO/kcBKHlQZu/OP2RjAFBqrbqqPtv+6hD0svt28Pjlz/cVFTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdkmuFOr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdkmuFOr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91A6C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728977153;
	bh=yIEvGvBIyhRV42GqNt0hgwNH4m+MSvXGIrXw9mKsM48=;
	h=To:Subject:From:Date:From;
	b=gdkmuFOrjC9OJAvDDIzKOsC1K34j23/2wOVFb/0l9tvVLRpScna7XSXhAZLwmKfXS
	 IxlZQUDf3E5NogO3Nnsh8UfqeNOum511+6T/DCu/1ZkrQ16/2oifVkIrmHzK+8L5Da
	 0wlUkLn+9g+/GwmvIC6nyoFUS/fY8alm1k1GwpbXv2pnKHQOPiLhIaOyI2VKJIJXGq
	 jLIRNx2Ux42/3fc1UDGxpe1xj8/pNhx0xMNQFoOyYO+bg4ckfvOcFYF1DXYubctJBl
	 7l6YCUNgN/AM/yP6VP/3ta13wqRAMenlTHOwyd/09EgvT5X3f0Ur6Exp3MBYEp6ZZJ
	 11GqpXF9oKC5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93334CFC271
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172897715359.2640.17038965422088820876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35182d466c2228fd5494f39b5329164d824e06a4e932ede7741a8e53fef6a16f
Date: Tue, 15 Oct 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728977153
