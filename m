Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047C83446C9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769766834; cv=none; b=f2h2zlA3Sp4lXiCLP/Rr2oK5g27ZAvNi79DatylqIs3gjJhYCYi4YLL15Xr+WbIaGmGN8oc6IeZkxYhFEJGVziWbZveDbnT8aDHFArpimkWa62cJfSaX9oX0MfqQkfF+KocP2+M3sguDd4eGEWW6RrwvR3lKaoNfQ1lNoKdYv20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769766834; c=relaxed/simple;
	bh=iwm0BP8/oZQHBChz8NfdYsEh0J1m8WdS7CheY2c2KrQ=;
	h=To:Subject:From:Message-Id:Date; b=TnOUovSQ57f/CJC1bC8C24wkpbSErP/4ejVtHRAD1YoOaeNMoHKlw+b55LMSMg1xjQZ/g4PZEe0OD8XHYIQ8kw6CkOySNZeQUWpTDUJuJHxrLgLpaBHvg7nzLaeg9dgkROYzsjVaYeBCU7iric/+eKedCFc5ZAt5Ot/2wC31FUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyKqzNB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyKqzNB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2259C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769766833;
	bh=iwm0BP8/oZQHBChz8NfdYsEh0J1m8WdS7CheY2c2KrQ=;
	h=To:Subject:From:Date:From;
	b=ZyKqzNB1aumfs8kH+JurQ0A85yCy+YRJZgw7faxms+MjfEpEMeoXGv3RjKlFOwUxd
	 oeCfpL00whYLzHHvYzF7/JSskN8/IrU4yBjN7FsY4Tj9jINJ3NEU5XFk6sYqe1EpFT
	 rd2V5a5hw4zNo9JDgv9Agl7i54/4egrmK/tc8lz4ZH53ZJiUXvcyKDDM5FcnIqjGub
	 xTOVeuAC5fRNBHrN7uhGGeDe0Krg0agopdNO1xIP5/ppMDFT68dr5oUueYx6jlMsOH
	 v8xQ4aNl48WvQ/hVAaELcwMWSTsunJeLa8nIMg3x5guDJ4roJOsqTjZ52GUVM0O/bt
	 WO6xpRlsUrsdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95275D49C8D
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176976683357.13498.16821320063723338335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28cfdaf84ca5aa5811d92c0bc41b515dfbf56ac910b95ece2c49c5407cd938ec
Date: Fri, 30 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769766833
