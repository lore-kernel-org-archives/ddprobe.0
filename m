Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2046583A07
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721394954; cv=none; b=VF1IcurhuaHSzDv9e89XY5qRw5GyNuw7jiJSVemcQfopdZTbBU61ArU/nUbb46F11zwnPnShnGhNy5KGDm/HThTmK3Ul6lM4QQtuMGYwGNX8bcziuIly8u8G+ZJmFe4Ktsc9B8Qto7+JmeNsoNIZ17tJD+fenyFVXJtFyT2VbNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721394954; c=relaxed/simple;
	bh=bSovoQFzytNinm/QbdGbPlWx+YdEE3O+jcsXIfT+D9I=;
	h=To:Subject:From:Message-Id:Date; b=d9M1lw1n8624Mj2HO/+Xj6FTqIFFMx32pKorYNYbprSwLu1SH6SOI/jRatowLFvn+y0waBxJMwFfGVxSZREIn4cnkJXcoBiNZpdo6Rd63SOSnbPTJxgZoEqX7kmf6BtHmqGMs1T5iBL/TofLBQxj+5TaUkrI9MiKLNCLjPuR6no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtmTOaXr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtmTOaXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6481C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721394953;
	bh=bSovoQFzytNinm/QbdGbPlWx+YdEE3O+jcsXIfT+D9I=;
	h=To:Subject:From:Date:From;
	b=LtmTOaXror92x99Qkp8j18AZlG4Om51sJ/Q1Yh8mxLxOd7ZeCDe0hsR0H3/hAOUnW
	 aOq5d65gMuhQPwBRWGvI8YiQzS6QgjnhR4XUjV+bIwZWKLsWgXHFSnH29iZIDWomhS
	 ZoX/9e6+RHQpdu/eaT73dlkotZ3CphI7T634M7KqT7UPvGvIx3Zn+VaE6Nb3yM6ODP
	 pijr17r8NzABt6xGYxjK5HAhf9XDqKpnez9LV18dGQzI1GLZAlMgQym3Lx3AY3QgO4
	 d0eD/6YR0PZbOsfIxpof2VrNNuv2B2H4wi0AAA0Az0OMokChLLYX3A+uBOqZDh1faP
	 OIrcjaAA3Tb/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E4DC3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172139495365.21922.7082453016699250330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df12b0290c8d2f32996ffb2789c627a6719c09bde5cd4f81373f748c82298dc3
Date: Fri, 19 Jul 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721394953
