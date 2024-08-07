Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33570482D8
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723009554; cv=none; b=EJsHFMvmKQXXt9y1ZJWjHHXt7JmKaFzQAmTxwiJIbXLgkanBUKD097qs1IY0lS5MDmV5ynSrWh+9C7ukrosNdKuzSki12jVQqieVp22I94YFlmeS6WHMaxkFts0K1aw+gQt1ELLi+lvOixaC17j3hF1CamifNI7S7XLpmtCnGa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723009554; c=relaxed/simple;
	bh=Kv8zkurZOj0imNZLHKGlF3TOTa5a/L4XPRL1czkHsnI=;
	h=To:Subject:From:Message-Id:Date; b=k0xtC257fT7gGcJ8ZFK53x3iV1AzH5AOBXg2VoRnsiYWhpWMUFBawuFZzFxL9blPDBNse5DYRbkKPkmzrVMmZuNU4qw2UOBLLWbfSZwX5bVu2WnvHomc6S167LKreaedwUhxgVQ7wtqfBOwZTL94uSit64VW5MOB4a7xB783nok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxoh+duc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxoh+duc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A7CC32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723009553;
	bh=Kv8zkurZOj0imNZLHKGlF3TOTa5a/L4XPRL1czkHsnI=;
	h=To:Subject:From:Date:From;
	b=sxoh+ducXjIvAIvTd0RFcSJJXiNeAPY/N5coVYYiNeVxSCvJV37SLSYQAQKTCVtyx
	 gjBb1DlMYEE9ONyVtxMk0KrFPdnUJibFwX2tvmMSDQGbEZicJXxxd9b3jvmgdjuT6C
	 s6UtoSkWOcM/n2z2qpkmXW4Yuu2hH8DrNhT+Rb76ZG9l+3Uqrx/r+jiV0ZEeXmvwZC
	 hiqdcB1aEzEfZZQApBxjxwV9Ut1ZHfPhN8/CsKChEOmWCPfVVaWrJSao+iZ6QMyfI4
	 G2i5zIfYVuqgZNE1yv46XirRGc1BVDCnNyNOwlUvHevWQX/+9tm9GQXr7xERTDmOVZ
	 JYPD5ZadARp5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986DEC52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172300955361.20363.14498230781552275076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9aba67ddff3219125edac8be71fab1c14171e6f055e802dbb1b8f8384c32fcd
Date: Wed, 07 Aug 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723009553
