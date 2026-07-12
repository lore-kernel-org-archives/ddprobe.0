Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E63449985
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 23:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783900714; cv=none; b=P5NCX1OHJNvZu0XB1Kx1yY0erfczjJLqGfueSxcvanaZlNfMDzJuXk/9m6VsbMYYSWoGQi5YsSMjPa+nttMiqKtg7sqKyRm5tIpcIP67XkGR6kaaTSRUAAxY0VuuTGOR4tw+YWWT0DaPAFuiPIbfJwkzipkQW6nThyPaKRCoZJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783900714; c=relaxed/simple;
	bh=WAZEmdGKo6mf7HnNSDAJs3TW715j3E8F0lyTBQ9/vBg=;
	h=To:Subject:From:Message-Id:Date; b=DPUu6yzAes56YNz8VCZgZttwKCROFsPNOD8PtO6IUqLCf/OJQwwUx+kqMEnwUHfQvWgrZztD+i7c5VhWB57kXf5Rh4tvpOfrLSc9dKsotCRZQA3XqOWVY+MVX0X6pw9IrCsZHZbXRJ8MFJZEX/BFR+S5ZgFyox7SNV66+JeiSJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drrJQH7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drrJQH7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05EAC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783900713;
	bh=WAZEmdGKo6mf7HnNSDAJs3TW715j3E8F0lyTBQ9/vBg=;
	h=To:Subject:From:Date:From;
	b=drrJQH7vth7RKVK0OsV0khvFBshCYKyh5IlNGY4LmLL38ZWfcz5U0LR2+hzKmYslI
	 Y6hPBAeoJhIUx92Mmy18ErxNq+t2/QaAazS7aFt7WWiISrrkVaZ7v/7+wJsqK2vkAv
	 O9mSAyntdjwTXGM5NCzaLMGdt9kdsbc+sjUOMTyxSXIdo0J/5hbFA/QnlrH5dgwV0+
	 f1EDufbutMGLU9xfKQ5JRmQwLC0uSD1+/HclnGqUIfg53jHBTIwAGL3WRM5I5WBvBv
	 l3Y0BdVX7jnyEduu6LZ5cbBOXiFn0fVrvnhFHfXR5a4qxushttmm5hF6UF20iALtML
	 FyOMXHLPKTAnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFC0C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178390071368.14951.11707607640348424839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea3d77a2c17b328e81f616ebec09e86351f020d618b3f5cd00929d2f4a68bd7f
Date: Sun, 12 Jul 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783900713
