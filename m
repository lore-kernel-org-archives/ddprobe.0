Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1B3C632
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 00:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779667954; cv=none; b=oobc3cns9iDdnE3gvfYMI0xjEEMp1x6ML77aKQUDRaKJcUIBDUmObZckK88U/BdKnSDM09nN2YKPAHPLjijK5HiZ1R1jjmrvUmhrWAeuojjinGpKagAccx5/U26cq3P54Bq3qaetoJGsA3XK0QxlQUC9ykiWOL0UvwzwzsGmAE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779667954; c=relaxed/simple;
	bh=EJQvl5+BzzJlvCkUuBCUQomo1KKslszehOlUsoZ+dSw=;
	h=To:Subject:From:Message-Id:Date; b=Bk17Xz8VJhQnwyCpYahAnXkO6Dvd8ZEQKhx8d56sKcQRa0BZXEZ+OCKzmfTNLZKbTFnXXMkp/ia3meRK0hl6Yush1S3zttEnv2MPxCFb31w/n3ta6gDpWTDt1g3tOPIOy5bD7A7kGs5qwAtn1aNf7RZYC6bgI1NJZG5+XdUa+uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDtBllDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDtBllDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D31AC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 00:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779667954;
	bh=EJQvl5+BzzJlvCkUuBCUQomo1KKslszehOlUsoZ+dSw=;
	h=To:Subject:From:Date:From;
	b=eDtBllDN+59+gUeHyZR+wYUPx/Egkf6Z+9RuUYVrnkYF7nvyoVLJElijmfmDf26jy
	 EWvjenqu/GD6eGx7/l+10V3ZmnVNpT2nM/JAPLMFs4tbD/H95L86m5CAdjThr8TvE1
	 I5wojI2IY6ORI5Vghg+CDsSp1owuShwIod9ld1VwxDHE14c8rucTNabCB/iaKOHgGY
	 d8UfsS56/KcOa+WcLoFGSQ6+T87SO75lEg8E/1qJsazwOCWfw/JXH+G6l8RaXze06Y
	 krdPNmr6QK2Eefrz6by4dpHOfQIJxOe5iP7xcx2RekUPQGpkaCzYhHSmwNw5VbhmGp
	 YJAC8sV95T5yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12AE0CD4F54
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 00:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177966795391.19492.17824067684238060936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af75196066d088534e288be595e5ee3f864049e37675d76897ccbf2ec86efe96
Date: Mon, 25 May 2026 00:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779667953
