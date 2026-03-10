Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151DF3EF0B6
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773131094; cv=none; b=CX+Cno62RJs0k6NOWp4pVgeO01WtR/SsWbv8nXABBa15Se3cfuGToZdguyriZ2OxOTPu7Vl23hQ+xrU6CBapJy8YxGy4nnRH88rmdRSP7nUtXw9a7OmGUdB3lxrcVomE0MpR+dqQI3R5fHF84dBKNcwryyC9Y+zxJJbkaEN+8Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773131094; c=relaxed/simple;
	bh=JPPFNNY6RPPRZHJhCdXfj2C3TcncHt/kCIAbBVdhe8o=;
	h=To:Subject:From:Message-Id:Date; b=cMj/Lg91yvF4F931vMlMUwBJJczKsfeI638DZyycrU+OjzuWGnPCpgMyJ6/5zYcvTZbCSeRr4vzcr3/IxIWi7l5w/djl84xpf8Ab49ZNsMq5cox7p6G8JYs3EH/j8Jc+Y0nCL5ZG2SQrxUtfyCtbNdT5Bc8tuFAvv73jQOQO+gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmwQCtZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmwQCtZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F35DC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773131093;
	bh=JPPFNNY6RPPRZHJhCdXfj2C3TcncHt/kCIAbBVdhe8o=;
	h=To:Subject:From:Date:From;
	b=MmwQCtZCv11xYTlLCg7ZTOFqIzyhbbF5nY42RRtdLh8h57opejkPtPaw7sIZQJsii
	 VCqllLY5p7Emwuye7+tDQBvIYHtNOBZOkUcLAF09LKV0JxieyCL+MryTuOSh6++nLE
	 7bC1E3dyl9dPkBtDwqaROCI1fLIDorAdKZnsdApAExGj3k6vuL2e7pVnGwd8LSE4h9
	 aUqFxpw65UTrrnYSc3O0Wix7wjMqNssQ+FsctGIF86Cv8x0Pe3OFp/cU3DjnVYP5TC
	 w88l+HIjoSH15e32kNfKgd/hKx+yA9Mr/msgNwVlyVoAf297rlTxp3ivyCfnWB4pL2
	 E4nX+jYIMt9Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBB8FCC9D6
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177313109357.11456.6354555125781751779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31ebad584c74a78ca7220dc690eea44302a27e33463bfc4e63048898f85f4e9c
Date: Tue, 10 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773131093
