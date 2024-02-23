Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F43B64C
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708658297; cv=none; b=AsbYxGl/A46960nL8qQRYklvDUpCpNbiljVuavv7lfWBTvEToINQO0lIgKUFZ8C5I5uhXSTuFQgwXt7pcUrHnCao4gKYMGbRJb31nr/t3Ms1+jcot7pL2WSN3B9iFai90+t1FUorvHf8zp3zM/7fIUwOCv+Y++EJXIkcMXAgivg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708658297; c=relaxed/simple;
	bh=kuvTCiGRSRD1tbs1s75SyBdeECjEjSbg1nAlr44bxSY=;
	h=To:Subject:From:Message-Id:Date; b=rFTVq0w/v/riNJeGpLZKKN4xpp38VVHjyvPwggelGJtbkDrdbEH6M8vyQT7O/Ay/BjeD5tL6GOCDaJ/Q/nIFOhfcVVrGSGweQ2lvHjERuKpqrEY1ixlJqEP1KI2wYLdM9OLh1hjHqHwiWXeZ9rVPBzjDbYIHHrksQY7JTIRnXWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4FApxOd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4FApxOd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FE86C433F1
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708658296;
	bh=kuvTCiGRSRD1tbs1s75SyBdeECjEjSbg1nAlr44bxSY=;
	h=To:Subject:From:Date:From;
	b=k4FApxOdNvXTwIEt4zUDIkRhaLU8TKLh0Dy9KHAFhUPRt9rpGbLnd/eFW0SSOLF+d
	 qvQOmQORwAFsyWTFbM0wAnGPpXjOmNGZdfczYn5Z8oEWW/4cr4o7DC/YjpiXW0vQz/
	 BWW9RpWgOI2N0R9ohkLRRp3h/Coq66gHZpd/sb9KKZI/nSzLaz7ch+Wm9u8wsDJ+9b
	 GV7WtWwytP6+bacJmqD7g+GnAf8xHFStVkOSjWbYw11hCNixCPPPEX388bV2n7OSpt
	 gQqN3+IuPM5ANdXPZHUo3eb4kW8yHNlazdiPKJVmNXT42A6UodV9vCMpTIk+//pT0t
	 k4mbiQvxIOtdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63844C48BC4
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170865829639.26688.15253711666313424239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9550f3ffc405195889067a22c5e64b11ed1879ff9d87827128632ad1d980179d
Date: Fri, 23 Feb 2024 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708658296
