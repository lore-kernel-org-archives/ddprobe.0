Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F38F9299A94
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773206694; cv=none; b=KTJ/nZmvKJz9Nard7K/rl1gjLIhTyg8JY/tgNvteAFElpnJ+u8KKrUiuJgRFqv897lywAJuX6a6nK+Vx5d0QyDB/lpNLZ8w6+d/keLUokLNKewhfVZvfMmpMvMy29Bqz6uyFGNlAIBpHAFbIeFfOfK91qXf+ZWtczL4Kt+D+UFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773206694; c=relaxed/simple;
	bh=29PJPNo/v9yaPzb6XzQ584+vEVl/o+kxo3LXyWUlPW4=;
	h=To:Subject:From:Message-Id:Date; b=liItgFBUEvdg/ZIOP/TWDPKN6khaeDkPHrG7LsurNX/vELq44xaVbjLoE60KBarsMvYvFttcLjinYRHtSMwKq/z3ulSU8n8ir3rPe4dTKlxBsJocRsnHswn2A1ZiJI7QsWmoMGEAtat1hFH5yTqqHOKGg21hMOgP8Ex+i397VII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKXT5aM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKXT5aM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C36C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773206693;
	bh=29PJPNo/v9yaPzb6XzQ584+vEVl/o+kxo3LXyWUlPW4=;
	h=To:Subject:From:Date:From;
	b=MKXT5aM2JZZE7gnuZJl/68McqIaXN8cTRF9+hi+X/p4tuCXjFgqb9lk3K8BtJAucf
	 UbGkTF0hN+oI2WWNUDdiAwzZ96BYrhOLU8tFoh30h70H9VJs7UE/f0rWV+AmyjQTmD
	 1LP/NvyMRd6iYeJRnzsnK2PQXIU12ycMEpxmkUb+4Z8CrKB/ovd75ghoMiUkIzMDtE
	 /Gd4LBvZV7sF8QJvH5IiPZHucmDSQgGkK/QS1yJglAXvi6UMv5jdYxA+sZHKkgCaI+
	 NPAxLLWOFSfb7vyBSmbsRRJr6ixujc8If07fD2ripDhSj4fxfjqjwc24FkPUNgl6d/
	 ROG9PP29jVt5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9037DFCC9AA
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177320669358.16265.15992571268197166084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17eb35938d71b8fe22f3f59f9825b849ccfcfde80f6ab4089e6cada18b201483
Date: Wed, 11 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773206693
