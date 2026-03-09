Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF6819C566
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773015894; cv=none; b=uWwe3nvMSQna2pS4TPQsc1EfhThTK/+SYhgWIabEyslIWLOaMB+gyMNw36QuTPm1PJ0MHga6gW6UC1Eb0LIgV5LXm+/dYIseI2ylpwknYimejDnG/MxQRtf6ZCj/IljDZCiDFlSwbqdF9U/WE1MVfd1kpgO2XAuBKzcqTq+Sau4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773015894; c=relaxed/simple;
	bh=F7U1J8MFUBA/iZMVKLsSb73IvP6m4y/VYVceCrXDPZY=;
	h=To:Subject:From:Message-Id:Date; b=CLab8y3IMs+s3d+rWXmkEUF2od54SJkyDfEcSNnh+7pQQq4wphkLP3tYa0NenFDxAEt/NiTZ+2SCc3K9Wx3urHJvaC/N2psaANbeVkNGmoJ6YdKDHYGb1qoJm+g3gAgcV0ypGOb14mQMFfTKQaW5Ct78WF4J8iHZUjTWGWuatW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTIeX7Fk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTIeX7Fk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7574C2BC87
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773015893;
	bh=F7U1J8MFUBA/iZMVKLsSb73IvP6m4y/VYVceCrXDPZY=;
	h=To:Subject:From:Date:From;
	b=tTIeX7FkF1HkeiF7gJlB1tRBSIG/8ZtzFMYN+NBrMv0H76OuMArPwll+TZmVrNyYu
	 I0tt7cF4Brcg5qn230uM4e61JUPU0Y28VI5bToDJpSFUqM5iff7l5ENjPhQZD3K7yW
	 LfvwtKXUzgBwduLsIZQqE6CBZ3mihbKiBu0AjzxuJIcydzxdbBuLH0uSBgYb/mEV6A
	 yNyXXZpFgdCc/ajbl3IZH6nxyt6oyrm5LF2SAx3OH1gTtWIW9yxu+SUHxCVcPck89v
	 gr43xEosic1oNiftWlE2t8tNs5RXUUQdbRv+fQ0iBLvEY1lfL6GN6CKIGQgW8ONxLc
	 mbR0jOG42Jzig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9297AEA8549
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177301589357.3402.2740708271621032652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f773725c69f0d1a5d730d83dedc852a0d4dbb063c26e37270fe3432cc155193e
Date: Mon, 09 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773015893
