Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C2583CCB
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 21:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720646843; cv=none; b=go7tCTdXf0pI1zttt5odIhhDXJW1taODrZK8b2ftj7Wap9OyjFDD/f+KPAuRMTSB5kliqASjaF+nI2zrq/8JfImr6+DAfvFjRjPglLcCuNVqhxIF12/Zob/jrsHv6rAm0yXaq6fqO+msQfmzBDTsLMTAZoLnuXVjpgZomYkEBkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720646843; c=relaxed/simple;
	bh=GOCoFbpjI9+mW1J+kS3sxkp0ZpQSY4zVTfZBOQdPJ5o=;
	h=To:Subject:From:Message-Id:Date; b=RnKSvZfgNsh0gtB8Uvs3d0Z+N1dP1xKwG9xPVySd5ZyS2cfLH9V+Ng8spe8hG3fYoYtsg8DC0B7DqhU1NG2/VbDQL+X9PhGeFgXnqlLrlFj7MU7MvOH8rjkXiojE++THkBt3Xz2mSHp++K3LAjGU6X1ehRIKqnUIk/3TlRHAsVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7vTYWly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7vTYWly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE2EC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 21:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720646842;
	bh=GOCoFbpjI9+mW1J+kS3sxkp0ZpQSY4zVTfZBOQdPJ5o=;
	h=To:Subject:From:Date:From;
	b=Q7vTYWly1h47id4aRrsP3Nb7QCWJV5Cf8jpDiRcKqV8p2fRMRe0z7KE4Zd7+SEvp3
	 oHSoJ7QXh3KrIhka0VSTi+D+hrNcA8762Ek1hqDYaYH6GtKJP5cV2F7uUpo8W1VGvd
	 jQdHWJylvawbNCzNHNrZ43cNSXUwsJ1iaxzrAlKhrHvQsqyDSsBMJbXJscoOtpmulV
	 /pNSFUmF9otyUwoC7MbzkqNUhefxTJCt4qYjVoU+92Ict3R5sgqMrU2a64zC7pEyIp
	 /8Mp67uum3/lMks/QLzKwpwKKnN1TQAIKt85NATjxzIoPAw2QpTSWba0RjYfEl8dV6
	 f27BDNDNC/h4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9CAC3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 21:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172064684276.26971.291807844081641454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4505a45877c8546b7e363d8d436e938f3fe47bee126ec76dd040429f6429328d
Date: Wed, 10 Jul 2024 21:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720646842
