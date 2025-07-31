Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F322EAFA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753924194; cv=none; b=fUGYP+w2J6yBX2ZgdGiovt/TAcuosGjQoK2o1ZzhilKlFfDiCkC0VgQBaT5CiJaxg4lncwO//ACbx0YUo0ZCeEcYRG5Cn5/bAnVC+GYdiW2N4uxGALGaaBmoIrqMyT64esavSB/p9UmNoTTlDLRSboqXjxFPCfFgOiKIzYZ9uKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753924194; c=relaxed/simple;
	bh=L1RzvAlvj8s3TE7TG4wQoSo8wwTT31fd/8glAqvPsvk=;
	h=To:Subject:From:Message-Id:Date; b=traHgA8HVKkyNM09XpwKWimIMRk21o0ul5OUjHTfLOnyjlFXBMrelKv5GbGbAdWNJaNWw56A8o16/VjRFfV+uudd8PsWYkEwy6IcoggLqZn53oQ6YhAZ5eMNMCLbNuFmgw/2xaDB3taCmmWSL9QPfItw49x16W9mnBtCriGhEGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Unnidwli; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Unnidwli"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C460C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753924193;
	bh=L1RzvAlvj8s3TE7TG4wQoSo8wwTT31fd/8glAqvPsvk=;
	h=To:Subject:From:Date:From;
	b=Unnidwli96sOh6v6DUqYhsKrPfUXvbQKS0r1r2TwjBfTg1vk3h+WLSmD4A8sT6HmV
	 5AwTU7kHfU43eCf9MroQAvJOot8q7VDUiVqQGEXQRwF/WxtjL+B3wiRIf86/RRH2U1
	 ErTrhe1Ymb0dd4u+X4JDWziXSaTEIb6d/MGsCN2hVqbgOJfoqWd2KSDvJOj+io8BTf
	 RtEC26xSbW/brvfBoozFmKkhZuaFzJfKVZgbqnmsJpbF2sj8wbwtEF6+8zAAnSnpCg
	 wJHkE6oOCl6M7/ByIInLUwn9QD4Pe+hRJB/hrIg8M83d9JnQAYJG3FojUmjAm6nrin
	 qY0ZWi5CrZFMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1E8C87FCB
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175392419357.20061.12669043262454903128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a52926fcc85766839f9599548ee4ede71e91ae6f896628171c1b43893be68715
Date: Thu, 31 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753924193
