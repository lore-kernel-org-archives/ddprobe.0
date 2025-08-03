Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E38A218ADE
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754216994; cv=none; b=uHehaIF843IxKriPIlw/fQcCTKpS4lUEakP/lcDNZsmKp6GLleZLqKE5Ma/gNmCDu85YvAwQwbZ/Jwt7SIeWMuLg0q9OoQGK8w9VyuCLEYBKPUW7KKS6S6x8Ul+8fI7NsSJF3zr7Hid8Ze0vsAn9urN+DgEPjM7IxlFo2juqMxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754216994; c=relaxed/simple;
	bh=pBh2sD3vpVl96dFEWG7dRKoXn64Wvc9sfCsVtXfdpyE=;
	h=To:Subject:From:Message-Id:Date; b=XYEbs6n4qbvCpTkwQ9pSFpTQNnuDeL3ub9VAzopzBD/COXCynxUfQ2iQU7ql7FKvCxj1vc+76Lg6xhZYIFllRh5r2wn3FtHupNeAwFlg/r8TmBsS0fG6A0qmNs+72DZYW4tlsUQlXQbBsGCp+Y7TlXgfQ+hTdWsfOK+kG5vAKJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exUXYnKQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exUXYnKQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13F7C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754216993;
	bh=pBh2sD3vpVl96dFEWG7dRKoXn64Wvc9sfCsVtXfdpyE=;
	h=To:Subject:From:Date:From;
	b=exUXYnKQn9sAUh49hGa8T3kL5r9CNTbZA9yyBC/dQ0QVY0koH7Ta+Di+8Lt1AkuTp
	 ZQBvcJ2gsq43ZBJu0ja6dFp3lj5plHrSKWpXbEYn5JQpYEjSFZ1NTyw4j5dxnpOwf8
	 P/vOu8m2SjNQgmKjfH/ZHxFGC5Xk1WgTQ4Vqq5GCcPI1AQUGr3Z8k2GgJxmRqZJqO4
	 ZdsvvEHEXpsVwQ9nyLvfeeMFrbvkGVUFDBCkxNNLdr4dXbDKknGPkrXpwvdoi9Z9Uz
	 eJX6gtIM1wG57gsqclVo89lWjg9YRWvrv+KP6N8m/930P82JA1hnnvhx9kg4CbEj+A
	 3OqU2S7apZWvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F324C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175421699357.28797.2556136570943815582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3fe36738f29c678a41ca6aca762f6d63e09a98d531e096a03cfef1a666fdb5d
Date: Sun, 03 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754216993
