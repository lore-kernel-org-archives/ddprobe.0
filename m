Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BF7F9DA
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751164796; cv=none; b=Q7ctxIICu7CIodvw/N8Gbyr56LW3e52Q1MBVeFCLhILxeTAMgulCqfLbWSJoWugwoJYaK1uFHsxD2Qn/VhbWXkIuNJcQQIn/MOiF+GKU9cJgLEbKbMQqSzHOq9qllDY3Gxy1188q0LkwVFN5gqUGi+hHmYgMAh02vwXMrHOfDJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751164796; c=relaxed/simple;
	bh=ZhOpt6+P1cPU0MG494E2UT/h8myyg4HPuNAnS6RKVUI=;
	h=To:Subject:From:Message-Id:Date; b=As2q9XGx6JxL3rTn8Yr3EOvedSjF6y5zCpg4qLteyP6BMtNvHi5zKIwgPchVPJjOrFfXb8dORzUxDzu0taVjYKc+G8qloc/uoMRF0KezRx0At/MxWKnHcixlayfz+QeLU2bWdGmPGLqvC7QUO6AB+JUI8RRUSAexl5pp1kZqep0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twFinT61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twFinT61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1968C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751164793;
	bh=ZhOpt6+P1cPU0MG494E2UT/h8myyg4HPuNAnS6RKVUI=;
	h=To:Subject:From:Date:From;
	b=twFinT61OPpKw3trHJ6zK39FA50wFg3W/Q4ImSdsVAPeQwEPOF37OKAjEsLhTs2AE
	 fvFqrz3ZpmqkaWt/VPYRmxjwi4FQcoFxqsustXeVuzpQmMIvw+f2ae+Ang0lI32M9z
	 5Ph65NNAExI0gDxptmwwbCQ3Mbz+lYAxKTLz/WAQevehJR6pdhlArTyu6KwA78P0yC
	 WKAZH2ryPjHBB1gAP/JOKTJMjoodPVS3khw1Dxo6780UqCz6oWK3lp2ziIPEITeOgh
	 taMjeiC2c/QFt+cLJZlaE6SZsgM7zhvr321PiuwMWB0Oi1wiMrUNN0xlnHa/09hPZY
	 BMuIiG8KI5TVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E95FC83000
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175116479357.7101.14133001987667962364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd649dba97732dc7e7f05a290a96bd7df67aa576b46aefcb78e19193201b382
Date: Sun, 29 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751164793
