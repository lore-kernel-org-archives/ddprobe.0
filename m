Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC1E6E5ED
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 19:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719948924; cv=none; b=iFftQzSDyRcITmhdi8U2ErOnhr1gZUPTECuEjzisKyxi0jSwyy1J6aP/2APTqQtsypIKnQg40uKDJE/XlclHwSGTxK72Xnh1iUrJLdhI0WxXuWoFjYAS2tTN1T5zHMzfce3KBdQgPtuqL3NkQg9QG3oY/VQnVXKjwbSTLxW5jrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719948924; c=relaxed/simple;
	bh=NRMgxuz6P88ADW9swa2waImOKBzfCkTdpHpzF6OcFos=;
	h=To:Subject:From:Message-Id:Date; b=MlzmVBaLnYURId3Y0Dt6clqfdhI4c7tF98uZ/LB74LEd98+x2YcZPmAjaSbSNCMRMTxLXXKt9UVFlk44hQBft0aGOQhEmM8ch0pfKuZy99U63vmGaqwnuosK1yxdxIf7CCmw9Nfvet08sZX6xaGOQWkmjp8uoJf/rDWCUUvlKzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlzIqdNm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlzIqdNm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB9B7C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 19:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719948922;
	bh=NRMgxuz6P88ADW9swa2waImOKBzfCkTdpHpzF6OcFos=;
	h=To:Subject:From:Date:From;
	b=TlzIqdNmrV7jtK++DT6dojBzqXytcN5xzCyBKnYAi1dKaixmCUbZItXchCiXHhQeV
	 1CbnA6yoXR4rinxMKhuf11q82ZvDFQThpOBIjCo10DWvqEZJd+gQxYJlzhO32KKFaY
	 Swt0T0i5DIQriWOyKRpUL/oV26ApTLZjeX5OAwSz84Dqbd7tqe6QXH9ke2Y6jjdjc7
	 Yvm1bRWRi5bsCnUszqP572lpr+qWagdg9X2V+I9nv9UNzyjGjz0jP7baQ2AfMbqqPH
	 4vb87x3VadJLORcOy3UPnmwjvE18xb9e9gWWelbt2ldw3UzTOswbCFkX8AMs/kqWP9
	 OxGwgtf2C6v+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C54CFC30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 19:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171994892278.31361.6924695497433574147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dffb0bb4c3d1d9c1d569c04f54f29ca7a0e8341bc35d17d6862cbfeef408bc7
Date: Tue, 02 Jul 2024 19:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719948922
