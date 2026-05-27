Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D39534B1A2
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 07:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779865354; cv=none; b=NwgoR94Bz3Kndv3bni2Cm3YO6BgDIIHLYxSq4GWMLYKeuGvSECaaJaGeNo0S8kq8ngf5J3BiBpbyFgYTMowXKYYoh5PmdbSkaEr3DKaHig8aDM/dLkxKoaPxkbZhH2mqemi4Y5GzjR5q2M8YzYZAZ9c11hmrwFqouqnvc434Bj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779865354; c=relaxed/simple;
	bh=iujkpy/YqQlFYtekTVTMsBx6ro3D+vXvsKLnCz0LQO8=;
	h=To:Subject:From:Message-Id:Date; b=DtIFAKUDIfG2pp6iABYZxj208xmLyfSmYnsfLECKK97E87cqZiaxbYaQMSMo8BapEWODMg+YbW+01DivYPl8SsXfEiZTY5b6YRc3YrhRTNmF/+2jVH8AhbHV/7iida6PomeBrhjY7C2YIbfLAMBCF+2VkLCgefCtvHWv/H4vco8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gtg2dHS0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gtg2dHS0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7396C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 07:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779865353;
	bh=iujkpy/YqQlFYtekTVTMsBx6ro3D+vXvsKLnCz0LQO8=;
	h=To:Subject:From:Date:From;
	b=Gtg2dHS0OauuEibaCzAactC04evluMI4ITqxG2cQUrmoOZekaxQ26/ymrfN3JsY/M
	 dxsbOU5JqqB2YkUMcF+BcsXnAE2E1zxtQBncEqvkkKAb+UsmlczRZeEQFYJDyVHAGU
	 MtXP1PHrJMl+JsRcD4VkprOlpmB4jP3ZJZLgxul4PL4JT4Hvo84mdKmoTNFi2PoWFI
	 mJc1qhNPV7cw5vNDd4Pdw2SFLWTxvI7zxUo/s+k5+T9bufvLP/knSzNIiM5VWtRINK
	 bDJ/Vf/KWl+gxQBQBBZ124MiFVh9Jqk4mTICYaaOxBH4rYW/TKv9u+FBBOUHl/IIkA
	 72OPfGd0DHZVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5FDCD6E41
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 07:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177986535369.14224.5755895141069590700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa4aa184667b996f992a3566b4ce26b6069547415826104364c1e71535990b4
Date: Wed, 27 May 2026 07:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779865353
