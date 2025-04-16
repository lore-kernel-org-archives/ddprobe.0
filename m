Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CC5235C1E
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744801194; cv=none; b=c5Ti0Ivov2uztDbyWOeYhflBIFv39tqVp0KqboCWtlHRDKVyU0vyrEgENXMGqOBBIb3/XIpV/MsP+R5IJcJ1ggJcR6v/yfz58UYcargz/PkwxvhkscpMfQeLutGbEicDa2EJOVvNxmyjvUKh94wW+f9Teed+zlwo2o5Hj3ULIUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744801194; c=relaxed/simple;
	bh=NIR74HRVx9TD0hYblDvuQ4Ds9yAD/MFVpBChAqxehwA=;
	h=To:Subject:From:Message-Id:Date; b=RUq428a+UdDGFzxpyM36iAFrRYpsEMs+aVF/nrGds/iuZ4VNE3FP2e3crG+ywKsgZcuk3Lq1pfDQ0604Nfeb8J04te2FHECO3f104QSHRb3OtZLxM6E7RFrYeSnbmDs0Yex4XNFxnSzZ8uNnbMb94WPOQaIcRF4ACSMKzOS89vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qptfVCea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qptfVCea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37BFC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744801193;
	bh=NIR74HRVx9TD0hYblDvuQ4Ds9yAD/MFVpBChAqxehwA=;
	h=To:Subject:From:Date:From;
	b=qptfVCeatDvK7RuWxaagY+K6ZeGfvJ/5D9qPen9ZfWh1o8ot368l9cg2rAYYC1BNP
	 XXUc1BNGrwJdsonoOXzmdSOb1PKi01wVOLqQuG+aU/Vl2K2lwH5sbhRSjJaJdAzn/A
	 y4R3gtzlVcZFIpM2BtTZ60HOe3aDjOfayDGb27dHjcfOMfbc4woXzgOs0Ig8mvSb0C
	 MMvzjFf19Xe4ZKtYVi0yqYlng4osiiIo3awmTYJXqAt+/IJvqvQqSS7f9xjKI6OVf+
	 D0CLhInn2h4akeNeUBmZgWRgmFNgOq3Sz+aoUspsCUpAw/MWwr/SIrJMtH1bMRz9tU
	 DAI/xKb+tUgCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BF8C369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174480119359.15275.15982219600343200850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f47ab17db497e63cd5169fab783c4dc850ac4d36bad47abc6e8b08ec223d8b17
Date: Wed, 16 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744801193
