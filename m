Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE16801
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744076994; cv=none; b=PQX/Npfpsxt5xjwXqr1rw43EGovTtHa7V44rLx+41TDzxSaPclY9M+krxWh74dNGTr4keY7aCFY5eSiL7BBhztIEJjVxgvLaFhA1nvjVcgWi34D2VSXJ87g/gQ4tQD5kR4sVMSO/sZxJjNKJFMpDRVG5szuDmYBbdP+ZJ3DDABs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744076994; c=relaxed/simple;
	bh=QW+f3dDuwPL2fq+uRgvciE/ZKDNR+/6797awvXcoZwQ=;
	h=To:Subject:From:Message-Id:Date; b=sGH6oUMXzW+M8SjuYqo39JmNachlRM8BT1afvuqO6hsAiIMC+8NshBhlaCnMTeshGWoV85EfbkO+B3Bv+Ao2NaAlMahsSVAe9EdI6uAepF8D6mtDR3pflzkCc2vIgX8eRisedUltC93wPpbb6pldJUxOW6pW5vSDSXbSjSiyd/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izvViuzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izvViuzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AFBC4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744076993;
	bh=QW+f3dDuwPL2fq+uRgvciE/ZKDNR+/6797awvXcoZwQ=;
	h=To:Subject:From:Date:From;
	b=izvViuzh2WAlpz/3zooe6KGPlMZOmOEH0VY1+CwufDXf3wLDk9IjFGgYOGxXt0piS
	 m5vXh/vusSsy/pCkeDliCxPn6a0zQCkpXy3XBTNh7BLhb4gZIkyDOvXzqUXNIOw2cK
	 0Tf72vq4GPEl/yIC+lWqlIPhkvL78yEIpwH+NVDv0f4dKTkxAowsd7VWgH5i77qGa8
	 5y4FoJrtrQbZ6dOYh9RTmixlralwX7Yj1xgVDjiLTeRm/I8N4LuDd6vvDChk22Dfqs
	 he9Zi1WjRkNRRF/fkrjxdY6Xv4PHHx0j7XNV2Iux1Fn5XjmQxdsm1l0Alhkv6tLSo7
	 QhemwqERFC/Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F75CC36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174407699357.12146.14674813485765064627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4adb956e4ffd8536c40ee828c8f30382690167b89d438672868e176fdf4f6788
Date: Tue, 08 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744076993
