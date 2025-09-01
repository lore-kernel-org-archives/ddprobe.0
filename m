Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191D03002D0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756721394; cv=none; b=mPj1OSjWo/zHsRtnFcIdKa1qVvlPPndxMjgUv0dIrt84DB1vnppdfRuWP6zSiP9pYIJLKSvIYVgUH45D0nozaT1S2EdBQR8FhdOf+idbthmg4EQehCkv4ynqOZkD7tiItCczaOiVu2Y3I5W8jyoRy8lJg18yan2Ir6cVPN4rPX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756721394; c=relaxed/simple;
	bh=ypwcPKOncwJY1UnFAnIcE3iQYyhYUI1r/IFXMdDs6es=;
	h=To:Subject:From:Message-Id:Date; b=DlrmpumuxUCTK/fvTcnXZ70bb1eBUT1dxatUIUmonlBInVNa8tKa01RCQ279lJEJzWr/2Kp44+JiWJkWY9STcMmbW71B/tnoOZX7V0SduUnMl1aoqKnclwwxUFIfEVJHoSoW7CTy4NPxNvfTizN9qTpvm5o/GTxmAPq2EmGrUY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cx9KL1O/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cx9KL1O/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA94C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756721393;
	bh=ypwcPKOncwJY1UnFAnIcE3iQYyhYUI1r/IFXMdDs6es=;
	h=To:Subject:From:Date:From;
	b=cx9KL1O/OE22/pXSjUE72lC19Kxy7Lj3HJbdWjOL1P92/FYVAF7LRIYJXISQGJPMV
	 9BKEDf3UcznpElQbZNVC3dJY532vOjgVKH5LqqRvhjHN9vmSAwY6kUodFAzc+TMpB2
	 hNlwpgWWeJkc60dHsG6xAT95jvBsFrplIyqmV2qmToNYcG2dKnJ0KdXLItKUKKS3QQ
	 OIciRZj4roFLt3QB3dG3AKJRRbQFG4TZfwzulcQYRho6+y4rjiy/2RilirkqRCOKvv
	 /errU+1ncBg6eRqzUhgyA/kLpyOag5gc8nxD1bhSvnNofbUR5xdL9wSR/YebyfeIvM
	 augKP3rPp8Xbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFA1CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175672139357.7666.3311517626496423521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88aa2024327b0da41a401431227eb5f48eda7c17fb17306356d9b533d6d23d0c
Date: Mon, 01 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756721393
