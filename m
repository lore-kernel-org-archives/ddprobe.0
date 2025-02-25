Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5090A18893C
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 21:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740517734; cv=none; b=H3kcXJb6qjccbeoAaQMlsAqjAlcwL/klVEIXOObgW7eDSKAYtvojCOXCuyE7L9tpHAlSzKpr6h+Vwn5EwLxCPqrWtx1eCzBrrNzJ1nBXq386APUIBGqAYX4IQhBBPejSUAm4xtFshwXPByncg/F+xEvhpocCPJ0sp2zmi0rvuOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740517734; c=relaxed/simple;
	bh=3yMAwp5Z3bVTjcrtLVaFZ02uzePg8YQ30rrr+AV0ed0=;
	h=To:Subject:From:Message-Id:Date; b=PDI1ggGoXnCRwuUo6Omh/JgmHHqiYY0OTF2XjRn5mZwu18zEia5ONfzE0dQ0ES2JXdZc800/1hpU13FqzCw8mzplj9vC6pQizz57h8xbGe/GdDQR2T3mTsMuBf2YlH5ybA4UqT5Zrjm1Cs0/hfsXL49roJDJyA3Vvaf98zIjHo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cz8SkIY4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cz8SkIY4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D38C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 21:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740517733;
	bh=3yMAwp5Z3bVTjcrtLVaFZ02uzePg8YQ30rrr+AV0ed0=;
	h=To:Subject:From:Date:From;
	b=cz8SkIY4y0mI6kvgGzbDcQdETE5xbT1wI9K+XgzOe/98x4Vgcr/j22tw/f7jDRmeO
	 4fbzq/b6ZdAwPMFiL+vDFK4IoqyFr6AE9D7fl2jtn/bAYeTs7WyLJ2AQjjMEdImMYG
	 xFyE1mdyCCEdLLgyXvNqDuuFitaexWuXMXHcDiT+DmNXcrnC8QQ2UJHRIMj2zEMq+p
	 kBW/F9/Z8CZu+PKokfwjpQjYgfTp7rp2q+UrB1HlWTfdXIUkIn04YWjCFHdfx5JEJe
	 NEiRHQFyCD5pdVT5wYOKV8ySq+KIiE0whpPJP0ZptN684PnCfuFfOL74tSF+CW44o4
	 jGDPFOid/LGdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8A4C021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 21:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174051773362.25610.17267258889964838746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 983d424f6b691b77a625f25211526acbd08652499aa5e35aa253808af1679b89
Date: Tue, 25 Feb 2025 21:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740517733
