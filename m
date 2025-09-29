Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20493308F35
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759159194; cv=none; b=paf0PRIpJgDkou96UF0nNik2ezfTPGqhctUqJs9E4v8H/HqZ/QLPNvzI5nRf9p22MEZKnv18AKMSCv4EUQY9zjA3uz/61bxH1N/lQpe2G6lh7dJgs8OBuiMqe5gwcnHEhcqChmLsX//onYeQIrPteBH9AfgKbhbL9YYaluBDqio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759159194; c=relaxed/simple;
	bh=ylvrly9pXeYUFolFkMTcMFyZyHqDxcK8FJzZXxsxlds=;
	h=To:Subject:From:Message-Id:Date; b=fae1nNZzez9NURwj/UF8SJqy/JDSWAow13pBs4Eq0ys8XUKZJ7gspLyScG1mgD5EdB911WoqMsu7GMeSQc2xLPmLwYplJSN4R7AA2wQkES5A+/nRhpzFfO1hdbAVjfciEpCms2rPntpPP5AFR4Si6Y/O5wltZsIjOK78qkkxJGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQfI5u1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQfI5u1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C49C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759159193;
	bh=ylvrly9pXeYUFolFkMTcMFyZyHqDxcK8FJzZXxsxlds=;
	h=To:Subject:From:Date:From;
	b=bQfI5u1+/ltXopbAyWXZQDRyKhHtSzscxPrsBIJRpsh6Ksm2OSMucba/4K+wyn6lO
	 8FFi1SWUjnWijCDV1RdeGZO6HxdQ7UY37afsylyFWGFWo8ozyAx7SV6ra20vMF4zfO
	 AFnkxY8Zpp5qCoqp0YLjEcj8RdisoXqJd79fSLdls9qmcMvDcM5uPc/URV6eZObbtm
	 zRv812rLow7a0VvyMdkGZQymU7UaKnEo24T4LZadM9NWNxc8XrzReSFy0R2seHXEtc
	 gKZT9lDtG6kW/ZbWznFbkmGJGppH56iEG1WypHdHxF7QN6yjjI0Yhou8ykBtnFuXNp
	 QFnQGFSKcoj4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D06CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175915919364.23001.6938254368157186939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7935218686461c22e393726192fb2b63ff30e746515ff9be4a1b3ac71753914
Date: Mon, 29 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759159193
