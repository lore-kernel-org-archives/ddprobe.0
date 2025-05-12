Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C3A2576
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747023594; cv=none; b=BoIwfUYYks9NQCKhdgT+v5qIAYpgc9qlpLazGdhP4M+QJnSxx6DtVWdI6ViQIhmFixk7pEoYHDfXuvirk1D3mPeItiMj11SIJpEn9Nw2HQhMRGNrM2FNuzvWxZe4/ZVi/JFbHACEuCV5lwkpr+WHAKepXw5KTyUaPihNtaI3O08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747023594; c=relaxed/simple;
	bh=10HEZAlWyAGeFD0ri9EA1ZtArS9MdX2x41ClGZCpLEk=;
	h=To:Subject:From:Message-Id:Date; b=dnQxDHNUpUegEkl+V7+gs2g80dnmt+exzhUCIhwfKQApjZ0syRTClMbrD43s2J4pUx4AYT/b42dv19EWvFeT7AgPsF3hb/NmGl63enPwK3/AEC+2Dq7hDXiDrVS/8NWvGm+oqX4f7A3+cwS+lAAq8EMH6T9Mqe1mgef9+6Eq6gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afwTiCfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afwTiCfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B9DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747023593;
	bh=10HEZAlWyAGeFD0ri9EA1ZtArS9MdX2x41ClGZCpLEk=;
	h=To:Subject:From:Date:From;
	b=afwTiCfPum+/iNc9I+QorXILSbKQeqIdBboJ2ris0InZv7Vy0uUYwSOl11r3ic2Vd
	 eWUzt+zSUxy8oWyOaBYTuBKJsj5MbXhpFhMznurSDABaBT7dS8OX1efJ/Kw4qppjkI
	 kwBrt4p2WdZ8dO23VRW+WkH75D66XzAaJxd8+DlZZCQTZBDsfSH+ihsd3feHzBmzQJ
	 Y2d7qkCUQCMASI9iKKQnQ4Tyg4shbirkJ6Tr+NW+9qJfmpWaFiB4VPq8ExXfHfAX6r
	 yfCT4Hk0d+ZDBDmpM0QDdHAvZ98nZ9wtgSmMDYETAxU5Nj9ZEr4IKinLXdxf+iBJsC
	 9oX1XdAeh8+qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98670C3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174702359361.15537.3248401391035310571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d1f2a89611f99c42896eba215ec6504e215bf43c6624f9f480a00e491db4c0
Date: Mon, 12 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747023593
