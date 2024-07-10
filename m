Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CC629AB
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 07:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720596383; cv=none; b=HtmAF0xeWEfAAnI+/nK2TMxyEaHum08fCstogCbD3Xn5xHih8H+N1MTukYedya82kOo3Hz55z2Nc0q/tBndUSUKJX/YiILBfoYssgAzlLmp/46Sbxl17L+rzXSeP4wJvPJDY3BiPHnfNwouqn+N/KpF4StfsJojlSjvFGnXUegQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720596383; c=relaxed/simple;
	bh=DiPo32SuSvwr2xT+wZ82G4oeaJDgqZAooRedxERK/v8=;
	h=To:Subject:From:Message-Id:Date; b=EFZ5JsgNAzthN8uUAnYjzdjmYMweFYIBTI7NYNXUaqco8hzL8hflgEhm7cHiz3MHEzWhYkXLyZS7C/JcsYqQ6oKxE60//GYVGvKqvPhd2qfKVP+3ohsseOGj2YKIV7UhE2nnelEJHYYBp1MSBMGR4CNeYTQqD+q6JvTQIZZZf2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMCHA7JM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMCHA7JM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF220C32782
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 07:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720596382;
	bh=DiPo32SuSvwr2xT+wZ82G4oeaJDgqZAooRedxERK/v8=;
	h=To:Subject:From:Date:From;
	b=YMCHA7JMUM1PUPICEanOv8dcwskPpWOengpvQNqsO77zvNLDKvne4anKCoVKrwAGZ
	 lP7ZEUuBZ6DOpVN87wZ9+lkBsYt6WIgL3jAiBGABq/fFJj22XJUH9Bs9MixjtZ37bY
	 mgtAzvypIqb0E4yv4pMMHRyBvXvmOR77mn+vI77MldBnJ5Hi8cUBhQHyzC4LUwaQBV
	 hZVUDReJF4rkgfgAaoAdQPDKicLUHh8xehcTnHUKmIgmlcTXLVvejkPFy8EyUIam6w
	 NOKlk4u7Ruo+q7Ff+N5ExEgt7GEnHT4kCC5lizk963uf3L6L0OIFZnWqnE/voLXHsu
	 Lw5M+Psw1E0Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB344C38150
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 07:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172059638279.24310.12513849980914480767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4690b8dd49d5e45371002d86d618086243f6c6041a41877020c93ebc6229c0d
Date: Wed, 10 Jul 2024 07:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720596382
