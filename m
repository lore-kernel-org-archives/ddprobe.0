Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301C8157466
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722377754; cv=none; b=muy74SfzO+cnqZPvJMPn8keFp+2Md8sRBGdmiREBhQy779fPUaHMgLp7b7C9hhScWFfNNgotmue51FbMj3487uOz2p4qocstz3zu1B+gx9yFxcVbUYr/9QaRoSpbJerHAAsWOCasNEoyoWfnwnppjOE2SI7civR8l2569/rN2ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722377754; c=relaxed/simple;
	bh=4Am49N4hyZ8CwWJYSdeuoQBOTmuc7beJDIlX8IjIoxc=;
	h=To:Subject:From:Message-Id:Date; b=boDrjvugUqfVJo62BON0s7Pdc+DyHPN2aoIDAE7OV1amto6fuKcSDPIjHrR3fY0TX0Zz/9yccA7ITYDKy0hPd1fGCldCPL9UrDS3YhQDsh/4OFpVCTn9VaUHXRpqXPDbrvJkB1BiJ/IxaONuH+VNAgf+IfuosH8dSkj5cH/6mEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNjFK9KT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNjFK9KT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1A6C32782
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722377753;
	bh=4Am49N4hyZ8CwWJYSdeuoQBOTmuc7beJDIlX8IjIoxc=;
	h=To:Subject:From:Date:From;
	b=ZNjFK9KTzyvClpGW1rC02J9euNMqQeSeboqX2gH4dRfpIpJUGb+CA8CIB7V7I4beG
	 zTXo+2jMCSEkEVoUfDeC9AWNiXZeIcFKhFMEunhyDrRK8bO95Kavw54Zs/84jtCbV7
	 8xZbOtXSmSDqY8L8XMWI40BEnmVwmgNJgcIyXsjygMQVzf2sh4VcQkrLrTFtmsGMPx
	 ZZHpDmZjt0eiirf6WPyYBaGTatGq2Sxy44KBiOP9Jf9S/hepYSy1Y3zlOc3Fz7gobW
	 JsSHhEw04B3/K4qjNTfgvGMc7Fsie0/Rcdn4WgkGU3gZaidMsDLaNeCb85sR1qagJ6
	 LWhpky/0HRTGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A80C3DA7F
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172237775361.10274.15824854669748152961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9f420a0c1907d09d3537dbdebb67333f0e4b3143bc4c80c92b97a1423d36a5f
Date: Tue, 30 Jul 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722377753
