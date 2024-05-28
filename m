Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F65616B744
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 10:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716893063; cv=none; b=ng6I4H9YYDiWeHbGaEUrzuc3Dxa6QmHvDwoKHxEbSvaBk3ip3josZDLqKJGKoxpK16vznTB1HVH4ifjRO+c1bD6534vz4PLjWqB1BBAlfUQo1bdp0kPIXd1snIYo1CbQmH6CBJW9CL0GyhPANisN24YiMHLWMXVHaRX4zRe3F1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716893063; c=relaxed/simple;
	bh=6vh3S62tEHQUvJmZVAo+O0ODBJeYYP2Gr4q/mw/+WJA=;
	h=To:Subject:From:Message-Id:Date; b=k5eT3uBd1rERgbbOX6ILYOmNrvKTzmrHUkPH8zUY0boKk94EnJhFglHGcpBQqs0bjA8FKqxekJ2oUH0/clZnKpKlDuBIkNoD/9DLn2rdMyKgcACiPqkhb0mAtrLhQa2VKdhcBHNIl4ZQcTVRotQmJWIifaBp8668I9gFroY1e8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVTZHopR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVTZHopR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAFB0C32789
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 10:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716893062;
	bh=6vh3S62tEHQUvJmZVAo+O0ODBJeYYP2Gr4q/mw/+WJA=;
	h=To:Subject:From:Date:From;
	b=EVTZHopRMoD63hILDhYEAqs0thpPYvKORUM2TER5QSMH+tBmISS1FoE9kR77SXBZR
	 qjHkNjfz/WUV+pM9r0IyvogIgb+zD3f4z5c8zOaXFFDlPAhG+jNynJd9kRKXUUgEtz
	 ChpPV6B1LWJZ3Bh3EBXpsmkqypE9wkSOW3QemvlIr6P5k7Ap71cG9Qjl4nH/F0f2ZE
	 S5Vn0ca/xP8UigpH0N0WzIBwp8pKlQz0xgasr4//Zz36Fm/fPsEJvUrFWPld4CWDYq
	 yzWWOKh5khED43vO4c+34byhzsQH7taIbcZwq4KiH7dx8TytzRKDODVH/ik5LuSECt
	 FiO3RVEbNutCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A13C25B7C
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 10:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171689306278.26576.13388466937983847834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b37405b9e4201ce6ec62bef81969bb7310393031bff16b599ff3101cc6523776
Date: Tue, 28 May 2024 10:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716893062
