Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A99EA59
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730089554; cv=none; b=RhVEeLAt1v309qF8MnMJSNTybz/NefkRfJk8mStVxUssPN0cDMQxilQWMoIep/oT+CI07U5eGjVWyvQbukZl+dipY15qYoU1YXzcBY8VqIqDTx2Jqeve6hYkyjiWWNajh5JIktPsWXltc9aP7/i6YQSzimpdC7ybfxyV1qktNe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730089554; c=relaxed/simple;
	bh=LAFWodl1SVov8isNHhfOAVJ50njMZ3CnP+5ROZhi2JI=;
	h=To:Subject:From:Message-Id:Date; b=gyYGKJqQ6BN+mky77gGvexyE8L31oOvDQhQgd9cQVk0BwEhRAzmLGcCnmpW6TYbkJDzn0Aq4WRnyy9POD4lxRQCxxq1eXZsIrIItBBpq0wkfYwGne6DLz7R/74eyHId4XY/7AA9WmGdRQ0+72UpdrZdh88q7pLSEWcLGLExooDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CzOUyhta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CzOUyhta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8033C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730089553;
	bh=LAFWodl1SVov8isNHhfOAVJ50njMZ3CnP+5ROZhi2JI=;
	h=To:Subject:From:Date:From;
	b=CzOUyhtaQOx1EsZjJPnFRkip3W2QRpRJPSjwrVhgZ5L/GdsK5KDmiGBTnFf/4aUNz
	 I2q1GUaE/0qd+svpCx64go9VlCLcQHPNNaQ1Ylc9TufPkDBjBV+nhX3QN5KuREbETr
	 cDnsdiMq118UsW2rFsW54vCAwXLP8DHGrrrXy6xOEfuLLrGS7LIbCQhpfwOTHDSE4r
	 huDCA7/FzAMdbutMm37R7XdYmYGBbNjgOG1G71kvCyKETRRO5BFPpp+w65sjR1MEF2
	 OVDd0+7br0JuHefe4+G+ygCFtHVFoxV0ql4wG4bxh6QAD6lpuTwDdON1gjXfUPWTlZ
	 BgIN3kK+t2ENg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C09D13595
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173008955361.20095.8200480775957927707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9f94e18400bc9b030ddc27e88f4cf49c0eccdf1683db4b1e9c7204390740b31
Date: Mon, 28 Oct 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730089553
