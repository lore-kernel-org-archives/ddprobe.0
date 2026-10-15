Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFCA31F985
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792083034; cv=none; b=NDlNH49jHXlvzxuPRp0K2K5LhACDNXwapnfatNJfHB9nSzYYbuVLDh8yaOEob9WkGmocCL3TzT5BJLWkb1qeBbKSqVMQRdWk3QgTrTXVzdRtnPxCCfBBO/3oSF80DF/EeJg3M0loCsrJ5QyXCuIhJQzG93CP9yIjzOlfwVlWqR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792083034; c=relaxed/simple;
	bh=6JMZMokF5GK+Btwsv339vQ6ICvTYrrxEGvSVOp6IaJo=;
	h=To:Subject:From:Message-Id:Date; b=nhSkpOl/eElu1A+9W5l0FstVZrBJOi9wNlmnfcEbXZMpWnHGaQeokEAsXEvFiPg4mVC857VHQU0OhwrVoSzzd2fMULd8yXrwbuSJdflMNHin+8CmbAAzxDJGOZ34pnNkr1mkM2Vv5dGdzC6cfuWa4y2BNdu8eRTy7HcFu7MwJeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qduh2dvE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qduh2dvE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAC7C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792083033;
	bh=6JMZMokF5GK+Btwsv339vQ6ICvTYrrxEGvSVOp6IaJo=;
	h=To:Subject:From:Date:From;
	b=Qduh2dvEJbOQbDb+DDIfwixDvAdQRUVDwutjm2d+NdHq9BKuJy5H9YPGyCADddY5n
	 r9eMpc9p4igYNS2bjBDEzE0qdJ9htVrbciIlNm5iDRlWjj835BvP0fTcBDoKcSaHnM
	 tR1D38h1JuG8Y1tCCqe1xrUxmWBIyIg/ONpiFjzNAyVSr/FQim4dP0HPSve4EzGBi2
	 UY87OzINts3Te015ovZD5uPJ1zziH6VCtAFye9qsoKF/i4X4dOLThRj2/dxSA1IAEJ
	 zrU8jHmI2MAw8peE/UwAcIYOAtEePCZtFjs2SYFQVccvaAxQkqXzwHGvJOHtsuyu1j
	 +kj6dPlIcIZxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99B1CC6B38
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179208303368.6561.2324658464512512048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73b5aaf525e5377500b15e9f8b8849a07277bda610f3c1d5626a158cecc00e7f
Date: Thu, 15 Oct 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792083033
