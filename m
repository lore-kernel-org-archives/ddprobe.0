Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC502BE6C
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712423297; cv=none; b=GLWw2F1smm048CL+VErt9qerl+tdsaD3hVcSTaaMJR/vuvXPs1kFnmhwaoPQG5nVCLR0posUwlKGlDua4HiT9/kJgb/EhrzvmLlvge4zkPe/MTcu1loevcMZ/FpxGTTTwyI7y4kexMJuzrnVpp51nEH1lHPRuucmY0R09Rqea/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712423297; c=relaxed/simple;
	bh=5dVTNpRS5pqswN0kX6bCB4lw9K7jkKJ5A6mYi26NbkU=;
	h=To:Subject:From:Message-Id:Date; b=o6nfRKmRVX7ckh3R6P9dad8uiBMzeaatBYk9OdgM3FgaWtKCpmsmJZga8crDlp/QjLlAiG/HsK2jaXrs45iCA/DekHg+knGsw5BGUTiEQkC2VOQP6iuMSppZnZb8yyNXsDYkabQ9w2IkohOQSwOj6OQ4ISNoIYZ9tVqzfHJlAxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ks3ILX6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ks3ILX6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 706C4C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712423296;
	bh=5dVTNpRS5pqswN0kX6bCB4lw9K7jkKJ5A6mYi26NbkU=;
	h=To:Subject:From:Date:From;
	b=ks3ILX6yxHNs4gIoicpEVeK0/AtyUpXLy2tjTYsDGWHZ21fp+hUm0gVcqVn8fUbxz
	 K+RgKmPJEdLxrjNUazxJuAiNzv1vv1mQYOmSbNZQC2txAGFJm9iKl93ZJdykYGfznC
	 3il8qfWDAkfxvFgGQYrg/r+J+4U+/FFarA0cvZbS5E2MyzkAQ2/rr4GnWaSHPveuoh
	 Y7yycF/DAgzMvW7utZqNBA6KRXGtEzu5+4vR1lQck3GttsPlHoctmUoNlBV9ei7ARE
	 qTBvN+vd60FLIfWofNG55f9xeCTiur4q1qjQl8gmqazQPqEpPgTwgIWDRWb8DSvrE+
	 idT20LOAUjtYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DE6DC67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171242329636.18384.6147070938783226875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4aa15a56a9d23e380b9ebc13ab800958642856481fdf0254b527c037cbd5eef
Date: Sat, 06 Apr 2024 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712423296
