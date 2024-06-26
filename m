Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C41018A92E
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 15:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719414203; cv=none; b=m0qy3qhwISNpy4fAvCI9T63GTzuiSg6DI/Jep3EccQOIDZTC5+qbxZHsHjKPfAm3Wi4LQi4i9VzgxOEkhtW8D4scWGuBnQ6JiXC00FLjwi/3XFc6F6745bnJVt0jEj2dBgb5l0hcbhxDuYVoUP0odBQV8psfNaLEvJAPAO/dCvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719414203; c=relaxed/simple;
	bh=/7lG8Vv24kq8P4lWOS1r/5a3g6D/rR6dIQZTAXlIe+Y=;
	h=To:Subject:From:Message-Id:Date; b=ltQBW320WtBsqdrW/7JDeMh30gMY4LMqB1A7QNiDcbU2j00iS89zPtLcjlDJ7vO4MnyW+3Hw8YmLiFZBOE733FJVA3gsXDGefqbFGdUFad0i0Tq+9kRC7+e5cCHb/zoKI7CVREeKg4PZx/X1Ik8/3n9bxv8z4X8W+QvJzRtvhqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CM52jalD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CM52jalD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D990CC32782
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 15:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719414202;
	bh=/7lG8Vv24kq8P4lWOS1r/5a3g6D/rR6dIQZTAXlIe+Y=;
	h=To:Subject:From:Date:From;
	b=CM52jalDXz/u5GXii1FIfGfn1Fe2Fg1imqbhvZn7pWVdEKWs6ZHR5lTlBjS6TxLqO
	 ugu/WYJ79LLlqwr2z7NBTkmH9vog0iu+wJkd+5VSSl9mHg2uIaEzcaJPNG03DoQzAi
	 RQueyBEVbYYXjuntP666dRpoZ6admNhfMTLOSBdC32s1d0W7fQqaU9kkw5pVBnpoD/
	 Jlb1lnQVw9KU1WUIXDBsonn0ygzscM/e/eDFXbTcdrKGvTjtsuAWjxJUOjr4iAobSm
	 75ntu8dOFjtWVVojewZXUzvK86E9pT3j/uM9KkWIJqmoNvTUWTRrpC0uYKZaDwdwwO
	 /3ZZ9RABJX8rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1615C3064D
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 15:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171941420278.18572.17728427736664458057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b87007431865f578241d936db927301a9db584d99993a76207629828475ac91c
Date: Wed, 26 Jun 2024 15:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719414202
