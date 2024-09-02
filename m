Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338A37347B
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725273954; cv=none; b=GeabbwZBJ2fM5CyFDZBdPAJvozwqLeQvEIw+gLeQxeFfYLkDCtHSr9vzcXqR474GCw2h9iUczkNdgY0cATkjr+6d7TgSg2pQu75jiMe5Shs2kcxFtSeDPD3ryYb775b/bjUd9/Xk0T+tzMojxHaRblpJQX4T8zYItBmY2lymSwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725273954; c=relaxed/simple;
	bh=rHXCXombEsdrfdOIL2J8RmUA7lcxeIVmn9XSrTsWHLk=;
	h=To:Subject:From:Message-Id:Date; b=Lo+5s6nBwPbiGQseyCfzDmhffqg+VD8mUDI3Kg4/MfSoWkErSEFyjGDzN9TaLDR7+Pqpf5bROayhoSQ+lpDP/03kjb7OKBktkwVYpmReCYc+NHbI+Txtud1mvBzGpPLUf2UV/gHwDCYVCxj7Zb3hACz8TLP0YKmGIXQC7jpaC1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6G1f/UZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6G1f/UZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0A9C4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725273953;
	bh=rHXCXombEsdrfdOIL2J8RmUA7lcxeIVmn9XSrTsWHLk=;
	h=To:Subject:From:Date:From;
	b=p6G1f/UZUy7B5rDTIu3Kxblj+NZxKj2Tow8TRMKlmnmu1QbKasiZHhxdvbh6di9kB
	 PdYBxgXXl4tUu+aO36S4bQBfwUDkDYKX6a5uXUHsdjhrm8+5CHMN0YbTtFJoknHZd3
	 GGG4nTJ2rPl7ddfgHb7PXery1hUJWXKyGYjD9LmswrtBEwSohgYj1jm3c8yFby+mi1
	 s5+VlyQcj9Dw/Rh+deJfOIh1/m85tZ1PK6nkAoH6GnllxBvWvcbciDafh69WzDe1oP
	 rTUfP4Jev4FBMgwxaMkgyGSoftiMEFphS9kCD/oyLODU/XoCE9CrHpuswSAP8A5jnZ
	 50kmU6Ek86OxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98129CA0ED3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172527395361.24408.9359845773811720363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef74c2cd35fb339d899f70285a8624da5273bf7eb3206642d71ed5231e5f5ce8
Date: Mon, 02 Sep 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725273953
