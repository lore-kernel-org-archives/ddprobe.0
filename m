Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5574582C63
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 09:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714035683; cv=none; b=cdj9SdNIGZMugQyzgQSvQNWSYRTi/KIBmIdUS8ZzFQkQSKkBw8S0wSuhOod7sdiAvroebEAgGL5gIDnvSYJE08vX9PC2OcnIc4Qodv8uhYe4eNelsx+fu1nbMbPSV0hM/86c0rE5PHwiWRQyV8ll/JbgI/FZY/Xph5hLG7PUC3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714035683; c=relaxed/simple;
	bh=LMvJ84OXHU6a1qEus+ye+LkRi5JCRdE67E3PMhe45Y4=;
	h=To:Subject:From:Message-Id:Date; b=tTJ40NrPCq8+8Zsp77XIUtkPJ7Evz04Mp3j82cSiCi8h3LQUkkSY7YU7z78/z6/MDGqoFNdQdn9L+X/CDhRM+e4/lJf7RuyWof76+Bq9BKNwPBuoAJ4SKBYbzn3bcCkHJh15Yg1dSdk6KIHrNnqzSKrqtl3hTBV/9p9nC5mUA0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtX/L/U6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtX/L/U6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C4EC2BD11
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 09:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714035682;
	bh=LMvJ84OXHU6a1qEus+ye+LkRi5JCRdE67E3PMhe45Y4=;
	h=To:Subject:From:Date:From;
	b=MtX/L/U6/2UtoW8XdS0SqDq3T4zJW67PIz1B/ciKEy0Ut/iN681GghIlVDvt2EYiu
	 mii4v5dX40rACo9zG8ckdc+EQGdwJeLQOQXTEuddV6ldM5j9MO1LNjVBLUgrg0aUzz
	 3BeWHtm3XQc59QdnM5D+j8cnbIko745VLfkY3Xzr8Oep7f/BFVxdFQjcUdqJGiY9Uz
	 zgb7ksOEZEBOE5k4Vt/MGkh3mBzVOf+pV4ES7/wwUwlNii9M/HRuQjWs901MWcb5v2
	 M72Ki6iFk8emoaz+lbrGthyghODxHxfNqCpyTB82Xgo/R+YTyaq/SBuFXvVfF2bo0Y
	 HX6xWDLnwCgvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF149C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 09:01:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171403568277.13990.9848885206428630622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2038e881959f3928d31b8d89534f988343c6cb15f3ba5373ac1fc8153de4129
Date: Thu, 25 Apr 2024 09:01:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714035682
