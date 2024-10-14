Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277E114AD22
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728936954; cv=none; b=ab43eNLzJGd1WLVqzpwiLS+z03b8N4DCOf6CjGhIeSpyLXIHlHfxDht9/1tPOb6mbOhIca7praqO9RHHcyqnq8Qjff7bRW/oQe1N9H2UYzBCcPRLTo9bKTvIS2OzCkIspQbNvFxt7e57LNffKxvf+iilxUTgrfH8+SY7T83yIJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728936954; c=relaxed/simple;
	bh=GePBcQfLu1n3z27mkyEYsBKeqYxHkgnqn1kuSn+9VHg=;
	h=To:Subject:From:Message-Id:Date; b=ik/2sgvwCJGR5rPsOb7O5K+NdJqpU0XNTsiI7NZPhpCsZkvvZVjWdkEaYWZGJ5ZTAKfenVvqHl8ll6ATiAD+jVPKWrbpoKRqS8pZL9GbGQMKntT79GUVXtgha2R+eksswmg20D2sVDKNYGNRyzHXX/dcpgXz4qPRFKDoOZ07BiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIwc1D2Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIwc1D2Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F56C4CECF
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728936953;
	bh=GePBcQfLu1n3z27mkyEYsBKeqYxHkgnqn1kuSn+9VHg=;
	h=To:Subject:From:Date:From;
	b=oIwc1D2Zy8ISkUYMX6hSNUzZ7fAopr3bYpt4uxIr0APxisXqEso9pqNUWL3qkEQ8f
	 idf++iQKC6bfoTOdLA7/MwhFlGXqazAPe/nIc64ce5qK++ySoMU6Y5JSFoa1NNh4Bs
	 /KfvFLgG8LjX0iyYBy0goCLO9BAmez7x7QLBQqPkYK3EdjQrQMxZ4adZpRFytsqTPO
	 Uag51qdCaB8fo2Vnr2rjwTewuszFgiqxxYuvHxUN8QR/bPf5ELIL46t9YQQOl+7WWF
	 ecyEwBGoKKkfJIOYcRENo1xRUxhA2ZqyNONyggae53a+wjruZ4ZMLJosi0daByzQ/x
	 CGXzbj0+EtuGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB82D18141
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172893695361.10663.3492494662827615543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58b8705301720556a4ad0d011a7045fcf29329e421e3ee6d0103decdf0791a59
Date: Mon, 14 Oct 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728936953
