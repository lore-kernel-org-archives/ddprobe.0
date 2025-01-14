Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2CD232437
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736863554; cv=none; b=Cr6ua7pGDkbn/AT2wO0hboiQlBUtvx3RVUVUm1cYyGSRaocXPHdNw1DylWDXyKZekHPz3ScNJBYNDz0sb8U4C9V3DmWmXwLXeH7uf5Cx1vGzqfpw0qntxtqZxVjRVAC6fqMCdgFjHcBMLjPsiKiu2febbc6Z29Z41SOWqFwrUFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736863554; c=relaxed/simple;
	bh=WAAXPQ1miy+4fCkcAsilrNEnDDb87LkalH0s71SJLQA=;
	h=To:Subject:From:Message-Id:Date; b=Pp00OkEI8URboCTncvuzGLLX9+v5bhbhV+sYKcwjx0k3wXpuIIkRVis6Lielbvynj1RZLj9Et81esAsvAXOPYN0RLbLl0IFSDp1d01rDqlcv/dcCspPvAIAEWi7Kt+F1eFSI73e2wcRqyouuzRFIgGLWwWM6otKii8gJm80CcPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVdd4M+u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVdd4M+u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E70C4CEE1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736863553;
	bh=WAAXPQ1miy+4fCkcAsilrNEnDDb87LkalH0s71SJLQA=;
	h=To:Subject:From:Date:From;
	b=TVdd4M+ugyngUvVsdGik+1AF5+aBHvg6PTL8k8txMiaVSwi3zdgDo9vxnJZEsSLuQ
	 JnL9qV6RGTkkXv/FEPBEopb/Om7X8+m5rVLZ3PNfG9UX+boHSKs+smrfw14MESgovc
	 Xw6WWLyCVHp4QcoNf69G0O1Y8DG8wbSFJZ6AoeWpB1IWf50Iz1gsTZrgkneQ6zXzD7
	 Kcit3iZFQ5iNgD90+hJqLkGTH+gy46UPgHgoNg/47DfPcFpPMp5vm73meG8uChn/p4
	 kmvXElgdqv+NeWetgMV1uLmNwFTNpiKJNICvrPlSBdNwSyqjUfXpsito8uJCd9YFXl
	 TYMKdcBxEx8ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922EEE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173686355359.17110.13632217666370542117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af9c0519b83f6203ef00055d635c0aed47de4aa5ee1a44af6431edf2fd2041d5
Date: Tue, 14 Jan 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736863553
