Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B1233B3BEF
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 19:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789499435; cv=none; b=rMqjROESPD52tcfez9aYklv3VZAmYxHakxbpviPX9ZOuS/0P72OsCwezzMrfndrEFGWbtnI6ver3FqKoVLsYl66MR6zQ+gO0F0VD6xZaLNV+XJei249hkvbEmggQL9L4hOP/Xw3rXN0Eb3nvGyzkRBmAU2rvHHLMMVvWH4jH6io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789499435; c=relaxed/simple;
	bh=5B8lruS6Zpxw6RSxrhs1gCZXhCICXJOUMiqJfbb4wG8=;
	h=To:Subject:From:Message-Id:Date; b=QGVp766lhqrr47x4uSKAMXz31jvqPY5NamAYLE5iMVb+6QlcpOtT642HR6xjOBADOlG6p1J/xn+baEsQH30gt6Ijt3Js9HJmli696ahcfbloQf4yOsHWDUd6FpfRR03n/Pd3kPcXcx/Xxnbs2iSgD6Y4S0YnKh4p8l/NB9hdIQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adpsC6us; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adpsC6us"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDC5C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789499433;
	bh=5B8lruS6Zpxw6RSxrhs1gCZXhCICXJOUMiqJfbb4wG8=;
	h=To:Subject:From:Date:From;
	b=adpsC6usxpOmJ0UWvPgQhozSOATiSeFPqvTueexn04K9Z7iXDqVkpe6uxnb5+rDKS
	 zcPkV8nuNkJhckJTN3YkFhTDMVSS0u78n4aHxYqtkXkkyhHT8SqTzlntbonzai5ulX
	 b0HFxIgX7+pBCI+MyZ64tDK3iIHWqC48OMzUBFhzk9xyU+Kekbwou6TFDSDwtGs6I8
	 jKOoVOmSeD4dBjcHH7g1ndsiywURsugncXXL+Q5YE5v8TzRQewh/MelFVkrYAw6IKK
	 uq3POlGWnZCh72IP6pzR13JYAYNmrbGQUNkdKt4wKhXruEVd3YNNO7nnq4Sb5+lp7J
	 caZIoxQxaOnWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A927DC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178949943368.2513.10001662325570938884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 736cf2bc6fd9345fd848dc3b193bcb41b95548eef188e7871f8d23c8328b1082
Date: Tue, 15 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789499433
