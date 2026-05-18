Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206D8394498
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 05:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779081636; cv=none; b=sRIPGGTnI3lw6ZkB3EOmnMNKsq7BCaxYk1uhB26OVfyOAX5t69eyFryYovVJqaefe1ZdTQPlcAvYWYIxVDt+FyVgWI1ptUusLyVvSB7UXcL2tC4P/6CrojziaaPopE7IBA0nSkkZVO+wD/10fEfCjjSibv3upCMXiuTj4NGafRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779081636; c=relaxed/simple;
	bh=emodAPTlhIs8WmDgHQEpjirDLGgOxH3j8tVeOGSV238=;
	h=To:Subject:From:Message-Id:Date; b=MC9KRgEkOk5QP8Xkx7qWzfEqQQPJd/pbPEcOxXIwOeHsW715SCZMBnwIU8l4uFQq/K4a9XwoPILTcUzWMgitjCD5iWVdFUEFj1sLTHH8U4qRmRMmnxdEVgfVEPVrgV4ucdK901PZBQ6daaEX3MuGKhPk1Nxnp+UhVJZ9vVufvMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jk7NNhFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jk7NNhFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB15C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779081633;
	bh=emodAPTlhIs8WmDgHQEpjirDLGgOxH3j8tVeOGSV238=;
	h=To:Subject:From:Date:From;
	b=Jk7NNhFqq2gQV99FOisGEeUL6vAd8MolVigb5CZwaPdNxfTwIBG5sHqV5ZIgkGPYw
	 Ah0wx6HeUWcmCOtKZK8vZQYEGX/Rqjw5mOyI4ZrKaDiLfkZxYSXQFaPY+UBWUlzVWq
	 sDhWP+V/LwlXqjcbUjNsYeJiM6jAcWrLbvgbxTgs4T0TlydAhPls2IgyaDiOtGgjr/
	 O/AsU1RxUD2rE62jouLvlTRJ9uOiDpEsvsqcj/cdBNLYArv+YWZi5dgElPkExzOUym
	 RakgOIp7DNIYcJAdhI6/6mdpafrdMtA9aCOwOZqeB6q1/O9K4H6b5qo2TJj436keW3
	 rTwv4NjOEkr1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9980CD4F51
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177908163374.8535.1855902761639857846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4df1bfb4bec657b83b1405222fa16bcba5aa4fc083f08bd891845f927b6a0d89
Date: Mon, 18 May 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779081633
