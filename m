Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2515F524D7
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727001354; cv=none; b=ZbUBRbTbUaeyFNp7a16aMMvFJpNHrEEzojTIldbkZmmObes+k5/TQLru4qP1palJTn2ZkPbhTKxsDjVfIX3p8INh31lsDiDl0dFvUCAg311Gy486j2xZh+C2PWBfEZ0VKCPLqiej6pNkjCPgQiSSAK/Cvunyf1ezlDGBjQl5TPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727001354; c=relaxed/simple;
	bh=w51KRJyWaWWD3QyE5nqziRCRTs/lwe0LH3ZyfmnB4EM=;
	h=To:Subject:From:Message-Id:Date; b=HEV2Vh72xtES298i2Yo8hdjnfrFTbDok9AWGnbx6lBbRBjDA0Ctx1/dqiUT7/nzecfo5BsUUNDLud0dZxaTEAoyJFtlM4HVhDlMI3MVb+FSq4ctI/eB6gxTctjVkM/IES8qMMx1jZ4sJAPIClwj5UoGaPFbFg9se73NK+vk8a5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yb3pg4/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yb3pg4/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC7CC4CEC4
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727001353;
	bh=w51KRJyWaWWD3QyE5nqziRCRTs/lwe0LH3ZyfmnB4EM=;
	h=To:Subject:From:Date:From;
	b=Yb3pg4/C8mSYYulXWvP7CMEgqJoBRm+eNd0wZLowLLZSAFInjPRPm4HI9Oc/zSJAL
	 2l59ga22pfrzZ7qLB99G3Sxe1tMhZcQZl91X9eBpQ9A+dc2ANvJo/UFp3G+Z+NtQ5L
	 q5G1KEyzrhA83jpC9wfAtM8U2GEk1qc09118lofqUuuoaMzv9E5T3iuufbYoYceZrT
	 QQaUXXP3vqcV5CKWKZV5DiCpzH/4fA6it/OdyXpRicjFSqCqxfB9mvBsk1e6SyrJo6
	 0tneax6k6gTX2O7/JV8r78W1RfRj0OJVM2cRO2jgDy63jcpnaNC6XpElq93QIcQpB1
	 aOktxx/NasXxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995B6CF9C6C
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172700135361.26831.8044140367858102125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b3f4d884c5ef8da1b9cc33de848a82e39517cc46cca0dcbb8941edd5b1ae9f8
Date: Sun, 22 Sep 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727001353
