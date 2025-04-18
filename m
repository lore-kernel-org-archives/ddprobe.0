Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37961253B4C
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745018994; cv=none; b=B84GlMonlif5Il08SnKVszRb7ai8ue8lGgtMYGun+q64vL7yNtw7u09f+0okuxqZAur00cmCdYkCHq32s3qK/d2XtmgfgGJxnul7xukHny40J+YCuf0rdOViiKRAH+7AqQigL9/3xhShUZQEwo3fsW8M+3IpS4zkIhbvm0bVDRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745018994; c=relaxed/simple;
	bh=4vSGDe3JqUd5XugzeMX7h3DIC3rYUZPUXeGI+dnAf4c=;
	h=To:Subject:From:Message-Id:Date; b=m2cFNaXskpE0wDFgrizaf11GfRbfRO7ZIVqiEmsBi/iNIPFzrc6f4b0Fb5MD/jS8EFV+X1ALfjgrpF5/xkAVi618GxVlI2NwInOTC7RV3S+He0xpo5wE8mcgVl6+3GGuYF3vA+IQI6EQdc/x/p50wLiujlhbq6O6lwrvvLqbNSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eP5W4yoj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eP5W4yoj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9363C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745018993;
	bh=4vSGDe3JqUd5XugzeMX7h3DIC3rYUZPUXeGI+dnAf4c=;
	h=To:Subject:From:Date:From;
	b=eP5W4yojsrGNIt6H9NHlQyBgo5T19ckFeN52TtPqN/rsiCjkSr5lNfy5uwPAgUqVE
	 qKwStz3OSxyXYwHjlTeH+zompyCBrH58po5Rbv1ddGE2kU/awa+J1XNw2x6vlzSydI
	 E4kvag9967ePqBXXYeV4wD+nVdfIGhXGyx005/VyD/goKT1w4J4QEI/TOTA3SIzFAt
	 EwQNgIv8WuLk83jdxZePfwxPudVJ6albNHelLpsG7XwbGCfQVR6jL3vg2FIcfvnpWc
	 wmJQRRF9fg7uJc5eoOhivo4uxRRD6tQ4v+L8koNDbAmKsvejMrDWTQKm59Y1EIkNhq
	 cGL5neMEeMuJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D67C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174501899359.18361.12180404932568124680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a5fc061ae02b83443095f52ed503fcc762416109853b69c30d9f90ee7bd52b0
Date: Fri, 18 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745018993
