Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA6E12E1E9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 21:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720559183; cv=none; b=DBIyXMqyVkcJ3E2osPemLLrT60xm/IsPUqYGXnVwkm0SkNXv6BW+XHCgVDWybZaaYYwIOcJhN7dDzins8pSPJ5l91HsHs6ItbYEXXjASmUnesC6RdayPSJgCv8z2akDgITxCdQkXO7HdsNLBh6cvMw/GJ/AWnl6voyaqFntzhjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720559183; c=relaxed/simple;
	bh=F9UHAMrAZ9QtrGnVHy27b5/kVRZlY1xg/tBcYUz2BTw=;
	h=To:Subject:From:Message-Id:Date; b=nwcT9KiogN8x+G9i4hk3AmBI8KUa/DDJ75/1+Lrsfg6/4qOFtXGxbb5J/RiOESHTpeaFklY/v4zCwmFELeeq0iHvEZPgKxCHcfID7+gB0tKCqOgXiitpweZuWcSXfQuUIqpKEW7kjlvHun98Nhi/GrbXohtaNZylYZgBDNA7A6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZMaW880; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZMaW880"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72F0C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 21:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720559182;
	bh=F9UHAMrAZ9QtrGnVHy27b5/kVRZlY1xg/tBcYUz2BTw=;
	h=To:Subject:From:Date:From;
	b=gZMaW880J918lTor2/+czNRu1/BT5MXsIjtYKSlt46JSi6M00HvNFl3AI7Sd9uOyM
	 HSspcmEgkm0+wh508ZA/6ztLQUWhzdsVS+XfE+maozIvSkOARVG3nawclGz+e96OrT
	 +4U9wtTqNAH6RfDmnwZxTlgGSqPh0KCIracZMH5fb08HjqQWvarNFPY5ClXEpbEJsD
	 fnpDv46hGPT7Ge9YxRAv0fona2fh7QsRyjs+DlVsgUcCD5V82h405u5gcnFLJnfoq4
	 s54YuIWbtk0RPrWDcf5BytHVroIdK+OWPge/0f6UMuU02ZG5OMF92oirsIrrP3k+EK
	 Oqet4SozfKi+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F6EC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 21:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172055918280.31515.8786750469296693852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac4250ca0972c79469ee8d1a665d2ff4e8e43e6d55f963a7516b34693d32f643
Date: Tue, 09 Jul 2024 21:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720559182
