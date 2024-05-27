Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E16846453
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 08:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716798263; cv=none; b=uXfh3I1Cq+c1+eG3XaYYCOi8J3nRrYj4MprTvW4awWMORBZLc9v2tvl6wLn0MoHKxBm0+N3tsD1kLPnZC9vTfMAGRGxxNfRMvZM1f+dbqmA2kAfheuNThtsdlJpEkDWCRVAyt2N+6zpvbR+nVF6Yuq1sK75N4vIfBJW9FMgFPKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716798263; c=relaxed/simple;
	bh=7A3c2JFqCVqFY7etrNjDloRlZlAg7JzuZaib5vHSplY=;
	h=To:Subject:From:Message-Id:Date; b=JByV+nwvlOxrXmW+p8ZKkZiZwyo10u0jkeHGWAmgIUKug/C9yJu4MxqlAHqLlYs9gjDxKDm32OuP4Vx0xgtJaud9YdjNjhoYmhhFzGxDBTXhCD5uEFMLdIDsUPdabswMHU/W5Fl9pR53568cKowtqn+AzuiZLxPj1G6wL/tXlqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDgOzD4D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDgOzD4D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15F3C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 08:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716798262;
	bh=7A3c2JFqCVqFY7etrNjDloRlZlAg7JzuZaib5vHSplY=;
	h=To:Subject:From:Date:From;
	b=TDgOzD4D/MzqVEI1AFGvDNe+oAhyHykZsQIW/QHN/iGMJSt/lP4eWGOKpoaxVoI+A
	 LgOt0BvO2f5eSmBtipVYcjwJ13mwuNfLxAKo+klX9Fek0NodwxYcWpAnC+7PTN92aE
	 tA7rk7C3EAKfmvlorRENKZj+sl7bW4MPShmPREsi8Ki/9sOk6KNsS5owDbmoEElYHc
	 r8tHh79ZjDfhCTDOw5wveWt0ayi17yNfMjanFS7+6JUJlKKtPAHok/QijGZlGIM53l
	 KXW4HeaLV5u8jNsiL53jeUlcYIvFbv60/6O1ivlkbCYRPJht2P753voBilD0qrhb8B
	 EQpcUhBNQXdew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2AFC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 08:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171679826277.25944.5675111266007967521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e419120b1a11f23a92c888eaf79dcc69435ed5b418cb1a0dd4865186c56c52
Date: Mon, 27 May 2024 08:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716798262
