Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6E5A25DAE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753252193; cv=none; b=MPiFyrRXPwuO1MeiLviFHmNLUbX+GQpXPVY3fvqOQ+qXy3e9aCIV5b1G0BHWS/nCpvDR1/UamsKM7XWgQUxdOknKKVyNqXAdcHQ3phMlTdwXu8fLQ/XUuu9RFrUP+Yu8DRWwdH4rrhH2syZ/pN5M1XKwExCLy4Aeb0SG6L6r8Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753252193; c=relaxed/simple;
	bh=gwEfhRPoSo5O3MhQPjuWuYkNRzxau3isU9yLlpublRY=;
	h=To:Subject:From:Message-Id:Date; b=CtQ8aoAjmlrxL/U1OtbLYj4shXE4aLzhtntvV/8HRdffPXml7we8oR4hGxUFbKjKCC2MxX8J0xVrL2P0l1QqQOhbI7bbxoCTv+JyW7FbgDK+XRkfdwygLpxQuu8L5yddPf8TC3QtKauVkg6gnqpzR4l3PYn7ARXiuDEiwW9/nfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6ZbJiFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6ZbJiFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDB1C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753252193;
	bh=gwEfhRPoSo5O3MhQPjuWuYkNRzxau3isU9yLlpublRY=;
	h=To:Subject:From:Date:From;
	b=d6ZbJiFAOfpiRb6xeL9AkmwZ4nU6DvquFOQL59lqiRJEiIjpSbP28cbSA7pW+Z6J4
	 /fE4Snz+bV0O327kosY0uhMzgGIS2xp+NGhA5JPdpRXFC3WnVHnvCAiZZXY6DvDOwg
	 ScPGTbtYpvDdL504B3mo+OlXIDJ3CjGbtTOjnEZC434bNnPAJyKeOSgeQnwNAbRFuA
	 F9/sTn80owxQNnWU72xcNCZ3xPxQYpBoBb1m+dOuf4vFzjvIkwaeDxY10CP80WfXE1
	 8DASUY9sHUvrs7HJ8/nrNLI4NoW6qXe72y/2RVotp7HGJc1gWEAWW7mD1BewTJ9icu
	 4apPzR27ue5zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8B1C83F25
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175325219358.1275.14220962893683295194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e346869a807161c433826880aa77685c88f23daad11908130612d77daa6869e
Date: Wed, 23 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753252193
