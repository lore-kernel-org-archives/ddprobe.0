Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFEC5CDF1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 12:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763901714; cv=none; b=JKDJ6azwRzY2TOlsDAMjAjn08qcVGgoOapuzmsoEJIkOGUbuOF/NtcRgeA5MWJRK8L320v6sYqYQToV0vE4/E4WwFmRNg6pCkAyo+u9oHobQOeRQjjYqjmYJyeHoOoBfvWjt2szSIKMM+GXEBIiZODZvd1HUtjkd+175Cn45FUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763901714; c=relaxed/simple;
	bh=eneTw3mw+7+mmUzkPAUQNfdaWbE+Rcjg3qF7Fh88dMU=;
	h=To:Subject:From:Message-Id:Date; b=umQUY403bAsZsCPkdC5P9GRD8co2UxNjsCvuehd+S6dFQ8rIofVO8FRHUEEXKVZVnv9qH+1Xsc07v1WS9VPfyZjiKa16sXsKe6PoXS93g3QZXVJ0fAK7iTvPfecQSxIsjSg6RFX8ZQKSB3UfYCEGILLxraKmyo4MMJ4tiSQIQWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwaiPZzx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwaiPZzx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB509C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 12:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763901713;
	bh=eneTw3mw+7+mmUzkPAUQNfdaWbE+Rcjg3qF7Fh88dMU=;
	h=To:Subject:From:Date:From;
	b=ZwaiPZzx4dnlNfyfgbCrEK7YmxrtTbD3U7mGQD7AmPmOUoUm5UpmYSIK9DGIgr1Jj
	 8ZbGb+6NY8FCDlqf9AMeLjOAn1kzjmsRfLn/rQQiTNQvvyGj9jl+UnPP2kYVwLEe/Y
	 MrBzMmNeXLAprtGtz0H/WvBnqDzm5ngK6JkHbgwPZKtF1dvL1kZW0FQm7UPPTmHlIy
	 i7R79NdHff+QHeimn3kn8MYP3zELj0iFSOZpNPvrINIZ9rUi6c9C7CUMF7kFv6GlQI
	 he5w+ckBZ34jMEbU2c4pO9Epy6seVccUuJUS0dNsEipB1/zOsXpZMvev31MQ7BdXCX
	 dLDBgRNxXxDQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B07CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 12:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176390171358.27460.11008952560612586421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 573b576e557a7441f4a2ceb39a9a73f1792ad5f6c6049fd37f34b9cb1b56dcd7
Date: Sun, 23 Nov 2025 12:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763901713
