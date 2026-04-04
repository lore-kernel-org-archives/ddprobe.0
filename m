Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C2523D290
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 19:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775330134; cv=none; b=S+213DtG7vqq+DsTXUqK8984So3cjBc4JKFREhEXRuDb+EIeKjKrO4wkXn7LKiz4YgpwdGyyQhjVohYzH3kMY4uaAVK+kw5M1woVtZj9omoUdKK0Jo8HiTIo3eEuknHeHiLDg82LHrfLWRO8PMOsvuamnCG6BISf/AO7VcaNXHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775330134; c=relaxed/simple;
	bh=of2Sf2PcVVxgxbmMjMyBZnFjADaaV9ikMFVsZggsZ9Q=;
	h=To:Subject:From:Message-Id:Date; b=i1GRgPBVOlhzqKtdiMaNbUxx5ZQspHqk8dOATsFslFBEk5sOk5JCySJ4WeJPzjBbFggx+fPi6AI9ZONrURWuBvsEJ3jaG/mulqJwb5oLyk/hAyqWoCu3IbN6Y5BB2/5gTceHtTfkh3YGPpTSeyGEhMihKxyrGqmOwSLGUPATN5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzwfF0lj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzwfF0lj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC00C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 19:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775330133;
	bh=of2Sf2PcVVxgxbmMjMyBZnFjADaaV9ikMFVsZggsZ9Q=;
	h=To:Subject:From:Date:From;
	b=OzwfF0ljFg6rX4WXXRf4tlQ2qiJxNk/0eEcqrsf1ZwB1NoZqCDWxrOI9tkjsLD6WF
	 h+B0ZDvrYoVWDPv2NfBIRg+e8nuTnJ0ugs0rFLoNt4Lf7V5nSfwBUxH+ShY+I3Erjf
	 S2Gu4e2GbLrgCR94iAkQpgDDiwsUvA+pR2ij7UJZQbln39Lmi3UIarbjvFOZ35EgYq
	 TvDFeG0C+qM0cB5DVuVDamOhgidx7InBJhA8xQD6ehSg68DfvMaF3AMGlieB69ueWS
	 wudOJfP+wJomYw4iBcl69GDfohLkVPBnMyctUUmYXd1NUv6pXGkxk90uBW9nNiziHH
	 sicakbqhk3hyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7CD6E63FEA
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 19:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177533013373.32531.6332912383992027394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51a2d909dcf6fd27e05de6c26d86db01cf10ad053f2b6e7d99e0d9f31a98714e
Date: Sat, 04 Apr 2026 19:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775330133
