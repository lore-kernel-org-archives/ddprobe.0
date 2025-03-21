Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2941EE02F
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742543994; cv=none; b=g8ZiJConEIkl99xO2PS91gmhu/46FMUy6CpCo0LKjUCDzuF+ej/7sFsGLRsWlKmyIL2QqTKlnL1+4qk/i040pCFAhw9dXBCOUcLn8ytn1rKY4jpPOAZUoW8ZXbjw1rGf+UNvgMzzfFIWeDmr19e4s9lo0BXcc3WhO8VasiotflI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742543994; c=relaxed/simple;
	bh=WZtbYBoN8Ch+ChQDO6+2cKjaiolzsznCqJY5Nf1uz8E=;
	h=To:Subject:From:Message-Id:Date; b=JkGQ15b9qTeNcT6fu+/OjgqcVgBkshegwknFr6LpEmv5O2lKsOaovKYsSRSN6tezeaiEBYU1HaeJF/7o7Ef0l4hWfrVokqV5maWqtuMhxLw/kVTv7wNCvm/ie09D6acAfYdDtZiff58elqAAcJmkkiSCCQVf4OkFtqVA+W2BQmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUeTNWTo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUeTNWTo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA747C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742543993;
	bh=WZtbYBoN8Ch+ChQDO6+2cKjaiolzsznCqJY5Nf1uz8E=;
	h=To:Subject:From:Date:From;
	b=MUeTNWToe/+vHEshwDPzUC5Dz+16O9aqPzj3Z2UBXOVn6QuWQ03xqyF9eaYvW6bAF
	 WDqGQf4i2AtN7gZwg9udzNnfLFWSJsGfdyrSmY+wKA04hIZkZJYo2oAU7pDz1LWEI9
	 iDlof79i10QBwRlYAh5IsbdLx+nlsqPWdw7ztPr5E9bnA6tV0/0yxvocX/mGEE+17c
	 9mCangw4nvbaOs/PngQa9EgnLfxWcXiAEZM3+AVWKHyMXf7bAe0q47qFOzLJaIrKB8
	 UXoaE/LwRCucnB0E6rwRgn58wi5z2y54lcj5toelBzfrBvwV/4te1CvjcPX6xNqfgl
	 cC/NZYaxjSTKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979A3C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174254399361.9787.14603163289216282782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b472cae80f9da007651b277de2b3a200b4ffc6e5bb0e440a63d8c28fc1590d
Date: Fri, 21 Mar 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742543993
