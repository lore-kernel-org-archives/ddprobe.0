Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4D518787A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736445954; cv=none; b=W/02H1LEQSTLlLHvyn4+eqoD5eiRk5CAoYT0pQxh+z8VMJQO0tc6Y66b8lVjMjJkTTS/IgYgNc4DsrHGv7+ck8X1MjoF0LKu1eBcLETBdy4htMApfjrG/z0An3MvxmVRiRHOaS/A8nqkeXN+Ks4wf1pn8WoRYYryFu7dfi9jQfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736445954; c=relaxed/simple;
	bh=fUIPGag63NC5r7QRwgJMg8b7IqR19Z/Ko5mdgTyqY5A=;
	h=To:Subject:From:Message-Id:Date; b=Z5Lie4Qq2ROsgzDzeXSsyghuDRxtEqFzYMaLEv/9maWGBNsxtOYOID4z14s5SzpAaePt9g2X7niiWle1d5fwT3PwUOAoXo2VadHD8InGXerDo+2gAX/Juw3gCPoLvTV9B4K47n1rLggGgvlhThZnFq5ngF92ti8uRay+M/PaFsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pI+Me+Qu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pI+Me+Qu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE86C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736445953;
	bh=fUIPGag63NC5r7QRwgJMg8b7IqR19Z/Ko5mdgTyqY5A=;
	h=To:Subject:From:Date:From;
	b=pI+Me+QuqH7Tbh38BI76XvknZVWfTYjgyr3xKBToo/FNit257gY7/YOjUozNydhUY
	 pcpFN9VL3uzdSpcWznVqeSQ5KU9tyMJuwBXaD6JEO1nksBBNvK31KgJb10NuSsU6J6
	 dQ8viLcmtwYwR31bOmVIjHiyHaJT1ORLnRzVUo1/I30ADaVGnsunbg6o203HAmRbGZ
	 uo/+D7SWKCYRlaaRH3LX3H9F3SrsRDwByxHk1BrWzgCg5eqhXwrv95hvjv4j5qjLSZ
	 yRTBbfBKjLGga7f6riW77VNCKJDsriJBoflOQW4MifVQlaiAjNMV7Q/pcUqjRreo1l
	 D3LUUpJxDSyEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91102E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173644595358.15561.1874598464833831815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e10c8c32a8ad6855d2e9179370695b80796b29cb303ec1453627485c55def5b
Date: Thu, 09 Jan 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736445953
