Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8DF72857DF
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755811193; cv=none; b=tBwLp+RGhg9JX4ZGPYi8IVeHfAEjr19GgOVUT9yH8qxxfwSbRlDAmO5TWFmLpHz7B5WpPFuBMmNkdF/HvG1KmEi+UjgPELUV0DNAr/V0jorg3LVcJN5SY9n8ej/LwOwYE3m0DM5dhDmd9hIcHlyFjN/iRiNLRUUG4DKJXdREZqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755811193; c=relaxed/simple;
	bh=00NFSKAv8fXM0bJQeCQeNNWKsHYWPPrB6YDNTkXcqds=;
	h=To:Subject:From:Message-Id:Date; b=XRIFLiJpZqOFOqZUFFVB6Y+ptwH7CEa4mxit/JwqOYIqmI43FvQnTR8GtyMbmqnoMZhrE8wj64TL7SFmGqHs8li5CmErW1/hbq24ZmICths2ruyohnlWNzKzvFhUS5+wSenshrUdBfwsbg5lIkx6bwj48C8MUSQ8GQm4w8ptPlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aqs85qk8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aqs85qk8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E09BC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755811193;
	bh=00NFSKAv8fXM0bJQeCQeNNWKsHYWPPrB6YDNTkXcqds=;
	h=To:Subject:From:Date:From;
	b=Aqs85qk8Y7ViT08yjGnMv0x48PEZVb8iJKzO+pdREWJQKi3byQzQmKmH6lgDJC/AJ
	 n8n0waLZs0/U/Rqc+kmb0Imu2/BpBJQr+tzT1GnnqO+MEHM4p+uhN0taJ0qwN663zE
	 4v00nis2+hzabThi6loyXSzZZltH/u+7hx6PMOGiPfrCjMpS7nM60j3rTwAVnZ5MoL
	 kiBdp+EpCT45euJRgUJ4Yyt4Vjs+K3xxJf3dwD1WfcHT81tOv3YsuJVyXArcs9zc/a
	 jjeXML3KIpfVtlf2G/Hg/EO8oqL4ShHAqJkDxhKhPMpZYvsmV8H8LyJq7miNc1d/4q
	 kLa5TB3dmS9Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5C5CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175581119357.29140.1433210157210541910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 814e7022b4a1594cdc2dd4b728e10067dc8015b4a37e1b865c06a56dfa81aae8
Date: Thu, 21 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755811193
