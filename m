Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477CA10785
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747711195; cv=none; b=TO7qLxCBtAFTeiC523d6mEgJlUD9bGTsOYSlgSWDwi0e8Yyj0BHyEQta7J+M5jSytNCq2iylVbjk6t1rpagl3ovg/ZTarEIxbFDgTQ2OUq2AtAVU3kLS7TKJRSq1o12zIclmesmdQkiiKvJLPq0GpxUy+4S1VTq7Vfs+YXR4E1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747711195; c=relaxed/simple;
	bh=V5RTH6XhJulgz5EpmV7ekNT+EEKfh6p8M4B0Y6Z5DUg=;
	h=To:Subject:From:Message-Id:Date; b=om8hiDev2I9z3ZLphiL1mJg/SLKYTRIpR2avjvzGvspXsqv1+w3Rz5zZ4NFtEZZOUiXe+7O5bQ7l/3QrxfNBNhsbP8Wmoj+6flAvGmVbptHt6xc6k7/xlN0YTWTQbKlVJ7kzZaSuYkR7Sc5ySne4F0u0fuahCACJq3+hh7MjkU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOWfjg1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOWfjg1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19ADC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747711193;
	bh=V5RTH6XhJulgz5EpmV7ekNT+EEKfh6p8M4B0Y6Z5DUg=;
	h=To:Subject:From:Date:From;
	b=BOWfjg1hGqHGL/it9wShTVuEYOtiRHhPszkMaznKz+o98vpkDj91ZyexVjM+9EJ5+
	 KQaFHeVFJuJ/GoASJcitxixMb4DC6B3OxCyyroRd9oeSGt92pH2KyjKE3iG7aZ+VHF
	 pgWXAfwhE4Q6GPgrsre/8DW7WUNcApMl0MCNfyUxxWfMjjsy7wxBDrv7MIfMSBms++
	 YJUtzAWugIsXW8i3gwBTh3uM2d05KqQRCBU+F0cGcB6XkF32/p+V6bIqYtWbgd42s0
	 8F/iXRTECSduSk3q6/jEnTrVX07hkcCGFge53XYsBimxX/vPVRbtUjsKq4iJIEmYaz
	 cFKg8H+q+S3vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F179C2D0CD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174771119357.24212.3333643980703964774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e6e9160d3b9a95ada8259dcd252bfea5125559a5eeadc87331c095f91080a50
Date: Tue, 20 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747711193
