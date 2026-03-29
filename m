Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE8D2E4274
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774782294; cv=none; b=NBEIsyv/SwcmZhdKcsYlr1yfxidBfGXosDzmFS3QsWSsob0Zf2COQow+nbOWXQ7hgiD0AfgrpOieholCwQjgV5pZaRToOBTFQpKrkbad2Bu4lSU+tcVqV6wL8HSMVOC4xX6MVvrOYjE8BG0smnKszFM/+BjoKCV2v5RH91YaPDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774782294; c=relaxed/simple;
	bh=CC6rP+k+7hPABMlUwelGLIMu2haY1BVzi6+Raj3+SKU=;
	h=To:Subject:From:Message-Id:Date; b=ENseH7n4QI2YB5DiH4uzCfk3jvT6WkgXQgafu97u3xr6hXUjBs6LYZDVC6CnY8OgnvCUadWHTdaUrOhiLpTz3RZLDtWEGZb1rARnaN4ZBPIXqZHpfAUbaW4cYz9/ojWIMaddaDlQbjijnRk1PSDugZacMKeAfEtL43YIPrunq1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdD3x9zn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdD3x9zn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E2EC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774782293;
	bh=CC6rP+k+7hPABMlUwelGLIMu2haY1BVzi6+Raj3+SKU=;
	h=To:Subject:From:Date:From;
	b=AdD3x9zn5SCNE1m6siSHW+63P00rOT9Co06AgVlskW1d/Jk0U3VDFvv5RQwKWPwoj
	 kw4U5rnsFhVQ6fuoIkvm841bwZjoYbE4POl3m5ZBdcMjcqFHnD3uolqW8sbiktBm3a
	 AKZZZBhPc8/pmLinS/jUq+nkBHBkwdUTJuEsA68cXSKl8NYnEedYBzcapOGiL1s/Vv
	 qc/yjMBFuhYxoj4nYuXSf+8PbabCmPbUc+fz6rK6os/pR21Yd6Zlsn3On0QLKzZR29
	 x/9VGHmo1UoOdrgkoZVW/7tS26TbjzdUEk/5YqDyhSrlLlsiCfeWLbjj3icf8oZRYo
	 2+tG1L+FTjKug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FFEF3D5FE
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177478229358.17921.16941477799414916238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57112982335779a63b1038f50f68bfead757e689ec9043262ccd7aa1ab97be20
Date: Sun, 29 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774782293
