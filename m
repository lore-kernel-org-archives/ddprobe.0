Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B9D3D6D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 02:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719886523; cv=none; b=ROtgMetg1tU6QxOYfJMFQTy+eTxRixVjNAmPFUqSm6wNviNHHQMY0DHlavx399F42pbpm6ESQoMZ/UXIAZDAQYzrm2+i0hOSxuZoLNM0BdOjNzhIVrFKWXXyPdqWMttxRnLTuxpmK0JayfCY8u3iOZtan9szJtPJ3Bdh62rnt9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719886523; c=relaxed/simple;
	bh=MyJma8XTZz5v9tM9GCImq/ZfhIesPMZnk1oH714oTf4=;
	h=To:Subject:From:Message-Id:Date; b=u0NDj2iTk+xbvMitl9MezvN4WWrjjJvswhLwfZoE/5KVPJii6lq4JFvJVBcewPluPcruhC45Igg+u6xJzgJSrO8usrZA+Cfs5/BClq3nXB610Va4qquWyz16nTXosS2nLIGxF9W63LM621JqUBqYxkbYPYHBqx5bECzGz9wpyMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sl64ryYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sl64ryYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1315C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 02:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719886522;
	bh=MyJma8XTZz5v9tM9GCImq/ZfhIesPMZnk1oH714oTf4=;
	h=To:Subject:From:Date:From;
	b=Sl64ryYeSAOUt4lfhgUS/q/uNADcg8swqlNoyeV8YAmXOfXOsnSCUb0yFeYhMU8PL
	 8KpVxz+6Qwx4a0ZSIGNGt4gjmNfJL27UlJFXzNTrNFEobnW+t5foy2GjS18EStjSLw
	 D56SjbS7Te8rhEXP3JSdEq7hJ6oI4pRxWyjdL3zd7y6S8GvJqyJyIm7rvOA8JJqG50
	 LTamD2/dYSuFcL3+xjb4xnM4fUq+GgOfFScZD2RyTjGnj2KXnZWVKJnfcy4CkkOoJJ
	 0GXRekMsdV2kivZHhvlI1uJ/GO/3+fRDZ2zzdTxYZnuBWdOOLw7XMpBa4v/q7Ykfl2
	 hxZmG4KILM85Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0FF5C30653
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 02:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171988652278.2895.5559132281313288026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7423879167dcf0efb3588f5577c023cef7b5e26ef44a04669dedb67c4a1f26b1
Date: Tue, 02 Jul 2024 02:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719886522
