Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE2219EED3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750041594; cv=none; b=CeaHPO29Dswaaw4Q14yortXPjssEnbqypgCP72U3g5W8fM1z+l/st2ULxFp9be8b70sNozQkBKCJPMQduMV9CMXrHBx2MqgJNANBu0Mb79xUG2Csma5bfw4x0kYD9nMAHYRPKgOHnpvJ7DcjxyfB3h2/vzN8rBFTNDsMINQwWCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750041594; c=relaxed/simple;
	bh=GZZlJTfbsP0WKzDfpNltR8gePdDRSsP4eizm7vLMAac=;
	h=To:Subject:From:Message-Id:Date; b=cIBFrxhQfoHiWD2Nx0h1sv8rR68AmlnO6Lsm6nhUIXWTiZrtILgGx1ArbnL2e9bllpCvNQ6sdoghTyU6ZwRBxUBDY7VjewKHufD/GHQASzLDXEWrns29fdEKskyfCnMVlWeUctWl3SDPr9ukpzoZqg+jUpE1YcBWB9b4lFL75r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jo7fQ2Te; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jo7fQ2Te"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32B1C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750041593;
	bh=GZZlJTfbsP0WKzDfpNltR8gePdDRSsP4eizm7vLMAac=;
	h=To:Subject:From:Date:From;
	b=Jo7fQ2Tea0GmlLSW4VOV0+C7BtYQGhgR3z1NNQBVtmQurFQot91IK81yZDmZFdqnm
	 ndaRfPlCfhdkGswJ9a3Le3bC4jAmbtOFFc8HrGfK9AlHO2+aWkq40VAbawKPYmWLQK
	 QQexygr1gMi8SaywfMTpQDEH1UZANlwcRNmHaHQWUX9PHx4nFJcW9sqETjQ5sLLL0W
	 5OWUTg6wpnVZi/f5wxdDLjKccJjd8GlQBQ57RyXa7qYQA8Sf6SWv0XuMmpAGl8bxS/
	 HboqxLUK28WRX91G1U1aeCOHELYk6vnzVRXpv92+GQPeX7k1lpaJ3f3iuoAkC4SRiL
	 2eRVfR7+yqt1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905DFC71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175004159358.29728.6793467928566345548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8923891109fe5d99794dfdcb9bf01dec051d76feb54afe1a116fe64230c7ca01
Date: Mon, 16 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750041593
