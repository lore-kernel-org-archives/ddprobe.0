Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F311139A800
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768396434; cv=none; b=iNUP5WS1LEZRssWl7WmbPs3TpuIQcGQe7gyjS6yEr2Gw0ERR+NTZrPdqLI1GQAkF0jHY3YD8TROWvt00gLdOChDSHr/9Qkh9DYoEcdNg96XWgQ442i1FeqVET0l8iuk9uSPVw4Kx7WFE/y8SyvGbcECq8PX+8sURE2wjb1RK0nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768396434; c=relaxed/simple;
	bh=2c0XH0kXXX7e8QJCpgV2h2+l5IdiaIa0t/TlJV1hLa0=;
	h=To:Subject:From:Message-Id:Date; b=PJ/h+064EIiT+eMv6zNt1qSDShEcxEJXcnavhijp2O+8vWgwNOm0o689uWOAV/BJ3ERdfJ1uZN2b/QBavPbXwLJWgJTrTl5VyOfWBuGc8xFQwUMtD297+ZPk5NGZOiMbzkvUuLSj2amZrGrBB0YOjXk9q+BJtMz+RsXYs4yJxng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/9cYCuS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/9cYCuS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A098DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768396433;
	bh=2c0XH0kXXX7e8QJCpgV2h2+l5IdiaIa0t/TlJV1hLa0=;
	h=To:Subject:From:Date:From;
	b=h/9cYCuSfBVonHhcoPcYTK49fpXoK0NCbSmZ9mgBXnm70E9UjJ/7X+fU57gU2A3XT
	 KWgPE5qWcLdbf0wQrOqPjNhgtdgcymMUB2vzaGxFw7Z4HNjp6kH02oH88T2NdcS+sq
	 34SKcM/vS3mvL7pYTqsmDOVfdaGbwMZCnrG0coOBkA6vTTX94/UATsYJQ+jak1+Kt3
	 0/0t6UmeCz2cc9XNaHXX8w47ARy+PVFDZIAsk3+MrIlH+fD4e3HBKgFejRR3ElJLa1
	 qrM+NEJLMZ3g5tf1EOY7W4y6Fl4DLWhy90Kk90VTlEtKr7aP7zF3FePv3OuV1uuuxz
	 3542ax428T3vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A46D37E2E
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176839643358.23135.7679720175805748827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe2515c328979ac471e5c3b05db9b80c68e4e7fa3859fdcf15c206f20d64e8e3
Date: Wed, 14 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768396433
