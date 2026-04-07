Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22375345CBF
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 17:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775583334; cv=none; b=O84yNIWK+P4MV6rfhDAYxJT6xVfRybtO6MuXhNvisFz8UG+QNSRObvIidud1O65UT4Phmy7aVUovXEHrvK8aW9lRha+H13mUNRmeLV5w4vhwsltUqMOyypFbheTPLWP8G9KcKEq3aSksPzIHF63hIJpM1+W5m1c+uNC9UxhCzZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775583334; c=relaxed/simple;
	bh=welZQ1lHhIGoFbQveIdBQnAH/f67fwe1du4vyWBMnYo=;
	h=To:Subject:From:Message-Id:Date; b=IBlWMlI1YqSVWvSjBYbhtUIsFZKHc6u1WbvhlgVIaoVHHGDaHnnjvXPypkfhIkU6IFmL0HpBdzKeNBOVCoXUfevBIji3qwPjUulvCG8gFOlTMqfEXmHu/fMQADbB3ogDad6jLqss2iyP9sMpzwCqKMHRg0tW4nJKgdt3pjy7EjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A44shuKe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A44shuKe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E4CC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 17:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775583333;
	bh=welZQ1lHhIGoFbQveIdBQnAH/f67fwe1du4vyWBMnYo=;
	h=To:Subject:From:Date:From;
	b=A44shuKeXSLtiTTkbF6bGcE9tFrgj/xQDMqS0NU8GrYs3ylP+UTV+YCsfphqXl2kK
	 wUnE3DZMILIc+LcT5o3pcUaqjAjmSsVE7P3pBdTclDLYbzHhOM0aNXRqYCMb+tXBGP
	 nqlRnXrxxDR1PvMHWf7X+OWLgGZCWvyvwELGUZ1bAeKC9u3bZjcESQSxRWeuts8xxO
	 FroqWxf42qC+Uv553O6VyTPfHpQCxXtSmSaRwWwoxRZ62gpjVE5+ntW6ML1B+KzJ+Y
	 mjYqO1kl1Rn4h0rzeI2/qNmHm+V0i8aR3umiDNu2HdjJ3ty6YV5VJVUkFNMPSD9HdG
	 hwt4iUH500Vpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB072FF512C
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 17:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177558333369.30461.2614817141013455284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c91a6e701461e6c5517359287dc88b952a2aa36fa084f0a75a7299aa8a999332
Date: Tue, 07 Apr 2026 17:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775583333
