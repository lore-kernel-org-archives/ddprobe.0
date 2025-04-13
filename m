Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A78B2581
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744588794; cv=none; b=O04ls08sNeMfrFrzVxjqZejsZuXObHYkriSa7+67Cpo6XDatgVsXBMl+UZ1+RWAgIfS48Sb0CoNH/5+k4Zj7ineVMfVBDrfNd12l7xmljpyxqMZY850LqY5CXwo7O8UUpOrpI8nOcxtn7b1Tc5fDQH+oAUlC1Y+pBMm2VHyOCjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744588794; c=relaxed/simple;
	bh=kl4tm4CS9+tbBlLXbY6tY5AT41JHapYT+Vdtza2ZwmM=;
	h=To:Subject:From:Message-Id:Date; b=o1lz1+cdasMbJTewqerz50fLT+GDdMXNI3//a8uv9tGdtM3cxMzJX6v9VDy7FW+V0QfaUE/ErIdoA8sH43yCfop/xxBjgfAsm/BaOWTDYuUFZCVkDqefJFBeqPDCdaXlZZ32k4fKeJTVU09raeTVFtbLtOQ0G5sDF88zUQGIsg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vdy42jHI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vdy42jHI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A492AC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744588793;
	bh=kl4tm4CS9+tbBlLXbY6tY5AT41JHapYT+Vdtza2ZwmM=;
	h=To:Subject:From:Date:From;
	b=Vdy42jHIAHrBU/CpI2J7N9GLKdSOSSFNgX6GEZv7NFm60XtHKm9dJKlDukWSmNnV/
	 HlY0MxUgQ6iR0v8Ez9NrrO4JevkekFMTpwVQDN6gLlScwlV3ZFcxoMAFLISZdHr1GI
	 mNb8OPCjdxQ3mRn2zOUDWZScMKZC2Z6rWNktV+ndsVgcf0SgR5jIXYR1DpiQEgC4HD
	 POGPk9AUmn9xhIQVZEWrt7JIx0nGFiqgJpNunCoKyW8Is3RH0hG1lDoYTt8KkLGmEl
	 O9HtZWPWoNXkiRlgGoSRcqkboxmAbZpF23aneEQGDZu7ACTLcyX4NCeVyqOfxlrtpU
	 TTHvPe6rP9Aag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90613C369AE
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174458879358.29608.5532550729386673207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4b419525eaf83c6f98be49ceba4adc2e9b670998860ae23945180d81a31343b
Date: Sun, 13 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744588793
