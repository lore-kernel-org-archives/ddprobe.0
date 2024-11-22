Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAC110A3E
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732272954; cv=none; b=Ql5FaNuiO5mOgZhpE1A1aagqQ1qJ4hvVKDI2O+E+u+A9DNFDZI5914VfNizFyiRmN+2PmTA/2gBaH8SePocyYI8bVql9vc8WgZzAgSn5tgmibnPAK2Hj4q8YZnSUMts2n6Bx9x19d4zxWgRl07m8oT/uCsoWIq4oyGYD4lMsQ1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732272954; c=relaxed/simple;
	bh=v8n9OQUOH54ySbyqq7XAYh9vksYcKeDV5kklbh0QiaM=;
	h=To:Subject:From:Message-Id:Date; b=YDNI84cLi8yS+JNJ83+I9yTB0bjYnQ5MSLLOCRAIc6oI+uKTgBXsD807KTshcz2R6+n3XgVsO7XotRdRs2ZSCc1MEYiOuKE/Qsw33fhmrsTPKV+kW3WmWkNx6j5g/rnRmF3tV2BQXGm0tMqDjX82KmorYMlOn2GRJLoN0Bo8XIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrTX8GDQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrTX8GDQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0307C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732272953;
	bh=v8n9OQUOH54ySbyqq7XAYh9vksYcKeDV5kklbh0QiaM=;
	h=To:Subject:From:Date:From;
	b=jrTX8GDQt0+NM9i6T9cpIUNzZHTbepwOWoewjJByOiIXsBx4FHWnT1OVm0HCNWzlF
	 sSQqVI5hmG8HQfRPKe+bH3IMtO/+g89MHRb/kwaJjwscKMY0AsaWqx5AYzCU6k5Hd+
	 qFOEGJhorYX0d7lD5ez3j7EzgPhYwB0ZjK6tRrTz0IYXzqbl8fjCPGXl2i2bVouIEP
	 XH3E7Izgfyrnhxni+Xs3LfDmYx+k6d8WwIdr4kLKlj/Ycf1r9wfNAASTsRbC+ZGvjI
	 Vcyi8ANrt/OcTcbxO00xvR/UsX1yTKXjsE40iReYvb00EN5zuZJPifu9yPToQI34Ok
	 gAQeTQmAn+dkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E320D75E21
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173227295361.17848.15428387508090548416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 417af92b09aabedbed528f7a1ae86e9c91ce70a13804de9088abe6a4615cb066
Date: Fri, 22 Nov 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732272953
