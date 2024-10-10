Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369991C1AD9
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728563754; cv=none; b=Lh+nb5yz0eBShvhHvifgHTCwbf5HUrdJE61xYBPfkG8YuJJf6xh62AsKeXcSW3JtOlzHDEXIIDe+0wkcEnWNA7TKaJ9mCpNtlnMl+ks2YoMz5FmyDk59yEOTD4V1yI4WV0iGUcvCLHO4zfeUrsLVz3EMWg8aScn9BUP6fVGMKpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728563754; c=relaxed/simple;
	bh=RMGjqJZrBRYhj7tkb5wlzDcQtsd++g7ksQ4lrzGy7zY=;
	h=To:Subject:From:Message-Id:Date; b=bGvn33e4H2UEOwG/FI0WcEyPBx+57qS1SDqz5dbpaqQ9cUQxd7ZCWNNtJ7uODDvKmSc9z/EjhhCQ50YommS5NaXosbD2QKcRsPBykLcG8to2OpFCPe9Hf8Q2RQi+9tIKQLwMRMOwENphFzC4n0EQQCbm01BS8zxETRWEBH1vpCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnsAXvHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnsAXvHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC594C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728563753;
	bh=RMGjqJZrBRYhj7tkb5wlzDcQtsd++g7ksQ4lrzGy7zY=;
	h=To:Subject:From:Date:From;
	b=gnsAXvHFHtFmrGPh2LTtApHJM9aEF+PAqkQQ6U0X7eEzhmHnwcURmbBKtMrX5zz3B
	 5PdUAQRtiwqbkDSlauBEYZOEqB8ODEBLzoP+mE2CdIB8MWbozfSU0GovN8jEMsJB13
	 1TUUATjC/gd/Raym45JuzAvBv13v5+TbM70VUzFMjFYGth1u8VhLIvqVUeA+jE1/0G
	 wVai8qV1qsNutcp5Mbx7pn36khJJhHXm+SArMYpeG4AKCL4XWMiSdbcY/X8x3YsqXV
	 iDxaVyuESFNKiYhtghgikWQCCPb2TCmBWbvZ1WWYl/UO+Wxzfmz3Vck5Rxqwn8y3om
	 eXKmyEW0DceSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE98CF11E1
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172856375363.8052.12628782603010341131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16140b287fb9a18ab5095dd6725d9629f44e5441aacb4303004522c8a3239a44
Date: Thu, 10 Oct 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728563753
