Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CA0285041
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761340794; cv=none; b=oBRGp+A1Z+0jvw9SEWqq5DdK3aQ7DNupqDGC1VhM7o137Rd06mnO5w+drK6P4R0i+gT2KYeWGN00KNAvp7QIu+DUfrZYe1ICh8ZcEPHlr1xi5pSDKW6WItVd+lUfmXZc3kOE8CDTvJtu0M23QKlWjRoVhvVXH8PXS35bsBNWRJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761340794; c=relaxed/simple;
	bh=t+0cz/DVmYLnMYTx1LPHsbW2beoo7TA1Umqgr2eyRt8=;
	h=To:Subject:From:Message-Id:Date; b=UdT2kgxeCaUysYQ1cxRY/qBR0MC5QD/gmE6Jqvb8z4fa8is34wvezbLYAxIPJir0Cidx9LPjgSEyJlO6nej5IGR/X55qgFqz7yhJJ2Ki8fUYdFy/Kfd9DzCmDDYFzbWVUUMio/LFu5wnDrvOAmY6442X2FhRPrXEiIzhhrTOCx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sU9QC7As; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sU9QC7As"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B0BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761340793;
	bh=t+0cz/DVmYLnMYTx1LPHsbW2beoo7TA1Umqgr2eyRt8=;
	h=To:Subject:From:Date:From;
	b=sU9QC7AsXCGqjdEfFZA5iWT3WG+GF3L5Mn+lhtmJQbwpLeYjFnNsBrZEO4mXqIKcp
	 3m3C2F4SznA8LB78H45dAAteL596E+9+HAzcuPkZb+8lpHBMt048VxBuzoiCZ1kn43
	 z1GAeHVVUaGgeK9SpGjAR7lSdt1eiTIuT9pXJOC1cPcVUc0tGw8yV6lJ1Yks6wUe82
	 HvYol0UI/LMFV4yrjzccKlkU34aGVVO4YmJcyHSX02/Me+19IL1mUKQd6HqWCjGh5X
	 mPgdSryxd1obhvJuOfovvywu8GnL4MQKteEVNlURVkV/8SK/+MvT6y8pqBn3IaQYAu
	 AcwuNovT0ihWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF3ECCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176134079358.14460.2392458421072334590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2a708f2c747340af7f1bf9f4d3e13e5bdcaaa38066c9ad12bdcd820978b380e
Date: Fri, 24 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761340793
