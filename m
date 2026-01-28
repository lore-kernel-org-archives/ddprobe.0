Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F22D82D7DF3
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769595234; cv=none; b=YF151qzESXLJW4u05F0CF4qZSLPaMwV2bBMWXBuVj2mjTPFyAXcfFQLSX0iXxKSAIQ124IJ5V/wLfPuLSpMDWuv2ZB4ZPNuwdfApF+DAd1Md7MLNGWp0CCG5NDEJo3kjUH3C4NC58oQTpnwLryhtMGBnDdZujHcp0rJefplgWAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769595234; c=relaxed/simple;
	bh=CBFLYIZbbpkwJYvK+1oA08/+KN7MammPwCpU7FEVIHc=;
	h=To:Subject:From:Message-Id:Date; b=fwjDETHhsz884/EZQwj3+lrEhDJpy2bZIcDECJOReFrYhvl82Radr/xq8h0rhirJBnFimVfIehCEQYsJcetMqFSB4UUj5BXa6DwOgTDfeC8m7sM3sJ1Tqhx/zbsZE+5xJdqQ3+yxjhcbNr/ysCG+TrfsotBjAO+q+PicWo8n8fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d29/JqFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d29/JqFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5A2C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769595233;
	bh=CBFLYIZbbpkwJYvK+1oA08/+KN7MammPwCpU7FEVIHc=;
	h=To:Subject:From:Date:From;
	b=d29/JqFrq17wAdYaY+uNebZenVZkU9/JJOZayIC2nGvewQoB9r2NZeg0H78lfJ3ZF
	 4l4Gwmrn+/GkjSQACS0eq9qWlpOJTSlqdPN+r1BW6+zLbfpP55DVp4XiFvB8H2efj9
	 vKUq3nK8rTFCwyD814soL9g1FAgSCoYAczzkPTUF/mn5HjoZe6DnDoi7llcogXfrps
	 IOSAP1602Dr8i7itbJX0csihQY1SFD8apRl0NFmxyefSiXy6QygNwep3J1CpNeahYA
	 Bssfc6pj1FptFW9kX/eE7Qn4HIGSl+Ofszc+KDpcLxUrTHe3I4O8jSBWFdUOQ3Sc0l
	 8yC1IhkFjzl1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6D6D3569C
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176959523362.2808.8751526957830082740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0d2529548264a398d6623b3dcfefa3de834b639f6171f65ceffca245623f2fc
Date: Wed, 28 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769595233
