Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB134A1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752283194; cv=none; b=oqeQJar4FSuxbTZ7A3c2YdEhj7BbBjcFx+S+f+QCVXz4yj0mVI5NGaoDB+3NE4kgl/ikr5nQNeyXfjDC6Bz0pLUYOiMG1UesCpniJ2+j8KGH/W8xfy5voHJlOiy77vWJt0l6NogahHU1SNliMQ8Vg5ZmFYNDtd9LfQWi+vp20x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752283194; c=relaxed/simple;
	bh=gXJj3WZcbcpZnHTWF2tkIPWHpHDpThpr8iavJSnqUao=;
	h=To:Subject:From:Message-Id:Date; b=Zjsw6pn9AKLEaZoWi0eUHXP/K30Ux5MmaolaASl4ufmxvvpWa26DuNcIu+3BY2UjquiLBeHnYxh1mS0bmJ4wpUaW9AtkPgLvsvPLZNPVET0QUrBAKJf6h3nSBlhoDG8V0rfnKbdlC6hw6jxCpC9gjn7YY3HqP05VJUOsS3We/BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWK4WGWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWK4WGWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04F7C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752283193;
	bh=gXJj3WZcbcpZnHTWF2tkIPWHpHDpThpr8iavJSnqUao=;
	h=To:Subject:From:Date:From;
	b=nWK4WGWSDsl5r/gyXiCYLHImD5DBd4xJgaLfI/9uSEMPzm9z62O0HCa9judgemYnp
	 QYFmDxL6xqwZtOzdYPB9Q/g9r2HVeYIIZF5xtoI1MZ3bci33TFELHernanE4ujTWvp
	 9MHKDgf/HkLpKyXabFJ7PL0q5+uoW0dytFZKCXZmdDtNAkK77Ja3I13aG+m5fl71SN
	 cUBaLhSr9vXThUm5ZY76YwDI5vkHcHgdTW2M7/2pqPEkvKrOGAknpsCmY9cXcZLAbq
	 7AG6uquyrk35mQ+TLWUCbxx/Mlqi6NslsBjnMpGglPkMqy2V57syobgEC4/Yx4FPJ8
	 yJWtYvNeNs2tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1A8C83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175228319357.30760.6359495154358939365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45d1a343247ea0e2f6542f2cc9598f69ddce2309446befce8970bd3e27c34ed5
Date: Sat, 12 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752283193
