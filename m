Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363985C82
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721442354; cv=none; b=Mr0O4kNxgYzqd/DojZn86O2ESNdUjbOBAh6LZCghPZkFEkuklNFbCkTn6CXuspSzlDwSf/REmDNighewYs76OCcbvirA0RnPcykoFP9mdg3tG6Kft4boq956cTcqJHYDKvYCg9p/6IjvABOSHNr3KlpWOrz4thaCMB+rS6EsCLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721442354; c=relaxed/simple;
	bh=Mgs+Epo/TdwORnea35r6O0M07VFEqjlYt+m1QZ4LayQ=;
	h=To:Subject:From:Message-Id:Date; b=GZb7Mkv4vpmFjPbxTA9nrjh68nbpyH/MI2Y3wXpmkXy+xRXT5Iw9UL9hb0yprkgG9NlWXlw4+fEtmTcwW2zfDkK8NB3omBKfB/CgQWY8my7A12wTf1irVdZeKsNhtENEoW0ugjvtJUQYbLN3yhFSv5MuSDVK2aLb9zvxvAN4F78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tw5f/jqa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tw5f/jqa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6ADC32782
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721442353;
	bh=Mgs+Epo/TdwORnea35r6O0M07VFEqjlYt+m1QZ4LayQ=;
	h=To:Subject:From:Date:From;
	b=tw5f/jqa/YoBF5D11jKtIy8BzZ5KoQcNab7O7OoACDM7ylFnCbjDT+wvwWCF8yzH4
	 qGIK9T4JS5UMjI1NLT8YBK9ukNy/Zgy0D3LlT0WgGnpzs0tMNZ0050Z5HWMQzNe57I
	 SG0vRl+yWh1WXuCoVT+QF4u0UlMPQgc9kn3HM8DEpewQmkhA91M9t5FJVqrI3Zrltg
	 GnRI2JYoISttel3PtVAVrSUp3Hdvgbr5VPGEFrHUVjGtZE+q799W9zsMFiRIcBRBZS
	 OyxmuR/Ynj5v1pnJlcMkIKNZqbu8jCwUpobdP2TzhFPLTgWx2flc9WnJZyAYJ6bfPI
	 TE8cVrCcMvKxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C680C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172144235360.28134.7784915359522938888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7d0fde0019285fe9d94c43d06c2b32c361d93f392deda27c8e9e51b4307f711
Date: Sat, 20 Jul 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721442353
