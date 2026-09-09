Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFC2492E5B
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788921034; cv=none; b=UDAiRVXotv7+3YoUpumxIroIXBepe3ra6uBEF06PSxUTq4Jv33cWs5k1xGPDijXhk3RbBPs+GeamKw4y57Cu6OwwFaHPx5grsGFBfT8cni9+gTJ70Y0WzHsCZrAjBg56JslZ6ZW217GdMlNVsUEJeclGbuV/+KbbXk6kE8kbOZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788921034; c=relaxed/simple;
	bh=R7Vj21SGusXBxkq6ecz7U9hIMZX8pwVuvb4poozSs6c=;
	h=To:Subject:From:Message-Id:Date; b=uvx3UEny5jyDCj/5aA1LEgPsWPlkpFkPeYINfy5lShh5Idvftxcr8g11Cfml4LASOYrFDk49Z3b4oBEnSwsnzb4oXtIEB/gN6PloLIwV/KTBKjLIRp66Wly+UXldGOIxz7HV/fmekD/m/+HN9Xb3hD9iKzcqJ6RgV/rQVb66GSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A77tHGr+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A77tHGr+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF15BC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788921033;
	bh=R7Vj21SGusXBxkq6ecz7U9hIMZX8pwVuvb4poozSs6c=;
	h=To:Subject:From:Date:From;
	b=A77tHGr+QdBfGRpwZJikYJuW9Ui+6E3de0BdByUkqFPt8/yZR5Ar6uEnAgzkYbper
	 oUTPlGaR57Z3d16zLVmesJfWC/ULPewbt5K93h1hJe9C3p4m/M3egFXG22zsXZ18i3
	 L9nhvbSFcMab/XrHAhNVDZ1QgoKg9ZZuRb0YgNnyW+ZgiUCs6sLkgRAcjk7nV95fzo
	 ViBCezE4oGhzAuR3hhaDcx1Cvq+megitqyY+nA+9xrHv+lOxzvcaufJTpdgi3ow7Es
	 iL2P9OdBlkecM8U5qxDpZQxne21d1BnXPhEhyEC0OgxqNn86WYJr7GdY0/ll3qNLR7
	 tWqbDazD1wstA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC67C79F82
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178892103369.5028.18419508377200018101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e82bce1e12d78392c250d36c54d9d3f7d8f11a73112559bffc42134a92292b3
Date: Wed, 09 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788921033
