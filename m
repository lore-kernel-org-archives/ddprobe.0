Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EFF2BE7BA
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775862454; cv=none; b=A06rQXqSmjgwPKQbXITITabSSV52Garv1ovb/MBFPQwlPoh7rmYMBVJRIsVsTQGcoPcPj6Xvb6PYzCP7Fia9XdsdDvIO0GzAxWlJ1HnV2aBIxr4rEp6hJN2Ow7VOOZKCL2TWxbM6PW/8B7maU+E4TD3iR/4E1PDkcb49XvaQY00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775862454; c=relaxed/simple;
	bh=mYQhsa61i10qkMk05rVMwwqLfaF8jAp7zh+JNZiAdTY=;
	h=To:Subject:From:Message-Id:Date; b=blFuAU0iH85LSkLevj9/ke197a8d8G+CTptZN9aRH0nZWoL6nGmn2WiJVPuHXXswA7qaa/BZsMUmfH+/3xBsF+GvhPSK+7nG0AthvSK/EJ1h3V4848240ccqcU5N5VejhpmcfSsn4yFc+B6mJqXroCAEOkv1DnKZXMVPvwhv8W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEy/wAbg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEy/wAbg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0EE1C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775862453;
	bh=mYQhsa61i10qkMk05rVMwwqLfaF8jAp7zh+JNZiAdTY=;
	h=To:Subject:From:Date:From;
	b=XEy/wAbgI3vxNEEGp+lIcH2+yi0p3lvO5c/4TXYVgwQeBKB0gPOCbxBGWmNbgK0lY
	 yljLr/dXzlunxTuw/goygV5e/wwxZxrnGe6EJphCvYtEA4NT90NLtVSA+m5AO7ag09
	 QopaLgmolVRdGfHSt4Oz420qj1+2dhmW2V8ZuWU5fjwtAG/goUXATZwBE70jzR7yF3
	 YaXlmFehZsIVTqL9vTGG153utukRpBo7WKdQKUbwOf1Q/ev4gqVVl+jebEpqgi7vS1
	 f1QzJbKq/Ulycyq1fXM9642b5FCCacvf4bJlO4+271XGO3k5aV5Qn/AJCX0VOARcj3
	 EnrgfTvKedUhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBC7F45A12
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177586245369.5498.836295250273679781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb5640b2274c24d1f52926319318d7deaa19a6453fe912fd83c790d497061df
Date: Fri, 10 Apr 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775862453
