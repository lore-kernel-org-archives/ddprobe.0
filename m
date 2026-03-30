Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A683D6CCB
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774893294; cv=none; b=ZDr9nqSKHlVJeV9Q9MIvR5jdE1LiKsGEO70K9T4FYExVSbBXqOrUNkKNzCnmNT+wO+njRdMaDWCGabn4+Vry3S7H0vOt5z0+uGRZcg7QNR3q9XriIMSrXaYZw4bfFnz9sWODPA5j2Oxx2/+gQWYTw5+NjiA9c85DGYQthgqqyLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774893294; c=relaxed/simple;
	bh=EYLJAzKWo99wlhFYuxxenKp5mS1gKUfcNb07ZcUdsl4=;
	h=To:Subject:From:Message-Id:Date; b=FqSAMk9pNEQv7SEBepnLa+dTpMSFH5lVsgNRJOq+XlO+9Cv4ZH831WFaImRJ9xJyV6FDZRALDastEEN9pVtSg790akj+ACj8ujtMz0vbOvyVh43ZPyjR6jM1IzKysQzHWU0w+EEcE0Ds+7WC9rygN/4qIgp17/J1bgbWVubsRa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VaUz8sF/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VaUz8sF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D66C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774893293;
	bh=EYLJAzKWo99wlhFYuxxenKp5mS1gKUfcNb07ZcUdsl4=;
	h=To:Subject:From:Date:From;
	b=VaUz8sF/oXSGAulksZgAoX6nAh0USKdRuVZ+dhlU9L6D3kOvwtI7Jw/ahV09dM7Pq
	 r02LMhsZZbgGiJgvedTUH96cL7ewh/GTveKmq3bToW9UTiL3AFrkQUisPdMzNZd/G+
	 jq+T6DnAZtTZM/uj5ReOzK1qUGAh0XY+DdhAYWdLLcwhed6X8n1xscAbc1Lk0UmISz
	 LjjWhEjaS74huw25Te+ao1OiSlZxDZlwx1NLvXEFfbJLEMqwuL1GdOuWHckHJYsIxd
	 KFoxk5T7an5LQwJqBuGH8iPSA2Ej7W/shvli6AEVBq8m5zWOav5Uwc/a/a7SD/66CK
	 IS4JHmfK6Rihw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FA61061B17
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177489329360.2849.2304677856229396659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cf6bc68987bac1475e9f470bff5805102912be8a2b9dc855bcfea5e84d7d828
Date: Mon, 30 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774893293
