Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B0C57F732
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788987035; cv=none; b=Sxr7KK+Yt6MSnZcxmH+M9pC5yiA2F5ozt12w2dVgC7rCiVDB4vTcG1wf8EDAwiTcjsT+Zqr161O/sl2+N7/cvJBGarq55v3F2tihCgDkTX9LxF2p6jPf4ftE+0a2yrX+9mnqRGxnC1eqiBW11p00kazlx7h2u4L/PS4HQ5OPlQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788987035; c=relaxed/simple;
	bh=H0u+YkxOCcStSur7OTpgtro6BHeuxlB9jrPqChv4iiU=;
	h=To:Subject:From:Message-Id:Date; b=Y+dAWTzVSWE1veJlUY7FFUCdWfxQnt7ery1f9bCz9ABl8aYas2xn3Ql9Q/UCr9p+wlUw15VMzDesglsgSdeUFc2svbHb1ma8QKqh08Zm8UmtTMNKC0oBVfi1wvDbv3TWjjlmT93IXb+thRWVLRnVVQxrvGe/OXbWgBsXBlW85tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfgOXBRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfgOXBRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54B2C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788987033;
	bh=H0u+YkxOCcStSur7OTpgtro6BHeuxlB9jrPqChv4iiU=;
	h=To:Subject:From:Date:From;
	b=jfgOXBRtNZFf6aHHg68Pe3/bUzqwSiE+5riy/agr0w/FTK5xjeNqc4MR8HnITlLmA
	 KD3llh5jnuhX6grO3j7XnfjPOLiLd0GHBjXQg9f4k/Wo7vjC27Wz4lvR/7kvWIbgC1
	 1Yn8A09scvcluroRj2urkWUqXqeTJb1MfIid/GWzlweaKCdqiyit093eBrjCmlRx9f
	 DH8JLUfasnVrwuPEanuYMwiqAPFLf9ENIkYiLa+z3Wyq0x+qk6m0wx5MTQuxB/+Ns9
	 Iwyc2EHIjl0JIRVy/atMU+3W2yFm/WxzaBpFGxytsjwr5BWI5OdgteCNL4TPGTNExo
	 gV3EDCYRIEBQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA7CC79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178898703370.24267.4087404436129548994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0783f316669a460d4abdbbd1f13e7019b53b2edf2976ef41c700b317b30ae03
Date: Wed, 09 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788987033
