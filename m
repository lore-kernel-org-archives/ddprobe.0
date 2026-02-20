Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D74333F8A2
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771584894; cv=none; b=nsb51GTri0Cc681Mijr/qW1yvc3ElcBm/pHMTQ6aULmw0v5Vp8Q0/o0AYGFWuzQzPJkB2gnPhXfBvoC9mm53QTgBgp2f1v0K+CCZ6UspTDBl2YA+laUudXoGkZDSol06C9eZiPou5rV1SbAzlPJ1W/Z2QT0edMGAiDpR6XtDRUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771584894; c=relaxed/simple;
	bh=jf4vuSpdN8sLN784TH9MAmZzzhXR65xDsUleTbBKOEI=;
	h=To:Subject:From:Message-Id:Date; b=JMYt8bP0vnlbUtEuWWhJy1eoyncGgvs25ij4cdo9gEus7IY211Q7bMSj2mEmyRkEJLmE4nFMjNUaC5Polj9TFJq3XjGQtxQPUlNB5apX2eWf7IY3c3MfQCoNG8q06/0hgc7XMvUXCoTZ2YU1ss4Mplm4RRogqHiXU64R1tZvDRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbpHAg5p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbpHAg5p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54ABC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771584893;
	bh=jf4vuSpdN8sLN784TH9MAmZzzhXR65xDsUleTbBKOEI=;
	h=To:Subject:From:Date:From;
	b=VbpHAg5pzZDTA9+Mzzgzhb9BsAau6fte8cBkohgjPZkKa0ATUmahUqVQ704apxtoY
	 L9npXx6+hUDfEsJ+kswEq/enpJ1HwpsC+0TTv9lSwRSk9OoorRRZ/M4rcIv2BgM7xB
	 l7mH9KizW9OV/mQM1n0HowxmufTXYMgWc13UkL9eB9Er6nQewEsf+zykouyx1ont3u
	 HfMzwh8/JyB8zdoEku6BkA3U3uJwT8+QCPAJEJMuEgo8uPQqz3kiukgV/6iDhoNHs0
	 KT+R+WJChhSdU61i9WU40x+xerDYN0MxhM/V8flpRCiDzIH8IAeB5FQj9mZpeRkWCQ
	 7LhzVdxk/mn6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9256FC55197
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177158489359.9251.12817558852098911918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed101ed8265e4535d9cd812bf2e6410b3767a02eba6853448ce6b228f2cd4292
Date: Fri, 20 Feb 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771584893
