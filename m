Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1429D1D61BC
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768507434; cv=none; b=gXw5A9acRHz7bPcamCK2pyedVaT45RaUaXTjIyaqAGY8H0Fe7YxtCmMs3Djotj86gNHwHnjX34xNm8tm3xvOhBwX2B+JJqlHPKRYdK7evTaFtckbnWK4MmzhlUNr3m1bLZ9nXxWWKdzBhPY2ju29TVM/NVmc8HJ/U+wjAEx894I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768507434; c=relaxed/simple;
	bh=TLuD/VzVGwz0IElzJ7pUf1HNsUW+ZxlSFpIzDDAunzc=;
	h=To:Subject:From:Message-Id:Date; b=l2VibpuGjLVr3LHWqF/zRHaJCoS55gUnXrYCGO2UagLyX6Gv54X+C+dV85Y5u24HVM3+A4A0z1l2pygKEO0ZmZ0xVVAcxzntlebe/xSbb/odPr8rSaJSe3l+lf9JZdQMA6ZBDeaoogkMUZJwIeilRF3iv6+u+zIvNnyQzn0gwc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+TGrnNJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+TGrnNJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B3DC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768507433;
	bh=TLuD/VzVGwz0IElzJ7pUf1HNsUW+ZxlSFpIzDDAunzc=;
	h=To:Subject:From:Date:From;
	b=P+TGrnNJEdXkbsaLlLQG5xwhwFEGs+5E57S1zevBeOouUXHMGjxil3exVH+6nJIKh
	 DpmKpwkTl76nr8s9E/knZiGJS1fO5KPH9RBqiuME7RuZkefovfnY9/ugC7dZI6bCo4
	 6J1SkbqeW01eV95xWd0GzHJyveg8nqe76emsxnO8Qy1Lp4K9TOFF+cpVPYfA9ACUEu
	 y8lyyIw1/UxFKuY2vUMaYUw1Zk79SLQ5JKI/0QdWBDjBXAXKX3MTeavZRXw+ZmiPVT
	 Y+zqMiuguNgv0cAqsqdIQAc+tXehtxC094t7CJvrGF29OdZ/p+qbksUwxtj9Ne4cvf
	 EuzlCMlGHIBkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9046ED46617
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176850743358.13265.9383651771950470086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66aa22ba26870c5da6cb995aaf541af30efffa309330130f39afedd38268622f
Date: Thu, 15 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768507433
