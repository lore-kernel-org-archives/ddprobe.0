Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E162A72617
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 01:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765071774; cv=none; b=dObP04ePWeFeOsJNFPo5K3NLMW22zq42aWevRSFqf0HUHJv/zzFB1YfJ2gozOwKcTvSEa/Q4utvnalpoNFsGmjC2GvLYoRcP7xlgqEmGhJ/4cJZ/sR4q/LD3w1DG4qO9gd4bfrjvC44v0IGETr26RxeEvJHnoOwt1VtOWtvoZ9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765071774; c=relaxed/simple;
	bh=IzzQ9Dl1l8q6GWM40zNZjRVJQZ5aSLX16Il0E+fhc9M=;
	h=To:Subject:From:Message-Id:Date; b=aW0NFlut20duusHViK6NXMiMcjGfYfPXZz8+w74iAWbwavQDRFPmAgEtp6jE7wJ64j054vYTazTyNmSDVBXlre+Q6T/ilgsiiNX9WMckfo3Fl6Cg8aKQCi6DlHG0kmGj0ZVCA22hEr48FcjGV/ub9DG3oCXRaofeWBQQp94zDcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njaXRDQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njaXRDQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8985C4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 01:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765071773;
	bh=IzzQ9Dl1l8q6GWM40zNZjRVJQZ5aSLX16Il0E+fhc9M=;
	h=To:Subject:From:Date:From;
	b=njaXRDQ2X779xeJULTLfAomjDAcCrbZLYqPJzZpdATnXFFJniMqP+Sne5skVlA5rF
	 EdwwGZTTQPZJ+fFrCVJtuO328IDNgxcPo5rezTMQHbg1Yk+NsV0L83peqSQl879SzC
	 lhHn8ulgYG8bQx3deUAcG7kte0djg+zIXuS67tw2UoUO6lJIwK3upVaQFrOtDuRUZZ
	 4+hzPc8NRNV8pdEOYZxa0zAXGUtPsxfstvXE9PZs7VymenkOSFfruFNfnpokHh6vlW
	 I86Z8nTUj2paCdFUxVq4aLWGvD0GeUqaGSeUAGm2P9/II8nBikozmcoyzGjufRLNLM
	 JPqbtMgpz4bGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945E7D3B7E1
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 01:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176507177358.7995.8960789329243636893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bfd9f1ee1c0b9161e465fccaa5433d46aadbae281ddf3a39bb363016bc13ce4
Date: Sun, 07 Dec 2025 01:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765071773
