Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4FE134DB7C
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768217033; cv=none; b=abs6i+y3lQZ0rxuGeWBmSzQxCGg+ccVs9adeLSOD41u6Xtw/uLsuPDWzMeOd27miRQQNmGWvJUbH+xOJPybgiWXm9xjevO+dq3Tp/jEoBqElBjbMQh/RUbiPga5RKEsyQbqFoK2VXQ5DtAgqZt9IfxGevXWoxgfRwrW6M0J8RSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768217033; c=relaxed/simple;
	bh=RWyGFSfwa5mEhpJVDduiLb2MjW4YYabTe4GuNtNQ3Rw=;
	h=To:Subject:From:Message-Id:Date; b=rYU6ZIbdIqLXmTpOcpvoV+NgEfgeaOHRJECiu+chu0GDl90pfezzinYEo9ZLlqjzPdKDIY6aYZgeSSxx23nG18nng+jCitut2pDQdrjwXlnt3Tm+ZzLf/hgJ5H7bp03JwcXiePmhT9KqrzK3qEo91teXjOBr1PpWcaElNFaieMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecWTyeSx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecWTyeSx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8BFC19425
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768217033;
	bh=RWyGFSfwa5mEhpJVDduiLb2MjW4YYabTe4GuNtNQ3Rw=;
	h=To:Subject:From:Date:From;
	b=ecWTyeSxcHQdb76HiHsCQDgPkZv2Nru4xMRoZsdfDf2ltPBqU5p7j4xbUKh8DwjSu
	 AcMZnFpO1iOW5SSREkU+DVHWwO8x058motPofZ8WiOZSC10pnye6SOA9htKKWfo3DV
	 dBa6J4JkK6P5SbhuuxmU1vnleFOw89XFYUQijv3XKAX1bTEEQTJj9owWfJS51LgnWd
	 8zcuz26TkiCP+2uaQT4eIRpoNKycFUf7GMnyWwek1gQXC6i7c6Knp05DGucZNEbMMd
	 WGbC/FScVf5rYJxwHJPUfmQyLRVV2Cr3ogSKWqYhF6uHIJwyADc79865k0Glkt3nrM
	 dCA9S5hNEA4IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D1AC9EC76
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176821703358.13357.7315525662421730309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d960bf1600d31b7fc8867502beeec8304ba5bd87d1a8285b5cb380cdbc9e286c
Date: Mon, 12 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768217033
