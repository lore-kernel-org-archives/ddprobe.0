Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518EC40F8CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 15:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781192194; cv=none; b=JFGqoBwFXvWan1UypVc1iO3H5RWGHd/4J4f+PpRq+i3TKenfbqWrSVbtD7lyFpLZs7pL/a83piFT39inN/FEB+nWyK5rRKHgOTMpg2Dccvs05xqn1B3Pf2Q7+w1PW91pCOI/tH0qw/knl1qqCPVE3a0AV2XMv5Cm0AAEyfYf0W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781192194; c=relaxed/simple;
	bh=0ZEeKhnmnRrB6+Fj1xD7WQ2yeDP+a61kMySVktIHpc4=;
	h=To:Subject:From:Message-Id:Date; b=rSfvtC3EwuaBJObSvJqN044EWC96f25QAmaZs1eOhPixY+yWd1MkqcU18rHyOYQwCX3wslZQbk0vzlBWmdDvoewwGFE1ztzIV0ey2ka3YiVOyczEXF3636mwAlZiH3zsBOeT+249V/HetonqHl3X1qbKfE2jbjELfIRNR9XZw7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukUea0MY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukUea0MY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1C3C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 15:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781192193;
	bh=0ZEeKhnmnRrB6+Fj1xD7WQ2yeDP+a61kMySVktIHpc4=;
	h=To:Subject:From:Date:From;
	b=ukUea0MYm6SHa5HT8p7jf8AFWGRfApOSl+nTq1ta5K6eVr8fXw4jymF4APTYTsC6H
	 9NmfRy/ojA9uePOUlA9KWaOlVvEeCjvImF5avz9HH1lyb6TEg5TXnAmsBTDL2h11uT
	 ZB0H+6TdbeNTH/wSpLv/WHjwAF4atCk6b7HK2lEKZvcsbzaT9uotItsdd6I+X8fUiT
	 jCksiLSNpYMeDdJ7eFiZqE2qm7KdqW2OM9b/kGJkSDeIiiTlYpJQIywMtKrERdo/2y
	 e+g1elMd/f96K3iIBAjO3ZW91pn1SIo8muSnd/HOFypMFAzF+SFRnSt16fsL/ItzAJ
	 OoP0UJvpc9dxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC680CD98CE
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 15:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178119219369.4542.14584315441004751336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6d51c6c0e63642f4d7972215d84a3eb4c8e90bbd2e83035562764ea480b41c0
Date: Thu, 11 Jun 2026 15:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781192193
