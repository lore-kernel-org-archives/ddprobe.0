Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B49339363
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787561434; cv=none; b=CKJUjMPkHvZ/OocKyFldWiyVkq8lGNvabfs2CPHnTd9daRGohyeW3R2KgJs54GBYm4bdC6+X+oIz2dyLEQpU0WGtzGEZNjF6FnVK+pvyddvZq1WuuUQh8OE4nEsATSXCFUkJTfGiGxwB9VbrCpXuft6bBwSCwxW29zusHjyZJwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787561434; c=relaxed/simple;
	bh=6sYL94pzk2Ju1zIJrG2oJ2JMkmqCOjWIhRIhyhFbZp0=;
	h=To:Subject:From:Message-Id:Date; b=DVUCh09LAU5Zr5lZ4TTMPEf1143FaFv39Rau1key9bzbuilT5avz9M39+OOZO8719yjcNiPYTyucL1GAo9cAJiUzFAN/tPPlrsO1lvpPw4D+F1aMHg4cEXA5Xr73MxFluaxeRwFhrMmoEDJ7VMlDq5shYEBrIMcnA4vmZIdbZ18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGNL4OMN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGNL4OMN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38BEC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787561433;
	bh=6sYL94pzk2Ju1zIJrG2oJ2JMkmqCOjWIhRIhyhFbZp0=;
	h=To:Subject:From:Date:From;
	b=pGNL4OMN+NaXN6h+cmb2DYKTnu3Ig1Ng+hH0hmxOTMnQXYSvsOPHYKRCWc3GxQStY
	 4AA0W/fy8+EWp2p8BasN6UO+59cgUvUPHCrJa75Ql/frUe64v+qegzhtKkAI+yNHic
	 aakLDYnbu2PR7OMmwbtBzBrjw8MsZ7RTDsHRjjxf2c9V+2CPv1/esixFk9kRarlTRs
	 gXtLHuKunuamwVMrt2dmbEEyl8WYmGsPNZ9rYlnUGvCRDq04TmD+JjYAvjbp5RfOIn
	 BMKsN5NmgpkgxjG6g/lzH/zqQfdaKML1mQ1R6324QQwsQEHkfFzYh4ucX8yvtUNnd+
	 CMgfVdt6PgEsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD70C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178756143368.28470.11350167463870016680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3df5feeca9cee5a8d3b381d9bc5e40740ea9903ef22a8e61018b6dfa9e02b06f
Date: Mon, 24 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787561433
