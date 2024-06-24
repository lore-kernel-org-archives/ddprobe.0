Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE2A4962B
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 09:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719220343; cv=none; b=WO8n9VZs0wzIuoAC34SDygCZNKRuU2zjdbSbEA1HPY+NhW8Ffiz8wniMFagd6L1kIryt1Q2kEIAulHf7OeNKK24B0Zahf85Mq3XwEgGEXpTapmmdUQRVZwEDbOtOdQTlEhiPCd6kS0FLeZ+bnd6ErLyw/edPf+DZL34NHVJgtjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719220343; c=relaxed/simple;
	bh=6tLeTEqyQC8okQP6eXPwM5lyy4AQvOKIwMuFgHbDAL0=;
	h=To:Subject:From:Message-Id:Date; b=T1hi79gPW+cjyK2tKDP9tPd7ZAAL18D7bvbRPyPsaO2OyH9psIetuSVlQKC8LMgKWSed/W0AvisuS7eUc2G8/QsjZOqDa3alt58u/+Xoij5/tb8NU4Jqc/qjvRohETltvDiyO9W9c1A7lwj/Ibhb5gv+j6Sa2QNt2oPjP0Uf3R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtFJfeq6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtFJfeq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D319FC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 09:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719220342;
	bh=6tLeTEqyQC8okQP6eXPwM5lyy4AQvOKIwMuFgHbDAL0=;
	h=To:Subject:From:Date:From;
	b=YtFJfeq6L4QysBoR3+DHvhPCOxAYrFwoXNSlRhpEKCYu8YqNhNWOTyrQxYCI1S+0b
	 qnXYG9zSEU1s3Gb1ZU1UCtNMEsg9UJC9mDUMRK5bK2/QvyyjLlDxfsDjm2UQ5pQzkn
	 zT9tWMmDihp7RVeetgRJADfB0W4WnMAZxRBpmj0l80CVlAvcG1d3AjgzqjwvpFMXlL
	 NoWrJWLcK4CjXyYGyUIju+iFbwiVA/5fBFJ/HdadeLTVM2pvohlWUNEiWNDroPZPgh
	 0ZSlWvv8w0fYSQ7qyFeMO/iqb0E2Wp/ucvsxlpu+KAtVz+mA/nfJJpuG6x9m+Wjfex
	 mAnfdC/R1nkmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2278C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 09:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171922034278.31920.10460051423632940221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e57b95749510731f4211f62f085949a3712c70f06d865589830d8f730c15d94
Date: Mon, 24 Jun 2024 09:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719220342
