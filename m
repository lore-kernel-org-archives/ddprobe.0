Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCFE29E0F6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 23:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779147034; cv=none; b=foOgkGILGjkFCaWQSb9hD8vkj2WZz7dXeJFpymhj93/PrMZngoUMjMEqB8AH8oWttX5sssu37B9NBMgiZwn/VJfQjxBAHkAyGnxtT1GJBJskHX6rtBv5PDOtxS5yVlmaZMKjb7YW5KEYrPdPbsUcJjS5fQWuNnXt50Ik6BQxgEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779147034; c=relaxed/simple;
	bh=GYAmL0L3wixvkha6qsdmbsCqo1y8sGH87MznICiT44g=;
	h=To:Subject:From:Message-Id:Date; b=HjybVEZWFd2bjMXkY9ItM0+hazveugt5K8O3ds+HksCw9BdLJeYduYr+bxg60Av5BzpmN/r2OWcaG0l8YhWXtxgdt3NmfZ9SelcEgiFvi8Ae4rZ7UTsnp7tMGr0i95DwnK7QVvtdJE8oy+x5vISv8rRV+SmfmCAp9Zg5kXw4mUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6Fatk9R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6Fatk9R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA60C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779147033;
	bh=GYAmL0L3wixvkha6qsdmbsCqo1y8sGH87MznICiT44g=;
	h=To:Subject:From:Date:From;
	b=P6Fatk9Rc2aFgJF8HvscHaMKkBml4qeyk1/y01Wv4bGBKsmkEEj4DjR21wclMy/kJ
	 wdDEMSgceBRfidHqEtgrfg7z4x4fMfoWc3xATlQPylsO+MyApsMqeeuN1uZnpmG+pi
	 qg500JcmOBlw+7QM51aQVTOeO72/6xncV1e71UcQTjAMHISSmn4i/dramI8ky7jSlN
	 /atsYvdWOjO1dGXH0HVjAyZ8pylMxqpcTR9UpjUDv2kkiCNcJbk9TkEuISpzFQkOjB
	 SwuarF7dvwgb3YssXTJxMiVCx1NUuqosCfiAhWRjeLBOpQXPHuuRJoO4aEpwTO+Gtg
	 qk7Ir80LmWH9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B03CD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177914703368.19804.11961795592219046457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b78eb784991c08a2a223b4c66aa3046446f12bbbaf602a7f87c6a08e7f2ad79
Date: Mon, 18 May 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779147033
