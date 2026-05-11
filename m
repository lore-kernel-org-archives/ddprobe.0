Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E012FF66B
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 23:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778542234; cv=none; b=XX3ie8CvHuNlDZAhinceWWnI+X4e5LUkrI/6xAhvs/zFcZrtZHx+BFOXzYof0z2bJVgSyTyog4Fgv8eDNYMz0n+/BNlsVE5zPvgOYAxrSIsBdzL/ntiYu0oJpP+UJvtdN88635nL92z2f5JzATPKaWULMXhWiRNugMoGm2m2z4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778542234; c=relaxed/simple;
	bh=xFe6jrsbTOzqGC/X5m1pFjELlBwSpmaCwt0GMmGjOWM=;
	h=To:Subject:From:Message-Id:Date; b=QQ3rqht1uxCZQH8ijjIkjCkNUGZsdI//bWC/s/n3s3JNxqlAndpwePO2g1larThofAGPFZnVFV7cxtBgajn3LYxZek+UILhEx8Lhsz1dc9ijF9ugUfyHkvgzIBjPjyjKzzL9QsECViSZWObL4K+yu4iXX8LMJvdAVFQU8fzeyBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5gIiA3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5gIiA3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE49DC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778542233;
	bh=xFe6jrsbTOzqGC/X5m1pFjELlBwSpmaCwt0GMmGjOWM=;
	h=To:Subject:From:Date:From;
	b=k5gIiA3tMcXP14vIg070DBWDi/QNUJTYlew1asOf6KeOpZuCZhnc1LiJK2aIErmSQ
	 UusYbC3vqAyQIB7ItR3+7N0cEPH9J2TrQWGmp6nmqTtivcsYtF5wde/AyesJE6budh
	 raEBfocnlhvequvspgl/NvljzUxJmfUQ9Xo4KDOTZ/lWgIPO1TmPCnkmDDcwyKVIuy
	 l0vUfrg8YB9ML+5BL3rU21tNEdjXf6i8x4NViOq1q9oB7IgCPtTqJavKjiwBVL7wso
	 KVuf2W5NNhjScxVqEL05TRQO03eCrSWEDJbxU83XShMAFo+Ci1SyLuC8NBA8ERtcqZ
	 qB8YFQwTztjaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC690CD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177854223369.23205.11185113119594050822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c83410df699938a45badeba535fc6d3b8d88f427bc2b34cfc5eb92d78755a275
Date: Mon, 11 May 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778542233
