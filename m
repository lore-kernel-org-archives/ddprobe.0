Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4408A171E43
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 14:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739456934; cv=none; b=SVG3aO7pvOV3IhkaD0nFzKsjZh8tZFb6xayRrEAUkCewn2XgeHSVPWytTTUgOHjL6udYul/wb1KTOBRls6+YqaHAmQ2t9JuVQA1cm9NsfJJH1ElVTrlBWay9ZwsO9U0duJc5C0iJNuWsMnBo52XKxXvkociYXB2Xq/taS+FHaF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739456934; c=relaxed/simple;
	bh=EN12XFgbwQiMsgzcfO8ma/aEnWxauJlbvJ9iNSKm7jc=;
	h=To:Subject:From:Message-Id:Date; b=Ku7Pzns0oTFYrJ/h/dmKRfdON9pZhN0sSubBfzx4r0ADVomcv4dyebachlMwSKdQPakFRNuRCVURF9X71HmOUiQi7i9NDSHqV4LGh/9Y6eiEt9zXrsVN3liO2/6Rs+qGXceFFuovtCCfFJzAmuVHI9ekkTJvhrK4Kez0C0KTkA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ctec5nBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ctec5nBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1F9C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 14:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739456933;
	bh=EN12XFgbwQiMsgzcfO8ma/aEnWxauJlbvJ9iNSKm7jc=;
	h=To:Subject:From:Date:From;
	b=Ctec5nBfEp7hsBHgOBVNbFVpnsgreFLDwrBDg9T67Ci2SgrUUuAORz48aUAmDMgRT
	 LLHBzz7ZYJe0WcINFdbfXHdpaWltzi9ENeXfOmRhB4RBFopfSeyWBhakOOzh+OiOUd
	 Pgiega4F+PAOVUNsy3TIxJUlSZR9Y/bIH08UL90BeFAbvPuTNSvEYOdjp0YTTUkLwm
	 DXOocwgekQu7iEggha3AWOwU2qabhQXwY1DRBXaHun2OpXsJzLke5G2fSNZGXfdXOI
	 sdatGQKpvGiQf9i/RDHpBsJrBZR/YI+RCDGDIiJqJHgkyIJjtJ0M1At2V2O8i7rHWh
	 yZ5S61Sy0hYGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928B6C0219D
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 14:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173945693358.3858.4206811818593657266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 147811f62fbc3eaec010e1744de68bcd0df537817a74f91df5319016662416c5
Date: Thu, 13 Feb 2025 14:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739456933
