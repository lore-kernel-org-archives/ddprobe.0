Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137F835B651
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776956854; cv=none; b=JlVqJcVnpQjvQnW3RH+IrfCFNPYzXbNaGnU2Agh6HbMQX3uXMucxVm5pz030mUzxUvnygYh2Co7FvkFnAfVyP+TNZlN1i4NMcNu5zjdFZqislk3KSO0KYB0dRiWnAIxODUDhJvzqxFVlqLaDYbUnLYovkC5fpJ41BLG7xKuv65w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776956854; c=relaxed/simple;
	bh=bX52kWLO0GV1l0mGG5jt7D9x5ofMHJVFFOTQGMFSBZw=;
	h=To:Subject:From:Message-Id:Date; b=k1o4s8GsqQGI5PghsYGSinohN1Vkc19jTyjAO0alfDF7zV4x1EQAQQpD0VRJ2WjqWuW73rjNQztoX9VsZN+kGIqbiieernYu9768JfgFs9zTZar+P6CRUeUMF2QIOCNrsQf++JbhuVCrPCcx3EkZHyaR3FVA2I3yza5MQw/kjBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9ttMaFK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9ttMaFK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EA9C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776956853;
	bh=bX52kWLO0GV1l0mGG5jt7D9x5ofMHJVFFOTQGMFSBZw=;
	h=To:Subject:From:Date:From;
	b=H9ttMaFKoAN270IL4apkXBJza9njXHE2uGQThi3uHF5oSIyZI1xzCHW28pQcGtlCC
	 Z+61xrFG6YGlVgJw43CNdHzCm9UmxgxG2fWBoojFo5+5dunB7qQ6EnPKeE6wZ+CSn3
	 i95JBnQTRxm1/1Zl+4O86OORQtX03ue619aFZ+YX1zjG+1uj78QIMii5mlgLAohqAQ
	 AhcQowXOBT7W+vnMJ/DyHz8UsOdV3l95pvwCRUb6TZBRTVArKqqOZ4KoJFNsWMCz/G
	 yVDbhL47BcBMmuVHslxkTe4TIkRdhIDDb99kz/ylhqWEzRPODSGQ57jAKyQmeGZveI
	 ucPXW1oLwXcRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA56FC0343
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177695685369.18209.13742455480576386801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94967183db149a192b211038e047949d2226051ea7f27d4d84851bf76d679ec7
Date: Thu, 23 Apr 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776956853
