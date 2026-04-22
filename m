Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226B8372EC2
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776850654; cv=none; b=vGqaNoyt+v486wlp1d9NUXOEU6Pra9bxy2qaK/KddBZLAYMtzX2jYImOiui63Atf/I3jJlLSqmgykHm727ONIswwNLvS2NmW6Dl7V5rfMvqfiD4oV/l7gOJ4omMtKvoMzN66wfIhWyKqhn8KLC6vh2XYF3WQUyv5TtX5U7x2plM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776850654; c=relaxed/simple;
	bh=s5svsZ6cKbGTeIkQxLtaGcZGVzHd/HVu72ixnROfKQI=;
	h=To:Subject:From:Message-Id:Date; b=h/xUu9+qdtIgFLMt4EOwtj//z6nJeBElgKasAfQzU0VQrWkyusGIRoOMymkunfNVGVEyDnTPxowVCM5khxLrypoUxv6VKtkH9u5OyBpu+CqDaahuI4+tFWNrNdvhlT0jhHRq5+G1pVuDYlQ0AkWuJ3GSwP5uoZuajyPjYuh9ojo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAMVmPJC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAMVmPJC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA95C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776850653;
	bh=s5svsZ6cKbGTeIkQxLtaGcZGVzHd/HVu72ixnROfKQI=;
	h=To:Subject:From:Date:From;
	b=LAMVmPJCcbj529t2GX5+diq+LM81hwhbWzxyjNN3VtL2KSFyNFRIZVhbW2wKH+Ogw
	 XpUa2z3Eyecz1q9IlWBJI2ifwus5SrTMYSBJla7qQ2a4IUQPGcReJFnNpWk7ocpKPU
	 l/5DdXWO/518tdLyKd2YeLo5F4KHZZ9Hi9RHqdzQWUVHhjtodGYEA2g2+pwcs8nvOC
	 t89a0VbULhWLJODkWe90GMHSADavD+ZCJnzsyfILiavlPo+KEWNm9smutA5FJ7k1Sw
	 YIUGP7Rpp3pPNi7QreaRUNdHBcqO119+OR11zV6ySsjwM9x1T6VqWlLaKz8jQPPwPm
	 T895nOYpwttHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9508F9B5FD
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177685065368.2061.16365107820905846928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4988ead040d25c8af766de49f44daca00190441dc39f49d89e8be936d37ea26
Date: Wed, 22 Apr 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776850653
