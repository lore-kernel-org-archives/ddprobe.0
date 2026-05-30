Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78B261891A9
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 00:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780101214; cv=none; b=AywxQsZ+ago98zlCqiQftmyjSveaAx9Q3B01zkg0Nub2knHpS2FcX9Cr+QjeBYMhzgyT+j4ZZPgv3ekfqSNRcJ33oAK0Ai3EJfPnhCIWxSdaDpDPHq+XvtyVmC3VhbbFMxn0+5gn3Ly9s1HujIgD1e9h3Vlxsd0lIzQWRoR6wMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780101214; c=relaxed/simple;
	bh=ITHu7sPuLzIctJ6hYimqcH0KkViysYUMQnGtBh36HJI=;
	h=To:Subject:From:Message-Id:Date; b=iY/8McK92XwJQMf7oYLNkEMrEkm75QUwwJiQV4vDHs0UB3CqLRaIuF/qmhGpohyOSZfRBr3tThb2bPobkrW5Pjs1ItksfEKMzG5es2YU+HoeuU+t5mipP22W6cWT7rd+tlsCrdnpV1kgQ0R7qtHQTaDlfRE8gaw9HrYBb/kMFaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjNQvQPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjNQvQPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB4CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 00:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780101213;
	bh=ITHu7sPuLzIctJ6hYimqcH0KkViysYUMQnGtBh36HJI=;
	h=To:Subject:From:Date:From;
	b=OjNQvQPk7ftbk8Su1nfFlKZ+BvE31hAUcOVuNDmA/hYQQ7yAn4Leg47gqr5SCyJm+
	 keNbByK7+tRwcTPPWN0DNwHgQckcr8E6hELKn1FI6ytsaFlswqMRSZyarVpo+31sSG
	 I9vQk0reImJ20rp5xLbYgXZUxRQzuMBetvjqobNd3atbs1SM4KX/fO659ICzLaRM0z
	 STuGMV5wnBJZwb2GGDG9uKw0ptX3tNSRSpjESVCZzoHtDo1KA0HO+iiWmSkPApdgCt
	 oT143yHSxZTACMk/IYd6VVHb7X5hw/ncXbEckz4dYcHwRmt/ymLOi9TP+SF8HXlynN
	 wgg5spiT5SD1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E78CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 00:33:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178010121370.4949.2620522002371477683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5db18c4a4e9a3f60dc33b01c2fd11f9687aae2109956466892fd2d896caa5f23
Date: Sat, 30 May 2026 00:33:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780101213
