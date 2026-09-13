Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4004238F654
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789330234; cv=none; b=jumw4XejQD36BYOFzn2CwhS0g8IHjD5E2OFXBTLHpL/bhjm1CcW0/jPPpcjsRJKnbgv/w2DDm8pRiXKZ0irPm1Fqi5ArUpXePC3NsbiDFAQeybWmmuAIGGbPdQdRYAZ5SKbUOONHZ0hRq5zYxzSnok2BtCucAMI2mRoJkyy6yEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789330234; c=relaxed/simple;
	bh=LspkpCi/ifczbKnLQ8am2Q5DrVZvxv4vz2AQxGrWyEo=;
	h=To:Subject:From:Message-Id:Date; b=ROZUqkzqj1l7gI3WgIf9vskyXS1SCn71rCFcbrpntHGBdWRU6ix2gKrK8FXGUhPrLJI7AVsUDPQV25T2NDJOxZPFx15ebjHd3LFwVG5R8QnmsVQOvOllLy5OYDyocVf+dhShLTKFA1vTZHcp/t+VXMM1QHRTyG8CPieCyuW63LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdVFjaC4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdVFjaC4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09F5C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789330233;
	bh=LspkpCi/ifczbKnLQ8am2Q5DrVZvxv4vz2AQxGrWyEo=;
	h=To:Subject:From:Date:From;
	b=FdVFjaC43KmMEgFYA6PmXo9YRigUxMpOQ5pSHItqEuK/9HLAnM0ocoBM3MXNdVXjw
	 FfLQly6O+31fx1rY9DGDfHmHAeahYUzsnQMAYuZGwCOxnoah0jdzYChq/LD82hM9Bq
	 VU4VDozNKEfeQy+Mnp+wOJznQRR3FUJPq2fp6TvRP30vHOiil1aPBtg+Ljj9wMqJtF
	 ngdcHChn44lKqfGsj4B/2O10d/KMLV5r/Xt5MAjCao7AXnHlUjGzPGdVsaOhsc+/uD
	 IXVX5ekAU1bjYamZaeGvwn5l0FJLiqKU1yrIfPMw4RQwUwBGKUIH7cH15HUfbFhDcA
	 EIVP1sSzfPbsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF97BC88E63
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178933023368.16010.772471756174699693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9609ab7d97b867052253c1d6360f6c939c1df3e3913b68bfeb832266987f04e
Date: Sun, 13 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789330233
