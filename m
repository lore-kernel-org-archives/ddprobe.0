Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CEF30100E
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 11:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783423714; cv=none; b=cC9+dN7P/kYEh2ZDTlizI/tF+4R0KwpK/HM2hp9pO3vuXQTX5TIUFkshlHYV+6mQO32SG0EDm+PcmHxfDqbZ7+WVz6p+Hs7HKwyao+zOE89BNffeUWjhbAVGrxU5ZJlSZvjarkbE4LTjiuVe0SH9eNMxRVRnkEfs1kEmAidhWnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783423714; c=relaxed/simple;
	bh=OpsxeFf7wif8NwWHIG6asImY9fSrYhmUe8XX5IHVVds=;
	h=To:Subject:From:Message-Id:Date; b=lf1PEU00SVfCKs26+NE7G57JglC6OzWQ6DG8PR/L392+qNtP5SuPaxbFOCnO50oTGOlU71T48FYHCSgnXqS1VxhzQi6ZmX6+M1IHF6sgZSWnw5Z5baze2STA6HTBqEFdJ2A+0tSgDyyCSwLiR5G+TOkO6yuNk3tnIRv68X0GAC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6Cjakme; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6Cjakme"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA255C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783423713;
	bh=OpsxeFf7wif8NwWHIG6asImY9fSrYhmUe8XX5IHVVds=;
	h=To:Subject:From:Date:From;
	b=D6Cjakme+ALQPQbYpMgJZcyYoE9ji0saUB/lNgs2Em8+GQZlwTeaY11tH5LxmpQO1
	 3DIWi+R38P0/6kphrsjB3iES1l9D4IbQV1d8sPhLt7reM2BX1Ms6v/Vjaqjc+W2IMR
	 VZ7iz0HL6k2NQp8Iw6O+WycBhPK5lsAUicIzRWxfmvotsELrcyqht/bjVQTDvK0o8B
	 AL5jkrY5ppqLeHyncz0vJwfsQjRcSPQv7/JNjBe1y9ZF5GENkOSybkLFmNqMHQF5bx
	 Vs+2Gh7TUHmIvMnXyh/9Yt8y8Xw6U1Fg0BNii3l8QaJQRnp2i/VjX8Te7G5iUIoExP
	 3Ovw98mtDYcjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F6EC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178342371368.31770.17798973282302423056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4547be0b44fd9b0a1081d181a6a4e41b57f0f00a838950087e1e5beabec6867a
Date: Tue, 07 Jul 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783423713
