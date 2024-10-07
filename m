Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A23042AA4
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728275154; cv=none; b=jgzOKSTcOeZTOChGQg/BFzX4N2ENqlZe9rl+Hbcsqju+5ETinxbNbgE8W6iA5ZAEfoC6OlCr7N4NRnRs0LZCeYafsNq9wyH2dhYbKbnAI2fn1h8YqDKcfSdK6kvsRk1QSh8cl6cc/Msk/pyrX/wktaIjmzeFeZFzQ7OZCi0Gt1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728275154; c=relaxed/simple;
	bh=3sh0wZiTGlfQTk01yBSnPqxCU33SCnN65FfVBMLNCQQ=;
	h=To:Subject:From:Message-Id:Date; b=cNajp0CSJZBeOH0rGjorfwByVqFQ96bvR0VOscckY5wSE8GNNUgtg3c59VzT3LEizmgwpIGkGgwf5DhE0haLkBbi536Wslup01P7tJ0m1vloFlABA0lK8e9ydeAOerkiDesD1ZlvrrZ4FK2h0q4qnerL/wyqeI7LC0jnw7+sptM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxvkFiWc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxvkFiWc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EB2C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728275153;
	bh=3sh0wZiTGlfQTk01yBSnPqxCU33SCnN65FfVBMLNCQQ=;
	h=To:Subject:From:Date:From;
	b=lxvkFiWcTBuC7xgyStubzjsuMAmmBF2z5M0+cT/2N3+oOBxSI716ulbnGH3pgNchA
	 XSYAcRqe3lx4WdGAiGW6Nm1H0uwu8Vf4AdfLbzAZFQoOfRkSEQBuceeN64UOMZ7jbo
	 DePSNEjmtbJfGGDusbi/1+H7MwQhar7gCzj20ZTkX26lxafgtbd85wXl7pQEitObdh
	 MnCNs6rqi9hJFE8ofMS8vBYp93ETp8bxDMtY6hgoV+7qT9yaZApTOGF9kW5ckWnLhB
	 IO2w/Y1X4wXTE5yKeKEiACxie8glOMGQ+MzbYcGz6ZcZp+N0MMIcwpmcx2P1o7H+e2
	 uUa+IN04P237g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90819CFB440
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172827515358.5026.534135030724847942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e29503cc218461103859e0dcedb9b3d24dc438dd01cf9ba4e4c6353db16bcb
Date: Mon, 07 Oct 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728275153
