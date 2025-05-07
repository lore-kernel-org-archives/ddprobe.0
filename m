Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3597DBA38
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746584994; cv=none; b=W573lIc7eQmLAsDWXyFkkNYhw11X0HEkqKS0dleEspwVm4gTu38zsAqduDHXeNPHchOwSEHfHvJC6gyc+AcOOngGkcxLJL0MRCxhPRxPpF7LeWh+JUJkNatMUrFCN8QklIIgcSTiu3hSyv4pOsTEpxF2CLVZ+oiOtgBuKtn1Jv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746584994; c=relaxed/simple;
	bh=TLIXEPlbuE2CDrX09zkWm7csKmHVdQS/o9U8LrxSZq0=;
	h=To:Subject:From:Message-Id:Date; b=dcjXDEh+a1OxciAMC57qRklni0TiA7hEontDcT/PUWST6fihOkzcf0+Kx+16IRjj8tW8nwffgF+uBaRxZlLMJgj4tJgPJGslnJrKEXE2mXsEvrFbShAwOWbVHZjArK+QWTHxfqdEknr1h98e+JfgNVyBy15AzEDmlnLI4nwmZZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRYUtFpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRYUtFpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9B8C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746584993;
	bh=TLIXEPlbuE2CDrX09zkWm7csKmHVdQS/o9U8LrxSZq0=;
	h=To:Subject:From:Date:From;
	b=VRYUtFpuRMIdz7+OyY1zwSGIPJtBX3oMGz/yHnZJQW6xRZbi/GftI0vO7o9Q96qx3
	 /dAhoFZbupwK8bR76LWtsfsmFc+VYXCHnOW3zqVthJU9w8pni3UeSBztde2UfaKoY7
	 feQRHuMYeXYvDVAJVfvSbkNyfjDkokiLpYWv1a0thOAgRGyV8K6WvZok9AZYhnmRvK
	 TrNNKmdlMWNQVeTeAO8DdGetSHYzAjQo59KyKSzMbIBQRcVI3WjJrGDQMWp2BItl6n
	 8sXp8w79he0G7uJyzUbf8SniP7Pp3a0Jngot7afVDWnBUqERW3CMi9tLBAKOfH41OG
	 pRRpSFmKWp8TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFE1C3ABBC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174658499357.11909.16259589509422509497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb2061f05ae5a91fda29072047abcdcf13c0a23e269ef2e57520aa652f4f44e
Date: Wed, 07 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746584993
