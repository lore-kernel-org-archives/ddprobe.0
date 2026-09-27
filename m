Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FF93B992A
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790538634; cv=none; b=bqUGwtktspjzWEtDp3GQmusB47wNnXLY8EMfE9mHySLrY2pJNzPwWlE3scvT0Iht2y5BCIov0UatgGLSXBMMMO1WdbrjhXGFUThO1GmUKX6fWYQ3MkbGSfLlQJsIfvI1GHoscu2g783iVhL3EJUi3amIFlRxdp2uJaLqyHeC1aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790538634; c=relaxed/simple;
	bh=I7O54jsm0/817srmtoOWZgLCFNi91+WTO9FLC3545vw=;
	h=To:Subject:From:Message-Id:Date; b=kdmP+4defgdnUmodib2fzE7n7lu6d8t6lsFV8Ct7JAMidUYO98HbmWw6Jlddd0JrO1fkC99o5x537JF+6YBsrOdiWfygxbBo26SeMOHU2wO+dgHPlpu4gbSFN+MK95l/5Ym7rA//bzVARReJ8HJVkL3OuK8b1/iucmd4i0NZI3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Re1RlasK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Re1RlasK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE493C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790538633;
	bh=I7O54jsm0/817srmtoOWZgLCFNi91+WTO9FLC3545vw=;
	h=To:Subject:From:Date:From;
	b=Re1RlasK7+p/EBU5Tgn8iM2luRuoIq2u5HbTAI4epX8Na9DFhtC8H88uBONdq38wP
	 +Pl24p+gxLIHoZjJCEVigVh4P2OgMfimqUwSS3n3lmhIOwE65LRIbBvOfSbEBlva7a
	 CEd2/XLY8uOPXoWsghTJbjjf8D1lDQ2TF2LLTux9evTF6MY29F5qXgdxlJed7vhrl0
	 TmmNt/B+PtDJB9qBL8ah9mB5FVrpasM5mANsjXskhK8IPCpJHZdjR1MzBGS9YB02oV
	 8ZTgbq9zFuVzD1NOooNXVIe4F3D3MQOCNRCMb2ap0/Ud9U8MIFCGSVoUsW+hWFKQpi
	 AdqPHy/b22WIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC94C98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179053863369.962.8096302721536351985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1227f15d3879c147a54a4fb490c4e5892af341753579d09918d3e6fb1a9ef756
Date: Sun, 27 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790538633
