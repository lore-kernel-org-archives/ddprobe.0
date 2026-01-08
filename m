Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14472D7DC4
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767900234; cv=none; b=J7T+YMAfOjDismu13HBXEoSiDMi5Yp20+1sOJ4u8e1RnCLJASsCZcDOhwjeZk21qyfR6ln+NIzv6qv3PjP1JedigYuKa05GHrYUzhaxX7ddtfGKjjwhUBsQ/vdo+FbzI10EX5kXTwf//KXbxdIPxpM0K8Vg9ROWuCY87bRAfR94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767900234; c=relaxed/simple;
	bh=VUubJgJYbKS2xWSpxSE7qyw1DN5QHERDg4IV9zOgnnk=;
	h=To:Subject:From:Message-Id:Date; b=SsVsC4sOlMkLPUHSk19EgJht+CKRRFuJLbETscwRMK33+3GFoI/soTzXQFvBjupGxhNK1t63rhs40ZH/H0zZ3kjPpS+NcygnPnduWRgUM/eBD1pyz/tBUGeJ6XTk+DoqaRrt/PZupayX5l3RqaJ6wFYgcSjaRimTPwtg/l2velQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NOOyXUl4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NOOyXUl4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B9AC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767900233;
	bh=VUubJgJYbKS2xWSpxSE7qyw1DN5QHERDg4IV9zOgnnk=;
	h=To:Subject:From:Date:From;
	b=NOOyXUl4v+wVK7kK41GfpgmFpRUXmUGGnllu74onAXpo9Dgzjm/+Ji7O9to+VoMyn
	 Cm9wE6/y4VHWjjVBsYJAw9/H9SRPCG+tngfGN5PFYnwGutJg05M6HJSSpcwbeD1o6q
	 BGGwTT/MtMLp5bAMqXU57OHFwbmohb22HUglEokjGbZ/YN14Fet22e3vrqqBSBhj7e
	 KMapsczSI7Ix04U75j2nG/nIgSQaZy/AeD8YTCVItYqRl92Kxu9cSaFGwRG428VhSe
	 HR+VLpIwX/PgYlgnsEAJu7V6qxqf0tZ04Vw0JSkFMATC4Qs/1KI/sIX/AlFCyh3vH9
	 LFt+pbFFnLNbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D1DD1D486
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176790023359.27565.5677534876879364385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffb90a808104956e5655f272984026bd542d0f0756c74410f14e8d0dd31acd4a
Date: Thu, 08 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767900233
