Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 736453749EE
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789429234; cv=none; b=E9gVe6wcvkML6J5xI8UbLj02dGGlpV/ZP7F82CuxaO1RDhFBv4teI6sKcz6hki5tk2oDJhBY4FuiUO2+HNPFf+2K/BXTkdfr+zUEnsMZhvBDRMjcV05m1xYkjCwIsjdeXdThTz3weqaTgRAyuhPwuzFamvdDYTJ3IkWovB1LA3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789429234; c=relaxed/simple;
	bh=+RKx5l95pD9EiXLVcP3nxJ71Cv6wuXhRDm7wyKoG17M=;
	h=To:Subject:From:Message-Id:Date; b=CBl8tKK+UZPwJ440rUsRverpYtGtACtyNr1RzPhKP6V6FRu/KQb9MTA5wI44/5Ohh4hX76gKYo87BmJYSVz+PNDFM+puk7UfEOVtG5Y0/2eHUcj28scAEk7ClDe0nlzQTaNnoppj8p8oBp5BBhzv8FG34HQFFj6AGFDCURX4MJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUSRTlO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUSRTlO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E014BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789429233;
	bh=+RKx5l95pD9EiXLVcP3nxJ71Cv6wuXhRDm7wyKoG17M=;
	h=To:Subject:From:Date:From;
	b=fUSRTlO88sm5szeIlRzYRm1yGDvDLvrvY82tCnR+C6u+iHcwfl2xywrnquh9LNSq6
	 jXcNNOoPCB29T5U01RWGxRHRzfqo0+qOsNFuBuasL1qYA7oWmocyiYOJBwGoPKFSI2
	 o9xpeA/5gwOQk33SEUzS+ghYY726oy5xDIOsUxVHf6rbTU+TygxN8A2dfTfVlIgrxa
	 /iTbVtj/6noKn+dGL09MQ0qmVfdhH6dwxytK1aJXe0Kezmw+7DvA5WQdqxWzP/cn8W
	 K29On9OWuAzPY+tOqHgS51BYhzTeDTDe7m4/hk2tKe3f2Zko2MyBEWpMAF9qF5wTTQ
	 pD1BEjpvzV3yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E4BC88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178942923373.23112.3434324069409809196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 139b7be2ebd07b59da199898880f67421548a9ecd838044b0f05d300a5f04633
Date: Mon, 14 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789429233
