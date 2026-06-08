Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236283AFCF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 21:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780955674; cv=none; b=n7QJuzPzHXFAlDuL9RhOVu9rpGHILI5GgIcF8F6mGe3EIZVcVKRnqCY0C2Hsm8s7SzTvdgE+8D8wTJLjlwzOzW7ZSVnICcShNsDTBQyOlisL1mtbWuPj1JM3f9IUYnXLnMWe7K0Q5O8xH70AQ7I5I5yDZxWMiMc8xA/H+Ht2ePM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780955674; c=relaxed/simple;
	bh=N848NRGoCAoDsvIUVvV37x5LnSlfYkJcS1cw+c34qL8=;
	h=To:Subject:From:Message-Id:Date; b=MB1ubWEcNFR2wh56G8WQgWj9t1cKxK2UyAPiZNy5jqNssU3Lnm5Z789XWI2gbiV3EnHe0XGWDe2DqkpZQ3248eYVluK60Yja+tqVUDRhlAQFyOS7LB99AqaJtqklOFDAy0R8fieTwUIvWaVkEx0wLLTRRZlWT9nLlsIIosQ2e3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7atJqSh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7atJqSh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB78EC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 21:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780955673;
	bh=N848NRGoCAoDsvIUVvV37x5LnSlfYkJcS1cw+c34qL8=;
	h=To:Subject:From:Date:From;
	b=R7atJqShV5YvzYZXktQfGhMK2/D7HQ7ZVfAR86OeyxKbkw+LZBAT6E0kU0Q2KOhuo
	 BsOLOBz9gl6Z5C1NPqa7AiXqeDGr9IANOH0fbzGzngl9cyAxNofxiCoMLVv9AcVuMo
	 BPHAkq5XRT7R3YG5vXSOgbiRVqfmtvcHaNqTSkueihtuLdwShr2hQCNaE53e3+bWe/
	 luRTSo/KXNug2z+GJB5DDFFDPSJWaOyqjmpFOcyU3cGGQVerMzRGYnAX3MmL9JTCUB
	 O5W/W6rdFvi0W7dO2q8SZWg6G9mYgckNExDavVGVks1an5cLWinMjx4e45UT6UE0Dq
	 fITvVP5Z7MJug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF444CD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 21:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178095567370.17022.7666440196672908648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d727d842689bf3f3c028bed6510c75a76777d3f6eb94afc0dfbd90fb31f88520
Date: Mon, 08 Jun 2026 21:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780955673
