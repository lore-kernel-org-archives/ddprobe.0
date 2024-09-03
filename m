Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7F218DF78
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725384354; cv=none; b=N44cEJRcz6xeM/nH17Vdp4JVTLhuGlFdMvuSWLwyqkJ31U+nDl2KVaclB+f4MEM6HEEr9F94+jzgFNiSx6SltUc7nTXdnfHGgukNvcnBAcX4uAz5Lw3576U7cgYwj74LLMvLkMgcQrUU01qG1AYhHf5qEbqDzRiRL3FD+W1oTTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725384354; c=relaxed/simple;
	bh=uGbvcbGMSNvLdgpZj0n14/Z0IQxK7E5EJG3+iG0sv1U=;
	h=To:Subject:From:Message-Id:Date; b=ONen2PPqATCz8DLquR6D+XJpBzA1evMVUHyHVoyCESEL+Pwq7a8St0DcVKyMZHd8VHMEXI2SaVHu7Y1rUlWs+7484BIKoN/QjqWQFLHSbuHDN+So/6dKgLNe+b+SpmX03lhMQuXMI83XdJrtH0B1zPOZXBgswClXrQu7Kgk5HAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2MjH8Jh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2MjH8Jh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FF0C4CEC4
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725384353;
	bh=uGbvcbGMSNvLdgpZj0n14/Z0IQxK7E5EJG3+iG0sv1U=;
	h=To:Subject:From:Date:From;
	b=A2MjH8JhlsOJvtAPSVme6V0RrmL9zmrXOsg2+AxTeRVwqgNCWlLoYjHdKlsZY38w+
	 qlXfnU8GZBN+HdrVn+TY4BBzKn+5+t5WmVsFFTlF7slPK6Btd031hwqOgk6nh81tZN
	 m06GObpbGPHgT/yJrGt9Jz/LHBDzXP/7MFsbiIvKfcKQmt7K9Jhgd+SjeR7TE90Mtt
	 8K0I+8712X9xcvy7iwXSUIL4kZLm1ZgPr8fWCvgkHwO7NGHPmoW8G+LMtJjUVpC4s1
	 okDmd067ZY26tm3I47vbbZhCJyF6kmqbb1d16qSiRPT55EtSTVm9OWRg3iM8wX3hBl
	 W9M74fufihI0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93290CD37A9
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172538435359.18647.6319853893756315437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85bd96775ae30839807c85dbdb6887e17bac0a6fd176cdd24a453384f1150ba5
Date: Tue, 03 Sep 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725384353
