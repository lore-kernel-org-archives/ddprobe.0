Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BC93E7161
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773787494; cv=none; b=a374dJi/utmhJ4SzjswIgxr77M+1nDLaBrZjeZCXOi2W5LXfOJ9BSuvwS388HSk7ev05iRYwdQ1sY0N7TPyV4VrlPWS8pHxrtomXPwacC73C+ifPTpxoTpS+sAfQsp8/Msnr9U7dEnSCLJBwmj0dMaU9r8UCoU4qTwx1YtwlaOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773787494; c=relaxed/simple;
	bh=Jj8WEf6l+XfMQPW9ZLghDQsBoRonRz2L+XLYaKVYMuU=;
	h=To:Subject:From:Message-Id:Date; b=cD+uF6yvrSLzgGPJ7eFXrHn7IVV8GacF2GzcgRDVTwcFAYpVmk0+vOVMoQTH5iLfDHrlqkzWCXRllelG8MGdoL0KR/wcbLXElyufuBOMEouiTeCI9xiHEwPYrFdmGaqfjxM92saDCrukrs8e61dYDLejvTXDeKyC7AT+jxt/Jlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4x5pyDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4x5pyDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5220C2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773787493;
	bh=Jj8WEf6l+XfMQPW9ZLghDQsBoRonRz2L+XLYaKVYMuU=;
	h=To:Subject:From:Date:From;
	b=P4x5pyDBUZSfZMmQWB4KFC0R3aHgrimOUN/kkWPd75w91CEQQsWFZ3BFnBs7dYBY/
	 GBLlaS1kxoXthp5srdg3d/TILMmiG565rQ6zjInAV9UEiCCx7RJ/b4OTUgccH7hui+
	 ytfeV5L6+hoMfGlQMvLkHuAPItgvLEqfH/PLaZxnEGorrP+/RHloiD6AkerpzQpOBp
	 ZhcwuzgyRvGV1UI/6Awz/wK0PCN3hFcCAJQaxweoqKdl1PM/Bp5LpQJqZWQh8KbVe4
	 iTrFBqcKOnyc7DpqL9GbB5mv3hUu9byy0O8wQFpn95750MAUGg6hz4db7+dslqHKvj
	 ffbpHaB4Rvdvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AB0FF6E96
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177378749358.29042.5870018265419979924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 024fd9ac443fc6f280d0f04067cd6310ef9d0d572a24e3d5f47218cee0150377
Date: Tue, 17 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773787493
