Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DAB1BBBFC
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 05:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782020794; cv=none; b=OWwGpYlVAtZUiPS3uLJcRs9rRHtl+k+us/KZgbYIRBJ+5rLuBWVKZiKGxTNev7Zj9wzASDvtwJHHSL2Tr6VHtLRn/UOBeC2SvK9hMTIOtON9VUwc+D4rFxlPKsi9Ki4VKdm8V39uH87CGNIxBkUSYc3gNrMRJCDaj4JR62nBarE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782020794; c=relaxed/simple;
	bh=evbTHK9u0ckFS1RF2BZloG8OLDizSpa/nOiqqDvp/qE=;
	h=To:Subject:From:Message-Id:Date; b=ZnbrfH+4Pye4dPpX64pQHeEik6kJCDm9XsT5D2rjLSE3RK2NqXc46XMyr+oYsbOYQ4sfTMkk7qg9Z3RyFr6eaG82VAAMfqiVB6+Ma8riZtlk4Oj0gcqEt6pCV86IdTsqxzJH+Klsf2V4tCS9taBjtku8ZjOcH3Wy7cw3WFqhetw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZo2f/FW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZo2f/FW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8206C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 05:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782020793;
	bh=evbTHK9u0ckFS1RF2BZloG8OLDizSpa/nOiqqDvp/qE=;
	h=To:Subject:From:Date:From;
	b=AZo2f/FWSKK6c5Gnl5EN0kTusq7nho+I2Eg3QO4iT8hi/At9+KfyPXiqCYcFvY8gO
	 wuiDcf1OgFkFd1COZzG5usTWkuCRJ46/gkHGIKZpghPoUauopbKCbqCuOAXVMNiRUp
	 73v7CHLEosBCmQVWapn4gx0oaHJ7KWbIxC0IKut2D//MI91vJzDFrR5qFYwBiBo2yb
	 fqRBZ6efImQIFnfAK+LnXeFrSmry26QZf0RaNKXsiQMSQFRyCV01Qfq/n8yjYucpXg
	 ucZI213tto5T6/wT3q/bmh+FxvfD6E4TbtWcPiAdKmBE0AgauujOlBNvfZir57vwC2
	 MOKE3r4/emRkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C7FCDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 05:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178202079368.12947.11518160510465534617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90b7872a886c36a58945a897f937f12bbb15bfccc0d679587e52609f8f6fccfa
Date: Sun, 21 Jun 2026 05:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782020793
