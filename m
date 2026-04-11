Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0F62E03F1
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775892454; cv=none; b=aB7Y3OpNF6mjsQnCXD0+/Yvp/QeZ+oc5dwhoiUzCqY16VKVBMtwOLp4LBW7CRlYQdpKd3MQJK06pvpbHzA7brvuH8y+CFBCuToSzO5q+uLfCBR24uPybCEQPBo+v00c9vYfki0cE0GMS7mzAiZMbXnQ2b6f7/VuAaEXsk74T4WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775892454; c=relaxed/simple;
	bh=piH3JK8/ELPSKHhaxV/Y+tuZS1hnw/q8tm0een+7JYg=;
	h=To:Subject:From:Message-Id:Date; b=hqbSm8B/n5GK41f1cwvJRxBGoKvsK2rv19L44hiw/KqJk8t1rCi80SKhJd30BK6Ck4947MgDEN2wEQL5cjEx2ACxk+ejbMOmQb8xkgIHiYLoURjwsjPE+DNFepl8ZPUa2xhXloQeIa7KVO8S9i1aT3SL8r+ihaaWKgtuErGQ69w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7EsnmQE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7EsnmQE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB8A4C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775892453;
	bh=piH3JK8/ELPSKHhaxV/Y+tuZS1hnw/q8tm0een+7JYg=;
	h=To:Subject:From:Date:From;
	b=e7EsnmQEZBrBnCINErDLoywUUtY4jrsvZ2HcbE+BxmfHnI/pewV8Ijr7jJlhKWEbv
	 EBuWOjHFkQaFQfwBDvSyCc+MvTSc+x+2GWUoLgxwYeVumy9GAVI357vaOPx3qr6tom
	 ev4pEhuQ86wkWxW5RtF0rjQfUZluLr3IDCn6N4E9UxoDAlpspyCAcp5GXJx20wJq9Z
	 pnOWOnUv1JagTWcJvhJ7wRo54Vr2yya/ul3znbjKH0/jXmx+TeVe7h07uzJ1UnPrZX
	 oTp0ZQ43LvO7Sw75hwmq/1JBs1J1ry1CCegs8S9nhbKhUg0DcWhTBgkljCVXwTy03n
	 6LsxF5ZMKeFvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D46F36BA6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177589245368.11886.16984866615863257942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c53e1b8a6538b3889ee767baec45c9958a32afd32acafb22acb43a2ed9a69687
Date: Sat, 11 Apr 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775892453
