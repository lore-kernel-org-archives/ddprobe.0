Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F112D6E64
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789094434; cv=none; b=Wkv3bIfUT8SDnT/V3124otNtPu2fQi+OBw66KomYRjObIslFcM5W8IATBrkw5MhozEHBpp3pXrChZsTkFKUPTQpTXqAQEelCby8Wv33sZCwXAOtMgjbnhbKlQ2w0vTWAOOVtytNcnwBPfzdK5OqZMJD7csEH42UZe1EqaB4r5CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789094434; c=relaxed/simple;
	bh=HJ23CqWSL6YAzBfenCjmtV5PiyR126c2JJlc+lJUYxM=;
	h=To:Subject:From:Message-Id:Date; b=I80spsZVJoRw7t+BvS/qQHwqGRdjJj916ULXgfJrk6UhRhWIGmAWzjNov0qX5IJ4IJItZ/Qd5gX+/UQIDIBxlSasRV7MGhItT5wVp7ysTNSjZhNNQto+y/3UlmFfdOq+ZBBxwtcMi39v/QQWNlBjB2o8SXL5e/JxuitZi4jenQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pC7u00Ti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pC7u00Ti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4858C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789094433;
	bh=HJ23CqWSL6YAzBfenCjmtV5PiyR126c2JJlc+lJUYxM=;
	h=To:Subject:From:Date:From;
	b=pC7u00TiOit0HHaiPV63xjCW+ln4gQW5snwku1Zcknsnr+81SzZGlsUjl3CGggfRF
	 /EKsT3hVpQA5VSSF+XiFVFENV26oI+epKuXgnBcVlllV3XGgzQQkaYBuQaFgt0EJIb
	 KhOkesoKedq4aLx8bOp2uCOPR6Jw/SokMw8o4B0wADyW8xao6V9RfJTXRDg5mYoqup
	 XqPsAxIzj6ZCnx+rMjtwGBBKChjlxTHnkfC9M11+KJvH16WJZZPps1Dq59PTMIiQxO
	 +uRav06qcvfXXwMFfjAOOB0tUBnL42WS11jwfZ9AbGhSrfAt/2LAMbu+MQ0+PQ7/Vo
	 F/j5CxuMYm3+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD75DC88E40
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178909443368.24213.8492980408169091440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 018f983b3aed43082571f7e36dd7242de6a58d3f52d958986c4d955ecaeff1f9
Date: Fri, 11 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789094433
