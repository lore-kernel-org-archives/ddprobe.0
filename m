Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B77B1A9F90
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761273594; cv=none; b=TYt8cI0WXTWW1chuPQD+h6YaEutxd+r/FLeArbM84WsyIOckn8uNkii8Bc2dbzSnZ/F9mL3JbfZyDv1qPtJH2zbZdRrp83BEHIzzclY2+BYSiaVjZhARyu4rOyG/rBwyezoSZikVXEZ965krtDLpgGbeMOFXncHABMPopQbYko4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761273594; c=relaxed/simple;
	bh=9QwR8y40WbqoJxq2XLhvSa+/1MdxUQ1w2zNXijQHoKE=;
	h=To:Subject:From:Message-Id:Date; b=uiTMsXuQ+cXbXKdvWC3MclBIcyqyePap0LY/r3ZdjYijMDpGag6OJvrg3uzjpD4bEU9KUwMmVBCRc0bAUjiZaysnwOTYC3PPzt5JffUuMb/kxgtqWk/NbJGjdE5ZZtzxZmoXndB8WKnPlLqUl40LYZ2mJdluSyJ56ZaFAGTjgFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fewCsiz7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fewCsiz7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71EFC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761273593;
	bh=9QwR8y40WbqoJxq2XLhvSa+/1MdxUQ1w2zNXijQHoKE=;
	h=To:Subject:From:Date:From;
	b=fewCsiz7tEIyj/lWh5jtpwi2Lmi0wlwgxqSfAeTH3i4yp389ZcFy2j0v2B0nc10JE
	 uUr6Bgu61mOb/GvrhvwwhQn5jDavL9PNKNASFtEW/tC4z30qVsPNtyvkWPNWbamnu1
	 T8VIic1APPoM4Twxc5eKJDaVmbYLyEMd6LwBav5rbEGrC3wkS2I97kSHNEb98pSdbe
	 kzreuBbWjBeJLgYHTPeo1cwpqSQIWrj0ETHIT4U8Ut9zv5QCb7bW2KLHVv/CQ0OsXY
	 A90D8lGyPu/51L0023DXNrvlymZr6Qjr7jrn/VciAveUM3OplXAvpZmyLTaMvTVQgh
	 yC1YX8KPgQ/tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93687CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176127359358.32064.1196792393439376798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8ce8d7c23d2b8ce04d738f520a57ad13ac58c7d62c1a07f25e242eabd228c30
Date: Fri, 24 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761273593
