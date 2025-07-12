Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CA51465A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752293994; cv=none; b=naviyObXdHgcTw90I961cIvKYFULYV1Iegr7JLGfCziOSK6AuvXCCqVDa92l+0WiZPYE8Hc2kdxvpAXq3YgmAm1K+YFyCW7k2NeVCp8I0s1pUJkGwWypt/ec2F0UD2wJ1MJEDlnnzTZIRofrJsOUD6qnPs38DvGaKR7kv3R6NIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752293994; c=relaxed/simple;
	bh=yTFm2tj+05RKtu+8IG/z/lXrcKK6UlISB2cCbIREC44=;
	h=To:Subject:From:Message-Id:Date; b=GvSwGdE5mANuqkBVfQ9azO9oUPKJDgCGFs6G8QstGneB3bT+o8T4+Qc7nqR52CZ4z0vPVP8G/ZUpCf8rtnyg6z4c/oYGycqHRdGBDRjF6OfFSnoq816wcpg7V6ziz500zdc2HHSfq+nALwVQ9hAx4p5ok9mjTS7AhGmAfh4o/Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gs8ivdTk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gs8ivdTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEECC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752293993;
	bh=yTFm2tj+05RKtu+8IG/z/lXrcKK6UlISB2cCbIREC44=;
	h=To:Subject:From:Date:From;
	b=gs8ivdTkJ+1f9SWNzNDNf7IwxAGPjvJ01RR7HWqsodzb+PlAb7qPRvtjEnODNinui
	 xL+RzHl51Uaisbx/dnpxoc6oGVAaIpaJPeJSsmF42NrfRrc/q8nCn/OQB0fCxWLgP4
	 sDN/+Uti5xjzuQxh1gr5bXM6nGD20V1CRyn+et3JJ3Zs0OR/QFS6EOgrLQsGbZPHih
	 szmsY3RH801IADVGoima8iEQFFsoNV8N5EMHPe4aW1Fu83kJHp5q2uAi3LbgMdQBR6
	 Kb7mmOxHpFtF7FIenJCVjCPvbFstdZAJsV1DkmyhciTn5ipNYEozSj7v3DvecyqCl8
	 estLXj12+8z4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A149C83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175229399359.12543.2156148765322074994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2647cf47dc99e187736f9f60964f8737ad2816700a29bee7bcd3039e0f0a75a
Date: Sat, 12 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752293993
