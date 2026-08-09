Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BE52253EB
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786284034; cv=none; b=ivzrq6HZmEzITPFcOEUO3Cdny1bpHwZtTKYX2b2iS63q1on5Vk8Jf9CO1Ko9xxPr3GU/SsSAQFUHdmcQnFBooW/BON3EP428vg4CoZJtY1UkOABWxjkJdCGHrCThWmxBakjMV0kF6R2qWTWhD27WU6QsjCQf3PmIcLWDmQINpv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786284034; c=relaxed/simple;
	bh=noyUHcGjM2c9ErLyGXm5TYSWnMpYVAfeP+KeElmIxY0=;
	h=To:Subject:From:Message-Id:Date; b=ptDEwNn2vaS/oLYiX03ZHJdqPL0WUpGoqm93AVscKLPDZERvQDWlZ5oUGirkzWIYcRwxP8cwq2P5t8c6rZurFl/T0eU/c7Sk8CPY4SkiKdS/+LHksKvAqeA2yQtLLEMTbCev9EWCmXdkuoMreTzq8qcT37BBWlV3R1kFoLkHRjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYc/5t9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYc/5t9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5021C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786284033;
	bh=noyUHcGjM2c9ErLyGXm5TYSWnMpYVAfeP+KeElmIxY0=;
	h=To:Subject:From:Date:From;
	b=rYc/5t9bmaRQzBjSVl2OESUW38qjIkBXX8UuRTg8mFjwYiP1gnC8HVLDgpz4x+9Lg
	 O4wkRS4a9S8nSJYKrQ9+x0nNVn5ASz/zAWKno6Udd+U0crkoT3qioeYh+2DRBFeG1+
	 ZpRX2cGSePRSoz5D8gk6NiMaIis7a/WyOsGMwqztiuz1527q7njTFDo6pdLzffgNXb
	 gGvmV4mChjPDBeTilBt3gz/LK02JSb/AcjcMq8hf4XlM/vLecfV3KnnNkVhAjmJs82
	 t5j71pKnPfztgRKPIHc3z2dp0Lpgzu4bx+DeKXq/ndf29cPDE7guY9KhDWaEzDHCdl
	 wcYLaNDNWzDzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC93DC5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178628403369.9848.384606493822011677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1783bb3aea53ba4e835dec1acdce26a1d87004316b1f66d823884b34940250fa
Date: Sun, 09 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786284033
