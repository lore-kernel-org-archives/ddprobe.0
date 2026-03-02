Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD75390982
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772490294; cv=none; b=OJpj+Xv4rHH2qAYxl7VJ0N0JqC1YYM8SHinkAxihhqrjJaawR1rMO9EJsDIby7DHvI+rZj12hkhyIgbAbDZ5FOWrYGWwKJnTsTy/AJQ95XbT5NVMaKccjapKj6Rdl+tmlouPphKlOHjft42OLYvs/D6b5FXCefg3YOGAqZIZQn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772490294; c=relaxed/simple;
	bh=m83bnJYJ1yOwJhtqSVte4HUCsB61wuCrmgLEUoAsm9s=;
	h=To:Subject:From:Message-Id:Date; b=lHBIl81IuTHUPpXB8KBxsa5EsBiC5ygPInXr8Kh1GOWVEtl6uUyi4/YV0XiJKWKXoDmSDe4IVAaw2iXye1IMAIcp/2Pd9A4AjPT2syuQEK9D5+Z9vgVmiee+LK8Y/uvf/xDRzVGk5tDZqVSILVOZWL4GH87KhLhq1F5m7O625KE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujeSZfqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujeSZfqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE95C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772490293;
	bh=m83bnJYJ1yOwJhtqSVte4HUCsB61wuCrmgLEUoAsm9s=;
	h=To:Subject:From:Date:From;
	b=ujeSZfqo/ssAVy19q5GcDlmjOlJO+mSH/Vmpxu4fVFb43bnKXFRyVgLukKOHN5J6i
	 nQ9GLUSk10eirmFREi0koNaMoFscgRQPs3GYWaJNOuNV4PgvkGVOfk0EirQKuN5Tn1
	 NPnIzUSSKCQdWl4ObV3NWtvzxubqSJWI8jQUjX+YkXrV9MtHkzUNriiZKiEY2RGbkv
	 uwb5N+YKcOPQnu6iukWQsqa3yWPaCUdV6Utr7Dkv3j1L3vvgB3Z8z8GLm6blCjrxR0
	 rbrAqEa9SUOftnZwNiRyWSdwcrfNT1Wz1nfxipZm+TPlWLtaT/GQcVIW0+XESiHytM
	 Pc3i5+FAa9XMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8ADEB363C
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177249029358.4034.1963808438744280407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b3adf922852ccec6d262c6e3f0fffb4a63c89d8dc277378b939268452556d3d
Date: Mon, 02 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772490293
