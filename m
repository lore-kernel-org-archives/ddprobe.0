Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73FC33D556
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 09:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712999963; cv=none; b=vADFvumShzoiej9oC/tsB+e+FL1BU9Bk/iUamMy/lkKYSOxfAatspMl7KWFugwgLSZ+IoTXq8N+Md4P9VGKnSDTbtR0FsdiSUjUbZj5rLbQZxLLLn8//eMt2we5fYLlvyg9RJwfQWnLnBEcZ4oRl3aq3Rf/CgclM/5Xa6x7fT4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712999963; c=relaxed/simple;
	bh=hoRSdzNJcGO3ZD41XW/cEjk3FcBHSq+lUuEAffm0dwo=;
	h=To:Subject:From:Message-Id:Date; b=P7jnfa4FJaRZYLYldfjwMbHo+Ia7vI/h5wtDtFuLyEi7n/lYzEt919qV1HfaiZout86dpor1LTQxZZDr0I37wLYE1/EqSogdrXE75/F3rSmqj+zNY2lzadnSc5HMaviOuUcn2goT+3fqlbwFlKnSQnQufVLeWrKrLwYS8wuK5nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PedwaAkS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PedwaAkS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A46C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 09:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712999962;
	bh=hoRSdzNJcGO3ZD41XW/cEjk3FcBHSq+lUuEAffm0dwo=;
	h=To:Subject:From:Date:From;
	b=PedwaAkSso2iHvSVaXOQgpqmPOpYPl17a/t7y2rk7yyVxIrEn5ZyYucqBsJCEkGiC
	 R977crsUdeVPvoQ6OJS1UDBS1xW2uIayhdRZrldpIt7lqLxDgI5UvgPCmsgmiZMIuZ
	 gcptOH8ux5fwsamr/zG85iRlBZ5FVAgnnn1Z9CUhDw3nYJ01Svg86DaeWwAh+wwdJK
	 jbQrsZvKLZtZqB6q5FiFK7QzsCDtLPPzQWuS/q3NvyEl6KuOTRM4pVDcM0y4RVS5Go
	 EvgX5q1lhOG43jowgHxckp6fJkU42UUsoT3ImfdaGTm0SvW9bVHeu9b1SKS1EdSOJh
	 X9o++4z1Zv4Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A62C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 09:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171299996276.18729.6426928581831579613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49cc8b87e4980d2273d936414305604c0441f8c4dfa8e13b49009a8589f25c7d
Date: Sat, 13 Apr 2024 09:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712999962
