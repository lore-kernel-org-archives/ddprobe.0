Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDF742071
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 12:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713099563; cv=none; b=csD9fK1XkDp7Se3/PNWEP+PwlkO8ANNJarOuASo+fdModcYgKaQrhDJT2OaNKkv1+CHGNgQQfky0lY3O5v2syoxVkParp2RSyp4dWVVcJLTdxcnbbFIyrWEbcSA0oK3Gm2vprGMoYYBOqyUmA0V0IETwA8PMpI7xMubTknu3Wqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713099563; c=relaxed/simple;
	bh=xsH9AS8R3k7U2aWt2do5H9UDhcfOrBQVm/XSNdMX8vg=;
	h=To:Subject:From:Message-Id:Date; b=AU+oUfOB9cS/DmoPj061fBWOl+6BcjQXjgqL/LNdWcgbJG+PErStplzMGb+49OVDZDQoSHOzaL+kvnyuWrXw+maeM4Tms9Gg9le8G5izjXiIdH51ahdXYYc1oX3vOBw6KGRo1wj0WkEarPjyiGVSmeODualYSByfm/fshllcj5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvhD3xLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvhD3xLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9083C32783
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 12:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713099562;
	bh=xsH9AS8R3k7U2aWt2do5H9UDhcfOrBQVm/XSNdMX8vg=;
	h=To:Subject:From:Date:From;
	b=JvhD3xLiE39ZTuCudNuGJG/QX4PTTvXZ1drW9WnzX/TWHF58PDCiXjQcLLEosK7il
	 h68fTuzfs6PbvywVUS7oFrkLUytHmp2ro4ytIlT1Z0rbWkGl1pbMpKDNhuWit5HpSX
	 dz2qAJi2zEAXY6DJ4MarcKn/yLAsr4sPV1r2LU2e9GwwnLLU/i8SsFwMMXaeQdab9+
	 d8tPN4oC3V87FRf0A/lV/5RLixRIuktYaCMWs52TH3PMFdi3yymq7D/9rdoxKuRysG
	 F6VZNKS7Imc1oS0GXle7ty5t+L5x8+pIyDOzwlErPCiWz7lLhaJELu2GrIWcBII28l
	 cG60rP4ToetlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA741C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 12:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171309956275.15313.11613163543362788965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9d042b33749dc38a2ec2a0e106adc9220efdc0fcc88a4c7ddaa6246a877b202
Date: Sun, 14 Apr 2024 12:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713099562
