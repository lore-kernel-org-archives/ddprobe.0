Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A824B647
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721380554; cv=none; b=N23rWMb11uEWYz4daSoUEIycIJ/cZMtZNlbR7a071BIZwU+jsNuWgVv6i+xZgY1uz/o212Z/rplLOXQVnuDAxZgo5TdmITj8Teig8GvCwY1ZqffmYKcx3OimhAs2pkEPFqw8m7y3z9dFSvssVfCHIisMZFDmgExfoqoD7gDKl10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721380554; c=relaxed/simple;
	bh=ayUIsN88CV7sy17pzkmUewdTVSkrjqBIvIjA/GtuYMY=;
	h=To:Subject:From:Message-Id:Date; b=TlMK0kPzflU9hKpkX5ej5zW/3uyT7aG1cs1ERsf6bcAij1MaXOAzL4iUfVYkQpfXpDU3AReiAtdWY8vybFJGntSo6oFSPrZoch+nxSA/rkD2GMmhVn3rLeU9cXPeSl9O/HgQ8gf10YjYH3mZgl7gBkqMXL4HdjqTrMwfCl4RH2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUxX87PU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUxX87PU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB130C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721380553;
	bh=ayUIsN88CV7sy17pzkmUewdTVSkrjqBIvIjA/GtuYMY=;
	h=To:Subject:From:Date:From;
	b=bUxX87PUxnYgPUPeg2g20JV4bPEh/t6jVDGMQFHxoxCaxZ4td19UyCt9mwRoKOA+9
	 OURlEivbpbaDritAvPhzlMr+dMzfw1u/xGgH3saAeaSufqUdyerWuPScloJMHl61eY
	 OLmN5ncDHRLm4GQtqJozrCxzO5WxdYZzWA7Dx20sHfV34jIQAuThrTKZVWmcg5uhDw
	 FbrX1q4xiZAajqOQQnDgx3iRZyktOiTsdB+tZw7Y3wdqoSZVnAWrzNPe+W4NyKK+I9
	 bm49AcSeXMrLtJGXn2IntFU1/eSdh7g226ya+O6LvboBBkQ27QtKxZgV7+n+vLMeXV
	 twoMNO9Xzmvqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF1AC3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172138055362.12076.8437419699855209718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32f581bc887858c7f4759d3e3b55f3f5a5070c7342c2efc6c4eb64943bbd77a7
Date: Fri, 19 Jul 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721380553
