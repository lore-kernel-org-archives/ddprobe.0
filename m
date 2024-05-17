Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6486969953
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 14:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715957543; cv=none; b=TbskROQacVDiHvtxC7CrCMPtg63ONZnj2DKzlZKEBMICKBnfytJ6DpRCKMzkWmEUlqtFj1iiu5KdGKwG7R5w1hHX/DYMFA8ml8aeVH0BDZKZNDNrslMSiT0JJ4S+Vwzuht/RvYtKI2XYfMeJ/26rMoJ+Wf4s20KPbJfx/+tfXVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715957543; c=relaxed/simple;
	bh=HNfFccmpaFWa5BydKkR2LjTkUhuOjsyiLXlFjkI+nUo=;
	h=To:Subject:From:Message-Id:Date; b=hid+v0GZ04IfVkbw0VLmLUjTB1nH4sWOVwtVSrtK8j+zwDeNilm/EtrbfIpVDGetkVFpTkMUNU1Dn4eIm2aigIJ3gYhzebItITfB8NqJsHhD+kBnZqaGM2nkAY76n4GDhY8IHnBOR+vGrfxY+RTL9U4iTYym5MqK2aVTLSCal/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1yUV/Zl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1yUV/Zl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B39C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 14:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715957542;
	bh=HNfFccmpaFWa5BydKkR2LjTkUhuOjsyiLXlFjkI+nUo=;
	h=To:Subject:From:Date:From;
	b=t1yUV/ZldMhgdh5gBZpigYGO6zacw578Zmlbsb6wuoPI3mENj/SGcF3HWBqkrJM81
	 WQuku982UgbVU0RviLRloPPZ2CYmBsXQLUT0R+ixzrSLdBvaeZngDBCCQKERuZ4B6A
	 0EnU0lx12eB/wYB8V76NgtU+MpfRp+kLzNTv+nKDAp4XYZ1ndDUaUgZwsXUAtpfM+f
	 KC4H8mivC4w23eDMp8wj4t+eoySiYS7uIqaaS3z8ZTGSwm5DIrgJeYNuBy9n+GsIAo
	 V9r4JWe76Df7rmZFI2XxoMo0aeaGWDwJ31BOWiD+OCUZv3HehTqeVIPIz8RvdhsKv6
	 A09lX2F/RKudA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC4FDC25B7A
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 14:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171595754281.9705.15475406351441597096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b716ece358049e0603c631ba0103e07aed9b989067012f9ecb9ab2e3029c17a8
Date: Fri, 17 May 2024 14:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715957542
