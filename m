Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A190142E77
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728938154; cv=none; b=F64ciyuAGg22efe5iAnkfuItu6ZnjotoLL79zAAQjmoxFrZOq89qnL5INMzrD9NiOFTjHPakg+5tjz06/81StLpHjDi9+v6cdEJcbqpuQE2XwVq8U4Pyq+zQ8VhRRwrBj3CLfE5edivIMEjkvuBAK7xlSmSZNS3ab6bpBFTn7WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728938154; c=relaxed/simple;
	bh=IZKurIU4cwsp2D9g/w1WdtL47QH5UqUtsrawg0Bx4Cw=;
	h=To:Subject:From:Message-Id:Date; b=Z/SK76E77KbO8AgOJa1YXgd3CLT/2uwasaK/bXFlwPwxTO/DDI9Zpg0rYsOJhjA+qWy5OzFgbsOscJohBFgdGgcnn3+x/dTW6lZV0QbXAyITZywEXI8fBmjdUvexmjHvqeV89vv/DL74jivxsGXASwh3XV4OZP7dPtokFCyfeQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7BKlnpx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7BKlnpx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7942C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728938153;
	bh=IZKurIU4cwsp2D9g/w1WdtL47QH5UqUtsrawg0Bx4Cw=;
	h=To:Subject:From:Date:From;
	b=h7BKlnpxlC83ooPoUwhcIArzUJXZrlMGrD+4MK3u/2X7OO9CJDeIAR0RX1TPuhlbn
	 VyRl/Fq3KDriQBYDogIYvnBQjurMd6IEZBVKRr0OQbk2LbMZicVrLcP++RoedlUMcY
	 UH5vcZibEq3cI97hVaHA8Z2HC5ZPg4JkPwiRswK6+Hf/JoGALMdmhzGBCm3rjfIK3m
	 WgRgCkVi2idYOMinkgtWo6qcgEl4RkqhZ717aVN4ocl5XJzJeIKrbme5Wc17b650WE
	 vmjzAO/xmaRUcG8xbiLkOLq6CUMJjzHC4TbS1+LoMSi5J58BX/KvfwDDb4vQFe78bT
	 7lEPowwnrD/4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98670D18144
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172893815361.25035.7735050704525952276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d8df37dce2c0b779289d21d86ef710a1b35ebb9dc1674c4ede68b481dc4bda7
Date: Mon, 14 Oct 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728938153
