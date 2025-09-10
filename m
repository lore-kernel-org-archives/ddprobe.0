Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0EA277CBC
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757490594; cv=none; b=tqX10d6w3O1BkZAmlT6bRrfmjdlCJRYXIFZ1vvvG4R8NGYCY1FSjo2GeKiuB4fZscdstoVYNtAkC0TaT+oxY4DTthJb4TYZJ/oiUl6UqhfDO/Ea81TKpi3GJWuisoKs5mzucBk0cmPhsvZUMXWCLK/KR3OkvvMnoQT9GKTP1vKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757490594; c=relaxed/simple;
	bh=k4WS1CYUnJMYkfgl7tVVUvja4aPggXWDe7IWXY/Mc4E=;
	h=To:Subject:From:Message-Id:Date; b=NakxE1FWMHoNrrIXmHjyib7sQqUIjVjn5G5UtmCUxkdwbg6YZsOBahexxyqZwklyGeO4zJNVduzvbRBd2SDHj5OekypCRZJ+S6i5EytCYDnduNG3hr9lykRAfNE4R8aVASR5qcwJCidEdGAKOQ6DtuUgjVzsdN2d+V4tkE3T0MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDL2DfX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDL2DfX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFC1C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757490593;
	bh=k4WS1CYUnJMYkfgl7tVVUvja4aPggXWDe7IWXY/Mc4E=;
	h=To:Subject:From:Date:From;
	b=oDL2DfX9YSaQw8JtKd0cPCx6qOYyOGq/g1JqtNxgiZvAbbeuIqyj4qWCZQ35zjxkx
	 nEvjKDh95UuqzXMvk2oQy4j6ej1mOlnmRvyZW4B3kyF/8K9S3DANc5PoErE3dQxIlF
	 nA5nZ1W/9C9INM2IysRnbTrH+n1d40R4OOS+lv+fTpvKhMt7lftFEjkpvH5Yg8uPRH
	 K1t6kgYCht7AeA4ENiKsGEe6g4o5CwNUkf1rlBi2/GiGiMvbTFfEe8bZtGT9KYhJDv
	 Ay1QIUrZBW3djdLj71OzSkLcKlZVMkY4GkzX7Hhm7IQQMiouMwwqKelWfNBxQ3xeoT
	 5yUwzfFj/NwRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAB1CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175749059357.10128.1766693404361150876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06681790090819c91784319a67800e2fd1ac7f16ccfbbd30a020b4810abcb687
Date: Wed, 10 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757490593
