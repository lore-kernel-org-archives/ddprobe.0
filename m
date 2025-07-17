Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2775D23BD06
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752796194; cv=none; b=ai08iiOzKC2fYjdPoK5stBmCuPfswYQGtk7U+1ib/6dlAhIgTreDw4FSxQfR7/YwXqh9QenA28ljsDQ48DtD+/xG0/TswhtTjg4/Cbybbl9CuNKbqhhd1BXH8RD+ZeRyx1QHKtlCL8g0YAhSuJQ2GlF/AEH53AQgV2B+9/mII4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752796194; c=relaxed/simple;
	bh=gwc8oEt1ADdmeEQsFJNkFcecFjn//0zFBAiYFCTw4Uo=;
	h=To:Subject:From:Message-Id:Date; b=bAiv3IYX37IHZVCu6NtaUVmtAc9Nl00ju7wC5tCMhlp328FksY/wcZwhnhLujUKD8p8cRbhxUizlTlbfjtdnN/QjC2qMFiUF3tPlnbAmO/HE0CcnFjMV8yUWpsngS7879BICePl/5tzKh5s8cFG/tU7sNR1/iMx3cY4NMnHclfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGHrrzAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGHrrzAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68D1C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752796193;
	bh=gwc8oEt1ADdmeEQsFJNkFcecFjn//0zFBAiYFCTw4Uo=;
	h=To:Subject:From:Date:From;
	b=RGHrrzAeyskr8foOLsDPxoYW+XLHguPs3ibsFTTmKATQWS7oIa67lUn9HTqZytkO1
	 tzyCihEHDFXEtsJdIQNco2Zxy8zjIEdvzw2anIyBks2h/K8XBIxVoNa77rmhi46Mbo
	 YvrcLZDOls23GUdhio+sVq5a6uiRCVjhMO7pqrm7x+JgurvjPFQd4luCcVVA6ZsDoX
	 MEIU20mpwa8xwvdFNJOMthrCx9X3GHR+dSNWR7uiayjOOYzKaOCA3uyfE3z7jtXKiA
	 MBs13amOglv3I+NGqWVe/nh1zYsLou2Z3UvRMYkeR7Ic/j/pXYalh53sEe+K0oUNPl
	 f5PnstBJbqqKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9607DC83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175279619360.10489.7277201014456061684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5053d3bfee187ede731c86dcfb59c8dcbba655ce908d5d4feb7c02c6ca9d2d
Date: Thu, 17 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752796193
