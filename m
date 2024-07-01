Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F295464A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 07:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719820463; cv=none; b=ICKtzqmWHslMzXQQAQdJaeE69iasDhO4bhKQ0GEzvwdVnC3VOUxARWfYH3DBhDUZJ+jsD5uPbEAaqGSy3oNbOiV0iC9Z5UdFirCpC7dgxvMaMQbtYjWrKbq5+LHh9ylXIf3o3+fKYQRDf9aIYZC/Vu0FzTPxF0Wx62eXSr/uHX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719820463; c=relaxed/simple;
	bh=Iyw6bCofD7cqiOhCJBvM9h4Gt6zN9N/n/z6uE189otE=;
	h=To:Subject:From:Message-Id:Date; b=DIg5us+dA4p1C9h01tjlxjxEYe7aecs4BZUI35SjasU0M5kdRVMrqnJCArHBfvCMyaVhKbmycRZkhg2gFwn+tENph9v0xLZaAic7Z0vG1EYL3vKMJltblRwbQZhuJeiBLlgKeOPMV/TIgVR9wI4FdCLWK3R7J7TI+7Nvfnu5nr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hewYXiYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hewYXiYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC92C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 07:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719820462;
	bh=Iyw6bCofD7cqiOhCJBvM9h4Gt6zN9N/n/z6uE189otE=;
	h=To:Subject:From:Date:From;
	b=hewYXiYmcvQkCYNP3akMYYyE2CY7KhPJhmcT8QHA9Ut+CPTNHPWhNwBfrtueshBeC
	 0U4rh9qqmkzSwn4pAZFLxDzHe3O2SCqcBP8wcMNWceWYyr5Npex6l1RbxB9Z6IbkES
	 ujZnBfvRfd9Vrj16uRF32KG5XkodXU/dBOMQgPVBRU+OwkYUjHlrDQR9rbn3GDlQWQ
	 UOkQRHqoiAP7bH5xefW2EKiLvFJ34CbMu2OE6srFTQJZrNJAoGNOklK9+x4yC5lxMn
	 IkOT0rub+BhM79ql8vHyflEkqULT0z7l1wAenVcUrdwhhQpevTiF26yL7n+TAtSdNx
	 lXxOu4fy+dKRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF4A9C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 07:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171982046277.25191.977557588641445282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc1e3bb12b446dcb7676a8acb95bc41d31374a972d2d4869cd8af3c8f285f833
Date: Mon, 01 Jul 2024 07:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719820462
