Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2467C25A62B
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749551394; cv=none; b=UMYYOWXBn/Bf2eYP3q/Glw37qBfVp9LrPW5f/6HNdwV6JV8Ys2FrylDM9bVcrbYRmBob97atsdMGQsQVETmVkXWbrtM/dEO1/FjG5hU6jg4GGAE/SngAREPO2WMFpAv4FGp6IewIUY4RxTK8xlJQZLLd56MHohsvy2FSCPQ4Je8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749551394; c=relaxed/simple;
	bh=gtXcagBBpfbQTd5/8rE9bhwH18UHRXnScaDBmnb49+o=;
	h=To:Subject:From:Message-Id:Date; b=VyBjQHufn2eGh3k4oh5aqSngczxF5Ifc0WEFCXD53sk+81mUJngkeLSwOv/c+8rFlPLHzUTrWQLED6qfOHDi4hGjgz4Nj7FZ3xOAGQOG+j+S7r1GtffGb2ksqXoNAvV/JSRlB/+abWgnGzgodHJBvEsP9U0oXku6TtNhte18gnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIwk9QpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIwk9QpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C9CC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749551393;
	bh=gtXcagBBpfbQTd5/8rE9bhwH18UHRXnScaDBmnb49+o=;
	h=To:Subject:From:Date:From;
	b=rIwk9QpYLZTyyZO4zvsoEAbAw2m/hcWVaIIY6vfZsm+su3oCB9UMPqkp+OUk2T5cp
	 RMWbx04iLhMh4Hj60tKLt0CxZTmPfVYnF9plDWN1wJzLrZzVyqUgdgiSJF7CovD7z2
	 xKkna26u7CIQLzD/CUQUYs1USZHvR8ZUAhw379aGA7f7xNaV/XxJT0vhPLBqM8mk1Y
	 o6cbc21CX7vj62x0D6jrr+4Fo6Q6UsEH4MkjB/4Jn7ysCN0QLxCgcPjxadbPnZ4Rbu
	 e+NJCeBKMC1i7jOFq5n4jPLK8byOh1JCVVHttSKz2EtZtYV+C1QQPoMqgqoLOQLsjf
	 ooPSCUHGlydKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DC5C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174955139359.11820.15880568936522556611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58527f29069fe16bdaa860cc4a3cf6a3f5d89ae354b6088b694c9ad81694f2d8
Date: Tue, 10 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749551393
