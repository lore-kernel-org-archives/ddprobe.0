Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316811D54D8
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745230794; cv=none; b=TJT6IjW0EzmLKigkxb5mXfR+aK7kW5qTnnsQmGEM9zSCzHPcinjBcqn2/ANyftmpL+ce2eJgJTiS7/PfqwGFvz9glYMdZHv0IUrwkeUoX5MuErBD9V73ekGj3/U3KbQBvnAYsBWnegDXj6oQ1q6DNBLgA+eGyxsqP8+kve0Ig4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745230794; c=relaxed/simple;
	bh=T/hTfrh6i8VTgpZ1W/uZrycJeLb7048u6Ym5cpaDGZ8=;
	h=To:Subject:From:Message-Id:Date; b=TsLU8Cy/4nNEDWyGTuhueF8fg3/XtxbRy4VSnw2yUpqREj2DAwevJvOLs6X2hkRIl7l20UrSOIH36USYT+c+5i7D4LZBu2vGOL2Jz7nELfy2GgFndiHri5h69/sE4nYCyykIjDXoAhBDdu++9MnZzjxMZfN8MnQCwsIJfoCZ+3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOYZSvSl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOYZSvSl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77FFC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745230793;
	bh=T/hTfrh6i8VTgpZ1W/uZrycJeLb7048u6Ym5cpaDGZ8=;
	h=To:Subject:From:Date:From;
	b=dOYZSvSlEI+UylJ03lOeM+YfvEgvdvhfRyGvjIO39/5pivBehJXpDfh/806LBfTEh
	 t89s0/kiwxg79PsDQVXLZ2fwJ8fldX5UkawXqpDURDrzvfEOeU4Y0uxtxnVKXNtsAB
	 QIO0LhgSqN5rYbp57Jh4ivF+JLpAmUjaZj7Ma5dm2y25jRU2PDzj6cepLzsC5ru9Ui
	 hRJXk2OKKtnGSgq/GeTecUz6Q+SoD/uqgdn6RDYIIgjUVcLbGpH2Dr2oYuARG0fdJ2
	 9NW/fETNmaiXVf7Lv5PSGiglvD6Bn3rrsYMve3hojmHfrVz+vkxzCx88hmRAzNiXLN
	 REeUbik2x04+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993DAC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174523079362.23480.14644752666311145004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1a9c457aed73c0c456202947883c59c07034e7069ff2dddebebc79bcc12c27b
Date: Mon, 21 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745230793
