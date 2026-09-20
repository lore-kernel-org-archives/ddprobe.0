Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B45E448BB2
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789913434; cv=none; b=a2jDc1G3+ixa1LDxDNRqJhRtORm+FkGqIRWXm5x7/fGbSbpVqpZMn+1qqcnKnOmCqxf0oCwhppES6csZZflzsSbBV96ZvQrm4qQszHhCiBddYm/xM4GFVphe6ue42QOWuKEuaXRYw8ZmisVddlPpv7W7GAEJOwUM6qBDQgpgIug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789913434; c=relaxed/simple;
	bh=4hFp4C6GXPcohJWTLjgggeYiZWs1lzTOXN+rYavnnxE=;
	h=To:Subject:From:Message-Id:Date; b=PRZ0SnzdZBJ8y89IJ6idnHLk9FLaQunTaAudezPg9phYQfmgbDgjf6bdXlsqNmNvn/HfQiumFB/2/rs0LcNmRg77puPe8DwLtoSWmk90mW00CYfkFDqy6K5/iooMQftif3GAMSpybxa3KMUIb4T7WEhv1SbE7xWTqpHwH6QMlPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVvMT5MN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVvMT5MN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF72EC2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789913433;
	bh=4hFp4C6GXPcohJWTLjgggeYiZWs1lzTOXN+rYavnnxE=;
	h=To:Subject:From:Date:From;
	b=eVvMT5MN97raV/Qjcql2YWnDk/SjfLeJOYo0wYg7JWBUtJsQLdNLozyA6L8tKatmt
	 LaTenN/RfaAXLUVMKsG906+jcnOhXK6G4qQL4Tijns/Lrhd+yFGXIjSZM7DVa2pXWk
	 XsxpYfXa3UfQix5ZWjfzJs1D3hzmeJJpitjC3Niswe0i9PjBPQpQ+xicM7PQ1Q8SZp
	 I9HfgFfXxX61POZnKCZg7ZFXOZ25/oj3roYhScRO04nOMcRAlrUJxpQBHeopxCOIyR
	 TlZlGVK13UhoI9WPvIijNv+NHvXMdvE7UDeU1//tnm9PMmcl56SF3BZUntYJUZvEFx
	 p4UAPgRgXaPWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC193C982E1
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178991343369.15706.2523470196822147959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16fd5da4be942d3ac906bfead2db9f70b923d6e17f5d723600de42c64831744d
Date: Sun, 20 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789913433
