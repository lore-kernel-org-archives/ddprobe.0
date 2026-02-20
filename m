Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A2D322A
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 02:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771554294; cv=none; b=ZkVUQIFsAsAl3mnZZ+RJloD/3skNtTOtOIA0ZVm8JuJN3HQ3bsgotjh6VcX5vwefJTuXE6QVdlcXunq5m747+i47yA5oMyqjm1ohOu3sY0rWTHZtghGoOF+4cYJohb1u2yhr9RvW+YkLR2muMy2K7HU7Id95AKkWIWzQqiGmxXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771554294; c=relaxed/simple;
	bh=rv1c97UrvCvbIfkH8AollTR1xNatJlQZKwQ/YIHIw6g=;
	h=To:Subject:From:Message-Id:Date; b=VATf3brGygQihEgO8ygTwrQnV1+D33rUg8gkkPPvdVwDmrXWZmnOzaRZ6srZPWlwFayOduFipTgZPMNtfaylwclMUv7PuZFet9lcb9SuiAxyiNp1DjdsjoRI9IpHFtM5b6QQ+Qrk8NvE8stmBUEp2PMHJ691HqKiWKPKyayW5A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EfySRGDz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EfySRGDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E05B4C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771554293;
	bh=rv1c97UrvCvbIfkH8AollTR1xNatJlQZKwQ/YIHIw6g=;
	h=To:Subject:From:Date:From;
	b=EfySRGDznOsgEczjzkqZJVf9s+tYXEwpycHuzdUO6aRficOV60agq+CiqomBB9y9I
	 D9rJX0g1By7k0V/ZzH4jQQGHnQweATmVWmoUYsz3M45XXqevnmYrxX2xlbT5uGu7de
	 jHk00kKuuvN+WmkH4MvU19BnApqsIIfVTuPeaJ0KfJKhelh0a9aK1Y5eee19NHOugO
	 3ZLgNcxKP4a7GG3fN1DoMuebfSrjCL84VA+VHqs/snEKOvMuCsuxc/NZ59XQI2SgrO
	 fehCzrM9XnrfN5nItfnm2ooO67OGpotJJovH49OkN5vKfaE4hAFxzK71oX9wAUu/Z6
	 +k++Cz5B1Ac/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CE7E9A049
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177155429359.24800.1580223176036401320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 820d67215bbf970fb3dc69cd01c1d0aa984f607de9ea44344a53be64f4a1c476
Date: Fri, 20 Feb 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771554293
