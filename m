Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E44D145A05
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721337354; cv=none; b=IfiEetkdIcx9DjJSkji9TUNq9RcGszicTBObQFpmEsWpP+6G7dECmnxRCW8ryma8y5hTAMWvGJJwnvMHbXvn5OABh3rcTT8ijyEjEIivWDmGi3zQfTQBDt9K7WOeJpnZXupthjge4cNNVKeQPB69xu59DIB5wab04trUUgA1xEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721337354; c=relaxed/simple;
	bh=3wq5ZK9z0VP7IaAx3BCg7KfVIq2pISkf5JjC5XNBUBY=;
	h=To:Subject:From:Message-Id:Date; b=gcigya0lbJqP1STVUmhoQ2GwVm8zjtdQNqZm4cOWwYs2s6feW/+AOk4JZrrpzG9gASOsqDSKSPtUxNDQXIYjhpQCu+2RrdjoO782+rHo50XQyUq2amETrcvHLLUmfk7qgrFzff7wfLBiP981LF8ynupuJ4dWhDE+uG2+bZ57UQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Okezylne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Okezylne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22DAC116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721337353;
	bh=3wq5ZK9z0VP7IaAx3BCg7KfVIq2pISkf5JjC5XNBUBY=;
	h=To:Subject:From:Date:From;
	b=Okezylne4232aqrzBQbxEjiOAqMTITLiexoCCi0PTM+w3uRJ4gLuXlOgFi5IddBbP
	 v0+yMlb1/UJWpdrMLdJwTFxr+GtjV6ohoKKaiMr9JV+wVv6reOZGTZlz9kqwgWjesf
	 TFVebnWcky9fgA7LaQBHVyhnADDSQJd7E+QQjnZ9YfQmsUnpLgTjSIr8hQCZ/pLuNP
	 WtMSG680Bh1wLX+ldpzIxvawdsAjV5P75MtIrP5q8lba/p6+dWVaUyYe752BdBbQi2
	 2TKj7wy4pYtWU4X6ptFNMhjwbbjncqyeGfFpoib66VVGwcu6ZLcG3o1sRUqn4/yZyY
	 NOrFiurgJGJCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952CBC3DA61
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172133735360.6699.16557709255896068823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14fdaa1544489935bc9b7355c093a92dd24b35decbc76695afb19adfc3923ce9
Date: Thu, 18 Jul 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721337353
