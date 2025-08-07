Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311D9252287
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754570996; cv=none; b=NRSW1CSJZgvMC/Gb9qCUFofxVwkSsNQLfWq7vgALOyVVq763MqgBLlGVD7CUkwDmtmQIwQ1GX9uLYJ9nScuuOW3fkpMACeTk43R4tPJUOmPy+0ffY6CfGNgKkxLHOcew5px8tP6VNcqGHX2o5wQiyR2WcdMAsvjQ9HBowJFSqv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754570996; c=relaxed/simple;
	bh=wsBSTnpJ2AUPI9M6LYdg2T4pJEDuekuNU33XqkczJa4=;
	h=To:Subject:From:Message-Id:Date; b=JK+K+5vu9cZstiJhSJbPbs8wctmvHLPww0g/ozXyLnyuEhI6timJY5fwjUHeISj/uw1xPpbH3JGE0oTLs6nTgeaVw0qj30AcP/btJ6nexNGf2+60bjjFFQY3q0QAnSHY0MueedLzmjz0u0CvZWSItEF2r7nk3RV8ca/DUxGk5nY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lyk6ukym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lyk6ukym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F3EC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754570993;
	bh=wsBSTnpJ2AUPI9M6LYdg2T4pJEDuekuNU33XqkczJa4=;
	h=To:Subject:From:Date:From;
	b=Lyk6ukymNT9SQEnU6OopRlrHNCbd1wFIMFz6DA+irrJ3jXaT5PchlGe91DHvoR2lK
	 IYn9+bptHFMpmBbECSnoc0v6bpzHHmXh07hJwdhmVTcEt2dBuf5vMQ3KfV9Fx4Toh2
	 OLdmkfb7NNELOO91JyZhpP128U41iYdmHQlrYu1f70rzwsgtwlalTs6nkpuBgUfC3d
	 QRTYTqzOSfHXnvvvWOOpJqCT4QCOwlHkUuug60gKkv9L58fSDcbFlbNrPOU/hSQ5Dq
	 DWfQx5ujbfq53aRrR6JPAbH+VlzM2sMMCH4gnl1PBVRbCJyKarqk7SrbMpl5ErxtoY
	 Ni59ZClv2iskg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B73C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175457099358.22941.10801319152083018045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c825958d05aaa12217f5dab5e6cc462e9e5edd66868735f509e35ba402b0f5
Date: Thu, 07 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754570993
