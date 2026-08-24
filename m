Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A1B432BC1
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787588434; cv=none; b=D8Mw4psyFoOxoJ1sjZLlk0iznH68kYw23TwEHLZ0ZXySYum9j6hm4Y8sg6gA4ee1d4XMHdb339g8QadlatRmndsCeC3FGmWioZFeBWbecuspGkczyLAEowjh3PA8ne3T+gmTS9GhggVel2D/KpVY0tljussuAOCL4ukPHOLtS0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787588434; c=relaxed/simple;
	bh=6K/K0WI9cflAy95fAzHiNoUtOvyJdb6BwnOJxIy0Knk=;
	h=To:Subject:From:Message-Id:Date; b=UjCr0I0aE54yY6EebIVD7YjGO98+Sr9Wa9ggBrxIJdn38HP2gWldFt0KGB/jn2F+wynNKTXpL+jKgCFR6DehDhh5j75loXBb/cQgdk7o1LqNbhSAM3AwL1KdZTiv4wI/FC2QzJ8XeZKp5xa8LxKArMCd0naY5jBNIhZaYU4M75k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TY89//9P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TY89//9P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AA9C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787588433;
	bh=6K/K0WI9cflAy95fAzHiNoUtOvyJdb6BwnOJxIy0Knk=;
	h=To:Subject:From:Date:From;
	b=TY89//9P98L+EgM7b1UdUI5tyfq69uUG1J9S7A43TodESqZTUPW7FxmvRu3i4M8/d
	 bH2CAfJqMZh+n4FTR9VLh2z2o90RZOEGhbraPUHpXZdBTO7WZCxkZ6oWQZ6sJ4DT+l
	 VB0I674ONi++VlT6+Ppcjq5Qck8L7i9+SfYo+7knWSn8AfpdNiavrvQdv+lADuCTXv
	 5n6BuZVrIExV8jCnYZwEC/A5Ve6jJxDeFVdnvzPW95weQBqa4xT/hGJ509drN3ZyzV
	 WjTfS8WM/pvNvy5y6bOQmMs7znWFe/D4ozNVKbw1MJA1bZMdmgEUzJU00IMJ1wrsZs
	 GVLibT/iDUwtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0C5C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178758843370.14173.6614603446448019176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e36d8ad0719031eba8feabc6e392fd873cf1ef6b1e7f8e8e7e9712eefea073c
Date: Mon, 24 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787588433
