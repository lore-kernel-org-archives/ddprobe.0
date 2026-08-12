Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC74339383
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786504834; cv=none; b=Dd/oovt3krOg34ve+LrF+V/s5GFAKSZMGDgxPJLID6FVXuUtV2Vu6HQ5FMdLoNviyuUHkVvN6wfQ+Gg7gP8hd71YBQ+9BebFUpn03RdGV4nXkpBZ0Z7CCuf0ZmoCpo9wrD5273PaXZvhaXL+R0mjDcUyws5tErbeEctz4APZcy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786504834; c=relaxed/simple;
	bh=tKndpIWHPiscN8orzPvAZYEPIjC9zzjBueQTRmFEfd8=;
	h=To:Subject:From:Message-Id:Date; b=s4YbDX5rl2kKfuNTUsNp9tioFbbFmTBQ/9jPdIFLcwSyHvEYGHq6l339gTQqMnBwfsS2XzFv40joilPe7d+LwrBf8yI8UDUSo0jqiRwuwVP0+gh5095RS+T72OiNy960YvLDHXL8L0lhe6NciR2+YtV7aZyr6tnTyx2yBOg8xds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WOmUdR/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WOmUdR/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D043CC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786504833;
	bh=tKndpIWHPiscN8orzPvAZYEPIjC9zzjBueQTRmFEfd8=;
	h=To:Subject:From:Date:From;
	b=WOmUdR/0687E7aOumq8fsquhaSVYLi7pHqkubMcwvsIYNfG35vIduhh/t3Z3zc24V
	 ySNi58xl3wH+UPpP/fBFoJs9FRARvPOJ5e6zmW/uyjYSrRV49wUBH465cx9BX9isQm
	 0gQhMijMnxeCiO3hF7WfEbh7uTvpFjT+te1BSk7TLGX6J7FCQj1Vu6gq2oX/iD3h8S
	 WNIgMojOUUOotB7dXtwKIVxOOJ4As8biNHBQFADAjMjTGXYq8X+YqvmCc8hYgzjT9K
	 gQKWvORI1oqD9yP7vWHbA2tv63Y87HvaFmaE6qMQSrNlbI4nk7uHEJYTDnbPtOVQ+U
	 Gi0anz1lYDfvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE92FC5CFC1
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178650483368.30050.13228009342606806235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2a9fd02033c80ea9b309bb3fdc88922e84668712e0bc7ddcdb868476fde30c4
Date: Wed, 12 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786504833
