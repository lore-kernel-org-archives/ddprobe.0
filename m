Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7280336A340
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785384634; cv=none; b=eXqXkWgtbRMFXGoeWZcj2s/+YNE6DrlKtx6bCoEY4IX5Q8Dj+Tq5QNRxZ1kfoqIvfl7BzkK0P8SHtTlQT5g3w4nXcuyRgHqO8YcIa74tVAdzT/RMPUMgGzKKcTDoiwuGIHZ61Sx0he3dv0lKuz3IKlp/GtdwxQyrBjoqQOUTqy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785384634; c=relaxed/simple;
	bh=NyGxVrPdA00N8s1LjIb2b/vFBX8z2IhkQuzrSY4bebk=;
	h=To:Subject:From:Message-Id:Date; b=QGYxh13GBxb7HzuyPrHtKWgK4HbmPwQbsdsqTj/XPAbWvajtqxUaSrueW8p5olCxK+9lrsS6nAlBnwvST/zeg8tbG0Nl7cO0a1fcNTKHCTKJFhry4jDehTzObGrzEW4dQCppuGUY28MEz85fJE/n7jUzru7PRJOCblMEFrsN+vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psHfeHT5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psHfeHT5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4905C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785384633;
	bh=NyGxVrPdA00N8s1LjIb2b/vFBX8z2IhkQuzrSY4bebk=;
	h=To:Subject:From:Date:From;
	b=psHfeHT55KyP1VrCVMvtiu1RX1ZY0JCJOjuIu/6NPOEeQeceZZQ/XocNQM48hNgeQ
	 xMpQKEXmYayfbQ7KO/NQYdcfTZx3LsGSDpLZtpYmrHZaYhgQEP+KGmt5WCWeVRDAqj
	 nez9MWLDCc/7iPOnXNqca0mBJebwp2PFbgIU38QkbzzPMO5zfHCnpBRuN3RKTYeiVb
	 JMg1nSPrQ7HBmjXmjqbOOsmcOFAGOCUs1uEfTHTXZpRMtz6r7CyoDAJRtL+aA6xXQi
	 Ta7HEifaggv+gyvmOufqbUFVogjhXfRMKmM9iL5LpuUg0FTeYeEyXxuJE/Zi+jgu9G
	 6LVEwvn7pDcYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD16BC54FD2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178538463373.3230.3905140639067869637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62436b7c042d82ead242408b5258b65de11b63fafb6823e4abf0e7454bd1bf54
Date: Thu, 30 Jul 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785384633
