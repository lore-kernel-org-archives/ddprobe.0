Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097E42773D3
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 18:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782758314; cv=none; b=SgUj9XEXcRyArjH8BKWIzduvJJAVSwra3wW/IO0Uj1i5Jl5x2T6zEzeZbfb6oj6hveyQMUsO5662nIRBLj/zlelmT1lI9agkdz4g8GIjT5VOJmbeBawcZ7ebB/c17aRzCJ+KhtGM0GdFx2nmXRbohXt49G74U3qH9f4fue8N38o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782758314; c=relaxed/simple;
	bh=7aS6xy1LkuIQkJZ1Fla9h5zxmdI4VFH3/M4CPWdiTXw=;
	h=To:Subject:From:Message-Id:Date; b=i8rewYg1A4VzYj7IEdYCC5C4vgr9rxhVUiw4hRVbUerqI1II+Bx8WHQzEzL9Vi6WiDRH7ZEAP6wZWVmXS4haQtfYUUlGOGn+lSLvM35PN43qSENYvjUETvcR5SN7Hub50dXgzaik7/iofbmaQ9r0T8w3Im9l3DRUUxB2DWr0Rlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPq4q7WW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPq4q7WW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3AD3C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782758313;
	bh=7aS6xy1LkuIQkJZ1Fla9h5zxmdI4VFH3/M4CPWdiTXw=;
	h=To:Subject:From:Date:From;
	b=CPq4q7WWx01EE+S4kRbPogAjOriOnWIJm11bHUyTfGNMbOpHNnInjTG8dfcsc45mk
	 WY/7FNe5W9MxCJ80xWoO6sZj9N0mMcDFk4EyUnCIVGoH++BTqeCrDjpQJMhjonXe4W
	 y6gqXQkhQdGMOeRrWjQeQa+n/F2668eqhyFl2WeOXuPzBGuB0/m/Cvvb4/Ma/r775c
	 7wBHUlYaTmIqzfkBd+nqeXb4wbPv05mjBYUUeTAIt5ic+K8BZSM9OV0qhDvb87OXc2
	 LpIv496QD6Vj/ASFXsR1lhpuGL28RWQPc7DLlyWnwinIazfWMAfn8rBBepDRydMHjZ
	 n0qN5+tS85EJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA165C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178275831368.26429.2611872308700680102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7763d7a4675f4cab0611c0e5c7b39859724dc356023df47b5a9ed33a6e6e27a9
Date: Mon, 29 Jun 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782758313
