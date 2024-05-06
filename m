Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592523D967
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 06:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714975943; cv=none; b=hPoGGcM3EuosRhBSBr+ewruommg/BrM+CPJ30qGfgRCQPJTrdsSKKeuwrMEW7cg/2y3Q8rNaDAtke52f/vumjDAzC6ct0cWI3SP+jkIh/GYzIjbPYU7Mo2ff045vBBELPvrHpn+nuQJvs51FKNxRaw7USREvzbOYUzqFd68xbF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714975943; c=relaxed/simple;
	bh=MZN5rcdXIAlhqkTd9dsY1xuxkWCvZnNhQeNIs6ANi/o=;
	h=To:Subject:From:Message-Id:Date; b=nVt87AuXj3F0+Qss/LHYDgOAhdA9RGl4chHdHHs+yFnSTrL4nDXJMKtZEj2Ec46lX8Mw59f/sYEBMQNvQHJiYMs8AjdCj74JC8CyMclPmfIOyrakAGnyGk41ZmzaSeaEnnkaoUgFcQTnyrbZf7VWkYtJqGL6rbt5gwkBSM0GvXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rn6q/saH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rn6q/saH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD344C4AF18
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 06:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714975942;
	bh=MZN5rcdXIAlhqkTd9dsY1xuxkWCvZnNhQeNIs6ANi/o=;
	h=To:Subject:From:Date:From;
	b=rn6q/saHZfats+SfHabu28tGuvLGpxqQsSeIz0cjYI6IR95MsXHjA1Cjfuu8eabE9
	 upmEDrBTaW90ZxnjfSk+st7xU0hrg78UeknZwk0ArRsma3uwXkgyyTf+2jqEh1T044
	 p6VG1mI8aTZpRjq2wwdazjFxfuhevpQfCN9yK6Hne4TQbZxJBI+2nc1GUYryb8FzD0
	 bYkHdSWKv3sShphy3M6ovmE21LDKZSMnV9zV5p52hqdrVyZ/A9YCkD2iAo7H7VpTfd
	 KuQTjftqhyzs37JF2raWu+XWqFhKb+Xv8L8R3T1lAZaKaWaX4krCaitD2H525KX1Wk
	 YAQB8kozkM8wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C693BC4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 06:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171497594280.23989.11914585705279074955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6157c0a720bc474a5e124332ead873da2c8192228db2f2ae359900af543eb10
Date: Mon, 06 May 2024 06:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714975942
