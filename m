Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEBD263C9F
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777721254; cv=none; b=p0950A3KFAFTOFsM4dp0tIH6OVnib5EoEcnRYAuIkmCZApL7Na3v3jHL+tNd1Nwr54Ldv7dW5A0YotkdhCUdNyFZEfhe9tIaY4fbmAbrVKvigDZaORTu77FPIC8YUqfIsvqQbYCs+eblSd2u9eaqzIVxTzChx9+VF7A2XX26V9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777721254; c=relaxed/simple;
	bh=me5QzYYtkFj0hFRmekX+PQZa2mVgGtBX1c9OD+/4nBE=;
	h=To:Subject:From:Message-Id:Date; b=ioGuNRHcKj0TyalNizK19mGWUxPwknqMpjq8M9qkoZMOPq0hX3adQ6mXjWyWp4fRao4lGVFcCy6B2t7WRiUw+Lj10YhJiAeK8V8p1UcrDRqjRvfsNUe3FWqsTdzGBX6sJmy5Wds9wqnoun27EezVGZuzMBvs3Hh8r9buBkh3sJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGueNQo0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGueNQo0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C04E1C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777721253;
	bh=me5QzYYtkFj0hFRmekX+PQZa2mVgGtBX1c9OD+/4nBE=;
	h=To:Subject:From:Date:From;
	b=IGueNQo0+srjG9UmCrE4snxTPYCCMvUMYfiXG/7trMwPl05Cq0v/QGc0cnAYDw0lM
	 62gFn0am76WRhLci6PcQc6CJ7Cv3Wc+OojrGQnsftPlvjmgqtAP02EWyDeLhv6zBd9
	 PUoAXMMvs7j9e2QtJH8TkBuZ0dFktcVLlssmNQW00IqZsXJF3AOo0C6VRUPJ1cSkGr
	 K2RlDc+JlbQA1aysf8uM8FTSSSA0iRVZkL+HZR3XBTKIpYuVmruYzgr48y2Sib/c8f
	 35K3URp5G9FYJRzI6aSRRraZb0D9lLxewN6ysUrHFwoVOb4Bfi9YQoFbggeVAwFLzv
	 +zuRGiZGabIig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF212CD3423
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177772125368.27695.4378395608898262509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a214aa7c132ef41887befac3375b0231c57b6d5dd098d602c0214c04693a35f6
Date: Sat, 02 May 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777721253
