Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2125E79CF
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 20:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764447774; cv=none; b=GGTIiehFSxMP8BI4igRIe/GaSLwzaAQunGa/nZKHPUCrsNMx7Req3NGwPMEUj2WPmT4+uf+vvv3it76pqYqjQFXNVj0b+2nMQ+KC4cuOEeZNGzZ0FS+lOa0Q8NFhFSq/ShoTZbddkMswT1ydVt0zZYRTb9cj1kGduizRDxhzoWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764447774; c=relaxed/simple;
	bh=AIRKekWocVLWj5VbIIymRYDqSbynZ4qxnuAcqhAzkhM=;
	h=To:Subject:From:Message-Id:Date; b=oL1rPAvceKEQv10WK3J9Zam5cXacaL0tDbDq6Vuh7Oy8C5VLg//SMluaBF4MQ0VAKLgkeucQCZY5XQVd0Ih4Vv+1xeKWHVxldWdjPEZ1P5i30nHMGxj1YOmBl+FhItz0TtwS0O5XFp+tBcpfw1ikABhuESCpdTbfEy8SF1ypvWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHV1GRmm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHV1GRmm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3300C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 20:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764447773;
	bh=AIRKekWocVLWj5VbIIymRYDqSbynZ4qxnuAcqhAzkhM=;
	h=To:Subject:From:Date:From;
	b=RHV1GRmm/KT4zFmY4K78srEp4J4eqryjXqgPK6TfLYK1X/+EXkyVaLahwsY8iYO7E
	 nBAswAK3l2l4ohwET0kLK+m4Pc0XojXJe1eCg/1V5CST3ECI8Ola+G2m+u6OiOHvkJ
	 mB5nPuooTzm7q6LY+oBR87naNtdmaHvC/+OznoTSwHpRml9wPjqp+vLVK5sGe6cLX5
	 P7sPK8oESh4foPtFcnaROqqYYqlZwFJK04DhIX7uUR2evcU9RJIoBCpmHMGekXqO42
	 CWEsRYIE564VfMU++ZS+U4QwWsjopg3ki41THlI/w7Gpfpj+HCqdLpoJkPHSrZapiY
	 BR5f0mbGBhHAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906B0CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 20:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176444777358.27621.13688837693924356863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8c9dacf58ecbeb649774b696fbd37f5aa1f2e9281fa9656c8458184b1e38ac3
Date: Sat, 29 Nov 2025 20:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764447773
