Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2969E79DA
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766948034; cv=none; b=tCVNmy8Dum0Tho9JLYpYTWRnCq4F54v+iB9QtPwSJHbehgVA7b0bQyVPBwlFFUF4iARisDGj+h5p4V8ImoeiHY+yfIFwizDXSL8ADbW0e2si5Cqh78dbnrU8/VukdF59yFDNxychTyZZ70IvsPOT57+1StsFjDFVp4QFZ7cYrVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766948034; c=relaxed/simple;
	bh=Eb6fyw5S0MZ6A1WePbdeEMni7RyJMarXnPETRHBz16A=;
	h=To:Subject:From:Message-Id:Date; b=rMPPk+HPbjZbeizl4OcHbS69IxD3KFrXfc6ATCS6ZINHoFmzBXBj+2aH+BUcClpLePSvtO/yEtbmkIIDbusgIiXvPxZRo9sUFvgnZJEkrbGJq0M7iJkpKUG92kUoo0bxy5I+A3ubxKVui8ljsn5RTm2qL0cywY82E4AmIlo06Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoB8/oW1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoB8/oW1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1C1C116D0
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766948033;
	bh=Eb6fyw5S0MZ6A1WePbdeEMni7RyJMarXnPETRHBz16A=;
	h=To:Subject:From:Date:From;
	b=AoB8/oW1bVZmkXvQPyfDzF3r10OJ7PCP6F1yKBy7itvIhYo16UFhFCU0t6mzOxOLm
	 gPOUPPe1pbQylqdPMtZHv5IDAvQ9W+L8As2oI3eMjN+wkvpnfd9qR+PhKZG6xy34+i
	 /Pn7ufSy0bx3LvyWVCks5YW3HaOsUr6DbeUu72oS4eBKDUybC73CJdrxPysVxhyvQX
	 QMNZ8qIYKw47ETaiSScCq3EEr2nGFEoJKZP7MFRfnXqgZTzj/pOLua6eYXmJTm3FOF
	 Aeuh6X2mejNr/ql48OsTwYYKcijwGcSs2pHZ9I3IyaRR51h2WafyOuHfpTTTm2YI2R
	 QQZ2TOBFzPR8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C4AE784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176694803358.16112.2911227744502389033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34fbe5bbbbb2d51bb68b8b526b691ddd3701a22b570d9adc470d2d4676083ea9
Date: Sun, 28 Dec 2025 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766948033
