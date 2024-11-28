Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA73211C
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732837554; cv=none; b=aP6XmGE4dDolOoHNulTOryzn+jZR50hMDLaZ4i/Yy9vY3cQQHZSZ+NQ7XcA+V6VvGMgGNA62IBFYzXFWoELFJy7ljlgGmZksng4xWCDGKSwJarMkmWGktcqChrvBuJb2qJWyUsXqEG51DKY5UQDs0HmskI45sHf68GiFBC8NN9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732837554; c=relaxed/simple;
	bh=51wC/KTQ/Pkz0O158bMBVzkV8PHEhbM1maC9stdfRfA=;
	h=To:Subject:From:Message-Id:Date; b=nCfSfA7n+dJly7E3jjjcPu3Puu4Q0njHWCamVPPs81Rrkq+Vl2dqfmkPhkcZ5RdbARNwLTUmwh9hUwppifrs9+X5HxdElfN+NNBjCYaEa16S2BHHiyp8UjdlEtLHoh17zvg4l0j08cRMFSDctq1WCXfksycKBvx6MR67q1Rv3MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDsJsK3H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDsJsK3H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA98AC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732837553;
	bh=51wC/KTQ/Pkz0O158bMBVzkV8PHEhbM1maC9stdfRfA=;
	h=To:Subject:From:Date:From;
	b=SDsJsK3HhKJXMVhvi5bJrSrQAif99sQsR7Wg8AUsZEGK4OOdF/YN4Ijh6apJ/Acvs
	 vpGAHb0YBTtT/9plfc901aa/IXkIXhe/H+PdDsAdvThIAutMQZiGeh2ewgIeGkb0tp
	 EU1/rPNKvmhOBldqktpFZaow2okk2qop86vK0t6y+rW0bi8+3jOZPy5LGG7tzFCleC
	 FBG4D95ZXfdVhBYUX2m1hXdrIwAfGM21QTckN2OUWjWXPva3EY8ibXv2i3FwqaDFfW
	 og42XPvYVNKVA4PlbDgh3mvKTzosRbo/EjZFPKRt7v445MBqy17NNXn+8ump5e5ajG
	 ngsw+kQX/s42Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98317D70DFA
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173283755358.9211.15567823923086976461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eda1beeb7e741924d4c07d6d5f3a181d7fe28a68d427741b7dedeaaa13eac7a
Date: Thu, 28 Nov 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732837553
