Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3E512CDAE
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753193994; cv=none; b=Nnih0ZUpzBrEZZ96PQQ58ra+rMMrdnrmV/cHf9PkcnBqJS1x89nWQ87kwzZc8ih99qh6/LBWGl+T0jLbP0WnteLcVqUqDGNN+xqgl/9dwr+F45KJCoDjBx6m4K4Sk0MvK9SAUNAUtlOdwGVlhq4pbwavYZL74OQERbtrlF84Pj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753193994; c=relaxed/simple;
	bh=zydSBcl3dnOMQeAQ9Sqfgh99nc/1lKf/cwpoCcR6Hwg=;
	h=To:Subject:From:Message-Id:Date; b=bXIc0c6yMkDom6Gzs6rUTUdI2A3g8VvkWxd+T4gDNX7slC0hEy+/8i/xnEIVLW2hCwqYzDMb6RVnymGD/r2DLVcL9MD4GzzrTeNuhypESrmsyOSowtDuhOiB3EF9mO+RCbDUTR/WrCC39qFtqepYo6F05+CAY0ZY6YijDYcJar4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qu2n6HLq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qu2n6HLq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A582DC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753193993;
	bh=zydSBcl3dnOMQeAQ9Sqfgh99nc/1lKf/cwpoCcR6Hwg=;
	h=To:Subject:From:Date:From;
	b=qu2n6HLqYGnCyb9UrnHcqBOWN6VveblAPmlb0e6V8dXxfFjCxtpNOvvJv6G7QGIgY
	 gf20Z2LW2jSbX2HW+5v87UTOzaF7+kL3G2Eyu2mhrhNVx+qpmxDzUllYyaMoqflf5m
	 TutM3Tebg3MYcrvptSfeCFpxW0DNIolV9D70MXR6Sdjs6XDDRlaj4Ovx5M++a7gQJE
	 vRpftfln+ohkKUZo/CQTc2R2ZOORBGnaPHXBFBF/fCyEHIBJ/7UvyLHoObAs2dG6p/
	 Jso+5F/nY9nH2b2EX5cHM3jcSjO7bsFR7kCxq1dFkbedjEGjQ6I9v9JmU8J3TBbJCa
	 pmXxsbV8cOPQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9544EC83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175319399358.27171.17015125420585082376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 564b3cd0fa5416996835830ff1011422cbec8bc2317f97e009d429f70f3cde01
Date: Tue, 22 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753193993
