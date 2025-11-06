Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D7C30AADB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762466994; cv=none; b=RNiDmIpDc14U/UyWXUqRfgL02O835lgMfKVi9Zp7YcOJ2uOlGrMIW9+q6OTO/24C2+JKu4yR2E61p5T2FWLsiAxsVeO+3a6yxKoqc9oY/lnxd+3y2e8D/ajePG4YS8+3FggjUBePHoXJ2XPAw/+tUpdbc/eAOdfl9hfTTC2S8wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762466994; c=relaxed/simple;
	bh=YQimoRzIzkENeQO8f/ytkanUq9c4B37MjsBiis9meuQ=;
	h=To:Subject:From:Message-Id:Date; b=sODW0G62mo7UJa4Nbv7BNyi8G8eGmjbbCPKrwCq9oTlbP16PpZKVohzegam0eFL6U8Y3dcrEY78lZqsg37cw4xr/KKFEd4dj8P4fFVChx0OWifWu52XwV0hLTlrWlkpdvC/rZ9DFlKVlHMxcn4dmVZ6JPbY4EJ+BAgmGgl/LLOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PeTVfIiU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PeTVfIiU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62D9C116D0
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762466993;
	bh=YQimoRzIzkENeQO8f/ytkanUq9c4B37MjsBiis9meuQ=;
	h=To:Subject:From:Date:From;
	b=PeTVfIiUpJMwNOqwOaTfoUEBIeOWBLyG9Jg6bN+kFObOlJFBdItKvyAR4fhIanKCG
	 C9DF4HVSvF9BBv5e3wClaBX0lP4Clgzurvq09O9+vZirrS+D8Bl3qphK299zHusbrk
	 yOt1SIXoOgizIdmjPBova2XeJ4lzii4CFk0sLajUEDzcsMvpIQTaCknWjR9pff+0QQ
	 qU+801SU2Fkh6wQeYxvuk2Et7KyMYOxjSeyelHu5QMB21CaVTLW+lc6IRGFjqaIz3Y
	 BFhlEkimow4ip4cMhvAPE73xFxmkQ0quzQuEfqqioIpbBsyMIVk1uwMi1JMIRgnz79
	 ezhYMFCQ2hxoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973C6CCFA13
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176246699361.19652.14414201192624466108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ff9b1471b9003bad5a382e54b09ab08e3b119f44ee3acee694bb23a4740799
Date: Thu, 06 Nov 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762466993
