Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131B12E1731
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755767994; cv=none; b=DV1YcUnAPiippMbIAq4RFU6lAwu26/79HOzRgR5TeMV5JlU+aMiDyPtSt/8o66ye/JFirxLUdbeCU15mb/9428MfQJa5s0yYTV6MfbSSGAtrmI9mq2jhfn0+a5tc4Oc21rmLJfJjber4460DMN35EHNt4IZYNOx9MdZYyM+8njo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755767994; c=relaxed/simple;
	bh=MXKbvpmQdzu4OavpBifwwli2a3jOuHVZWA0DZ7BLKZc=;
	h=To:Subject:From:Message-Id:Date; b=l2IC74fTj/8kL93W5F55H1tBo/Ary+5ovltmzUNK3VHh4r1QS6+ngCf6h6BSK37ZkuMGrx40SPs7vEy0XELRi7bER7oan7gxQ8uKRvUBehaNjP7M3b2LKZLXOuz1aDwtnC6UcDLu7FOIBpV/+gi/wGJfHsLPy51qWoP2dOma42I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7R39J4h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7R39J4h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B038C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755767993;
	bh=MXKbvpmQdzu4OavpBifwwli2a3jOuHVZWA0DZ7BLKZc=;
	h=To:Subject:From:Date:From;
	b=R7R39J4hgzT8P9SOGtFoiDlGBUl8pxu6/Tear4qozi0OhMlo860SpATOf8neaEJr6
	 +zOdDvBAltGlIoLTilAFe8x9FK+XtJQOHk9Dk4ILvAS+qC2cN5zuLReD3Mr9xn6Qug
	 lXE460Soi5gaxfMbyXC0BkjYDuZAcZGDgEgzma6es+CswnCrPp6xyloLObYs6PKhNQ
	 AVLE8WuuH+JDmTlTlryFDStgX7mhsf40gbxLhIzmIooHKohT8A42JfR4bqmoZGBy8f
	 QLXShnYSrTmWHu+BsU0mrRshFTJRJzN9WRMu+G94Lm9hZYW6O6SAe1TDlB5bBJU1ae
	 xgHXmhjwdVwDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E500CA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175576799357.8958.4805797533181893529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b59e5b0a1adce74064cde8a2c185d55ade70d518bf1cf2e7f669bcec2e88b4a
Date: Thu, 21 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755767993
