Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0DC37F725
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788896434; cv=none; b=qG6Mek4KcPzJZJ9HZ24x3f3JwPf42FoNi5/wRJNUOl2bQHXR1XmanF08JLgcKn+mXqnFowmPnXkjbt0bhHG6PvJBKwKEJw3setCK3NN2afB2jUCq/XPcGoP6BFKk8F5xOUx+EUNXh30LghO4XFiv+RFdZyayR575N9kcgFyEnVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788896434; c=relaxed/simple;
	bh=7DYxB/mNHfl7tlJ09PQVTQfQQiyQispmWcll0l6wqIU=;
	h=To:Subject:From:Message-Id:Date; b=sRZgevkGsEU4yJDJGDbVQx0V98ayHQ3NBilfzQq9CM+39N17gPP57weZIL/iycj1ftCVtbui1NFrIrB8FwGhzcEnDRTE9l4/+aHu4HieGmcKtbAZLu4agnngNbUUNpPoLG7b2++5aII3Up8rmhNGFxzjuAjhWUwURs12pbslkUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGG6ubb3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGG6ubb3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D859AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788896433;
	bh=7DYxB/mNHfl7tlJ09PQVTQfQQiyQispmWcll0l6wqIU=;
	h=To:Subject:From:Date:From;
	b=DGG6ubb30A6OnihuiZVYuKfo836q+0CYrj8b/ptvjcgYIqSGMf8sQvhrTPoAG/7V+
	 c7YZXvxdDQh6nrYM/rFDHXYDaemnkd6bHxSCOwlVHnHcjJtpXfy7MyIMjL+3NObTTf
	 WD8/YxyY+UymKywqCT5oXsyYicCf7QvNsuewBpkJQ7qNeU854b2RvOm4YLYmGA//DU
	 18bCITFJOYT6O4nmjS5mUmnSjxBhGH3Mh2/Jr1DgD/d5YB6pbQLc1v1jFFd261OVKu
	 22Z6rVaYJ42/9Hsg4IenxlzQuuUpLHui5tTqP0N5ip/fNU8Ej3A1wx3BwJ62eMigaR
	 PLQQ35JqvLZYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B330EC79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178889643372.4289.6001455153969261340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b402eb6d130ee5bc00eca781c541b83b5b5b17b889092d6571e1204e8cbd755a
Date: Tue, 08 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788896433
