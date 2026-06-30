Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4128640E8D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 12:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782823714; cv=none; b=nFNtmJshhwdQT28Bneso2tsyBofpPg3HX+t0XBnBZzGTMU20f+69Mpmr1nEogoj/uMQsz6RN92RJ8Up3x2mZxfHnu2Ft8DlPGUbmKcceDNFOQIuP5+aTNPmyJ77A7zmIgLRt9YWvUxcCZ93WnOb+7wlfF56Q0UsMLQ/06Ybydjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782823714; c=relaxed/simple;
	bh=bsCwWYbMK95yaLKBpj6k5ZWqLJt3NYopPH/YhYaRnVs=;
	h=To:Subject:From:Message-Id:Date; b=MKTmCNj79Mvf++34EnPSLvuxZBKll1n6k8UJzzwxPq+dLOa0LzE1+pT+M5qqbrce9YJlV7sCr6tfj8u6lT5m0T0Y07CPfLPwjs/RZ5oDlHHfRGk85UfKxGlbC8U0SxtprHLtIc+Eox+sHip2YB1IBhLEa0XnorkbSXGEgL4IPOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNyzCg8J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNyzCg8J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2131C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782823713;
	bh=bsCwWYbMK95yaLKBpj6k5ZWqLJt3NYopPH/YhYaRnVs=;
	h=To:Subject:From:Date:From;
	b=BNyzCg8J5MdjR611JEFZbyiJAH3LEKhibZAWt/oRp5eJ0gm76rejvf5034CoD8Yof
	 JdEHaGfNz6DJIfeWUyKSqdRXHykK7JuD6F6oYL7+NL491q3mQKpJzKZa3gAJ4/MStK
	 iYQR1q+1tOooJoyMVJEEeBTMkDCBqyY8ebtkpbgBH6+VXlNRv3FyE3uSG+KwsJe3E7
	 P6SITxyxKCUGv7vKCVB9cJA/lOEjvKbMjsp7zrfOzNnlfHm0dgspPtO1zy7TKqCWEY
	 7lrUgzltdqQFaNZTbgnVFpf/qwa5L0NH8LlTWIrDq+XfmkmpQe4SL25htRbsjKzAr0
	 vZ8KBHlSSsBkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8716C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178282371368.26376.6069907475423123732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e6869b1a250954a86cd3d0a9f2c633d37bd585a43945a51742cba52bfa5431b
Date: Tue, 30 Jun 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782823713
