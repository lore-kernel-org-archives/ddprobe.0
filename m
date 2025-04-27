Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC8A1DE8BB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745740194; cv=none; b=uZjsdUPlY8jOvVrbxMNOAAM+Lf98k7c+qz/QBPpx56M3aQhiRsZJT0FL3P7TRLx0xDB3ZqQHDXf8CAn9Ihp6YqWBIgInZnFAvp8P1f001b9Dh4RkT/8yYosyEQ+Faz+4dX5loQ9Ta33GvJQQ3AnVGJbkoCC797UimsvkXLk7o0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745740194; c=relaxed/simple;
	bh=b4iqhtGunqDfS3cjDbi6iZFnrfGFq4tveIsxhTXiMAY=;
	h=To:Subject:From:Message-Id:Date; b=UDk4nZmzJi8Vgb6H4mPV3EpAkFxCnA0hfF4mBt2Szd9iuWDEciUwuVi+E+psnzy2FV+nuyeSuYzMDY1ny0aFm5km5fX/Id+unsuTFO+xIU5tnBESj5r9nglg3pnRQ953vkbCLPmQnRhZoqprz6RIr/7qUsYG1dAZr9Lvv6pKVV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJS/WXpb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJS/WXpb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DE8C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745740193;
	bh=b4iqhtGunqDfS3cjDbi6iZFnrfGFq4tveIsxhTXiMAY=;
	h=To:Subject:From:Date:From;
	b=XJS/WXpb22ia8uL8kcxGPoweVa4LOS5e4c/RFM5gHUDxsnz3/fjkERpPW/fGxxxcL
	 Hizf8h9mW6PuO3Lcts4kyGV+A7FTDX98eNHlNRgT8jcLM0g/E4pnZ0GuGTCAg4kW+f
	 PTw1yVQEo5W1yyWPz1uk+pokchXFrEL3ob0qYSqmn3I5d8um4WcQ3DmDh18lz/VWFk
	 HdHhyYsC/8HIJt5kyJuzzdvZdRKRF7qU/yzN8x1oFnG7AmJlF59UtwUaZb4G8NbV+K
	 o2AxuMhjGzgYsv9cVildirZ4AEtt4+CdRRtDnLGQ+HHVeoofcPuBDbOTl/RyxuuUWp
	 bkUR4cSI5dTbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94507C369D5
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174574019357.27237.7925486759685301615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd0e2d84d0546cbfbbe2182cf429c0d7ed5c7ce007929ee6e4e8dd4d651c5bb9
Date: Sun, 27 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745740193
