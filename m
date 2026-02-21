Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F56636606E
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771705494; cv=none; b=F5ZteTWlCXEqM04+m2bqPbo0VGTYz/U8fxVK6Ocfq+Xll6jyHmAxq7SsT+U+Tst7EMOpFpQK4MYrFIEiSEtFT9c/yk0aQ4w0IyLLcbLa/J/Q4RS/t2vReSlzEhiqK7c47ZMxPHt4HSdf6UJYHKS+dxAivqkHQ9/rJ3Pf9R6+7iE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771705494; c=relaxed/simple;
	bh=S1Q6xegAztOvbFBfjcyAvSLa/UDDeFVOLyZxeAZHMN4=;
	h=To:Subject:From:Message-Id:Date; b=agKhc+5yAcCVw/GtqaM/lu++jUp2rljJc3IEwDizvNNuEiWruA/ACZR3f6TnJUhiY3DAYXxrXL4RS39oRnpKzrxcm3OfULBS863Z92e82OD0j9xbYvC0//r/xCtifH1kQcCiLdXmXtHNQxUhgQ5aetKrS/CYbEmhltC1LxWareY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDFVUGF7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDFVUGF7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F35C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771705493;
	bh=S1Q6xegAztOvbFBfjcyAvSLa/UDDeFVOLyZxeAZHMN4=;
	h=To:Subject:From:Date:From;
	b=nDFVUGF7R/NN8vWimeIqDYOlhpvUCQemSBuEjTAR402/Vun0rD+aJbW/IfxOWGNZX
	 V5vWhTWk8GBWXeO2cV4cMKrU5yveRYMJaB8hRMr9l1wQ1jeFvZhN3vMcZSATOqcbfV
	 xYT3urM9ZigENIFZ+W9vgMdfkd8CmNa0Ua2dRTdVlWQR8+qOMrZWOjOL67kP3reW8s
	 ziW2t7jB2j6ZgrdYw+AK8VsivXx8ihBqFppnB1aBh3fa048lbf5Y1/t6fBo0jIc7Kl
	 E1SVzC66vJkv8HXI5X0uP34cN1FQ9Qi0nrXJWASTLZkQhCiSbQP+YlKow34vXUcoco
	 BjciUmn7QSIuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967EDC61DE8
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177170549358.14097.659990546449023130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81f4a50bf3e394055265ea30a06cf5dd7c3d9f2c315133e5494a278698260359
Date: Sat, 21 Feb 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771705493
