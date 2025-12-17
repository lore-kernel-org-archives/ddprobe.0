Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F2F263C7F
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765943634; cv=none; b=mdlQ6sFk2XYbaVOHZGJQN9O5Pct+wirQiIPrWjHNIIh35D5f2kwECb/O3ZReQPxun/cFtS/Rd5yZs2HBsLF+MzDUhwHKESNEXvi18pt0niE24xJplAd2Jb/OGvmkvlCsrToncjH8mnQjbM7GY3n7Aote7bf1LQTm0b3NI4cEJYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765943634; c=relaxed/simple;
	bh=tm9vIyAZYYippyRQeImx5QCIWvSiNkiCkDsKv0Pmp3g=;
	h=To:Subject:From:Message-Id:Date; b=P3GozxA+dYsJIGqBC5CPfOF2UPKdhrKxgOCWdrQNXrrzlFHqELkolea6Jqz1aYtiyEn9gJluSjQ7hm57hUbNmK9IbMTBwipfAHSekaYSTRczTznXAeYOqzP9Wm6OL49t7kd5VdUFvtwosejo8iF66x34571ICrGE0sTt32zEqj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+CJEibu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+CJEibu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5103C113D0
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765943633;
	bh=tm9vIyAZYYippyRQeImx5QCIWvSiNkiCkDsKv0Pmp3g=;
	h=To:Subject:From:Date:From;
	b=g+CJEibulCsfKa7k1Kvw3pOLGy8LrRCOCAf6XXDND5TOxNdSRF7aRwQxiBLSCMRCh
	 JTzmicTiJe3JvN+bhq6LpdQNF29Jqpsszb2yXZbJ/RKBVt7KjoffS+TC+/3HL4J6Co
	 vBjV/mDPUPIm8KMj7KDcIdTESCwXjEs9JBnbzAJxD1pEgyUomHZhuCFXAVQRSr5IWJ
	 iHgolMQg3uROb496DF4EmfKADghA2lrEx+amhNtipaKctoobEHU6xGlQnBlGmtT+ti
	 oocRDQw7uZu3/ttI1ljexWnh+dZlNFDJdhcCXLmHJ3HY+NqicvRIGQKLGi4chPcK68
	 YPxz0klaPl96w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0931D5C0C9
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176594363364.7192.6757558330753732655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c091e91fa07fa6217b999535ff2b8ead1137b183076cfbb468adca3e8d9f7ba2
Date: Wed, 17 Dec 2025 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765943633
