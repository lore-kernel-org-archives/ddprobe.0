Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D9B31355D
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768464834; cv=none; b=ZWEPHlsGrcCv4Ozq/o4tysu5f6lToUyk6cY+LvVIt10iaWT0qGKJyTHiaL6ubRzIntuTNoHm6MXsZVnbSleJAoSczvfmv4AMdJqGTgcQTM1j14SGPKgxAfiZUzHqYjLkjmpOYTT8luxOA1xIw91Bsgt46fxqxQ+L+/7a+wp472I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768464834; c=relaxed/simple;
	bh=r06gD0eSF63v75zpjKsc57dgm7Nqfd0Stq4f9UqvXEs=;
	h=To:Subject:From:Message-Id:Date; b=bDuiEanjUoAO8aNjuVJ1tcFx+xO7r+ryt7yDxIgY0eweks8E973lr29dHEV3LcnjElHd3qFwAuYwW4Unr/1BS9ZEObj8Ft/EiOdpQSVdtUs44Ri1i8sPUE6ywwczvpqbzZ1yy4FutBIEJZXRwUf+tI0sqKZLbPO9vAiQZK8cLBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLTvEOWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLTvEOWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBF7C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768464833;
	bh=r06gD0eSF63v75zpjKsc57dgm7Nqfd0Stq4f9UqvXEs=;
	h=To:Subject:From:Date:From;
	b=YLTvEOWOsqm06EqVvnAvba8J41iO1pieh1c8/lfoZ5jJ1aZf8BhTQR2QOxNkXOIO3
	 DLA86fo5cmfpFCJ5+9ow/H1YO0LxNyf6rtz4aGl626Mu5gVtD0oXd7VUN4rzKk1BRq
	 tNsqecTc0tSETamAjvk3sqOMpi+UIMAx5zkaRiJRcI1vfXVN92EljMK1mZ/SYGmVon
	 B+rJp6sLKYKgdd4ZiGOS4051E1NWIV8j1fa9Q232Gsb0toMbFZwkykghI4QvJznU5j
	 l76XH/e2wkIpZaNrpMQHBufnSqxhcLQlrBTD0Mm4BMoe7iq04hwHqn8X5+YleVxDo7
	 4UP2FYuLe1rPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E1D29FFA
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176846483357.25548.13954413414661099848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a1848880d80ecf7d5460766f48bd0d056fa2500a71d498643f0fe7b73f1c161
Date: Thu, 15 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768464833
