Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110991A38F9
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770947094; cv=none; b=cqq6HKo3HcfmK7PT2WXAcFCCmMONGnnSo8SBLGMLYV9BIQS0GtknOYrF0mPR+Gu2cZqP7TEnrngzFodRz+joZVsxrK75Qn2C1Za5pbfaOBsw/6Exx5y9436W8HLsmITayeRxkyUGi8qZucyv0RZvJQJ9Fg0aDOwI9grSj01LdCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770947094; c=relaxed/simple;
	bh=pMYe8D+gTjK9upYzAHguKwehEx2KqjOdM6DGOheTUrc=;
	h=To:Subject:From:Message-Id:Date; b=XXYUVKiqULx3kgLMeqR8P9iv7AtTaC278omWm9i0TbQiU6tis2viYadsoSGNF8tf7A7wP7vWAZn+k1Y3K8sX/AplyZJYcIskxUwu192ZG/k6iSSrmP/iRuw+gJm63/qJqeL+DzRQUoN0BzJV807l/u9RjL4IkwjtsK0XcLJoFx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RY6YDXGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RY6YDXGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74CDC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770947093;
	bh=pMYe8D+gTjK9upYzAHguKwehEx2KqjOdM6DGOheTUrc=;
	h=To:Subject:From:Date:From;
	b=RY6YDXGaMBuU30N5t7hDlkvP5Bap9NxBqR6MYcqzWNVnSOaV09bM21R5q2lhEXVab
	 0LPABhqFeu/HpMtcTCU9pJz2JPJsR9W75qfh7e+l+2QlTtLNz+BKjmY8MtJ5kZqJOc
	 cNnf4YdTZxkyHm6pfXShK+EZJNQu1FRJVRdhU8nMvwUmfKzaJa+3+yJ6532tZHxSrY
	 79oHK2RAURnd427WjBvm5Ol09XkGDLwI0X7ghFDd9ahl+/WRt6fZlizEGWUTyZxN+I
	 y5cThS0h4W/wfCrIa0On2hU8YqrTHhklij0a83DsAngAW4KsWCWyRKntE2octL2/Kv
	 9EBz3eNEp34Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FD9EEA853
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177094709359.28782.14954177940691974631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad5f63fedbfc833bdc8b820c4a851fde5c164d172ae2e554705ac6c6dcacb060
Date: Fri, 13 Feb 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770947093
