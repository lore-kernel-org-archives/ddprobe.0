Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D193BF677
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776080254; cv=none; b=J+O0n2w+ydL6pjgbd9R4KskIrpc5ZudhiY6iHC3soxb7a/SsPAMDN5WqfIxnhuQLHFRDJp60xsF5cC3SexgEzCFLn840b3mOJHhDdkVbGl/JY0wCzvPJuq/vszUZ9UQv2zzdI1uDeyApxv0DHor7RzTP0sn7LX4fWDGQoz/Sjbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776080254; c=relaxed/simple;
	bh=vOdSgDcHyjInDnoNcA7YxAnjCrXJnMuSWJim7x9eFCw=;
	h=To:Subject:From:Message-Id:Date; b=ToeXwFwXVUnMbgoLEhzlzCupM0hi+L2CPtIc3tWgse4n3BXjleSYJwhWZhAgJfWqoWFH01icOpPFKW+VibEq2Tuh46JtEtjb1Uq+Ghc+hgh183rvMC4P1afAsIYXObdFiPGQJ0A+11NFIE/7xVg+xhynSbeuUcT959+qao4a3O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZfebsTx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZfebsTx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1831C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776080253;
	bh=vOdSgDcHyjInDnoNcA7YxAnjCrXJnMuSWJim7x9eFCw=;
	h=To:Subject:From:Date:From;
	b=aZfebsTxQZgFdFsjgxHYAiHH+KTxTAg83/E4S6Z9hCXKmTpdfi5kSMDRDDAvRX9uM
	 usRjD0AcvZVIJkXj+rxgO7vRDTTUhMB1WgFsgIGioqHg6oKuYRI/+VjeMeUeWOxFbl
	 KZw+1hmPSpPITx1rCNuUtMv2DUhbvA+woshEMUONUFvT+ccGuAoAFHGd1EgWtmwSVc
	 8Kbf+IG+y8AH8RqFFMPxeEEnH/pPVNW95WHbJhpOkO8hK2ogVOU62YPjhrg0ypPYhb
	 /abCQkgHe0Bm5XxvoKoYdmle2+eXCRdUH4lYVs/bSS3GpYeL0uoCPOpZDFUGHJrtso
	 MPcB1yUTpzA+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE726EBFD37
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177608025370.4429.14518960418569836994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 286e91613b1165f83fd0d24c35301a8d98918dc6e4ec2ebe553b488d07840e56
Date: Mon, 13 Apr 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776080253
