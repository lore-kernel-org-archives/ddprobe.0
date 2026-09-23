Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D9141A76F
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790146234; cv=none; b=V8CyLLbCWvGK+P/B38Vt6FL74nVyLcDv3bnGGt+wbBmCSGOxL6rbwtNg0BmjcckTfO8TTERPiw2kJsmJH9DkUNmlBtGgZaxgkmKAUU+emeOdkmzWKMN8iBS/UecWGK1gwt/Mz2Nd0KoUXMrObCXURjdsj0T3kFozxpuSkJ6nQws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790146234; c=relaxed/simple;
	bh=xqIq7c5CfqCW020x58J6Sc1JyyQpOsSqU5EPkcymXok=;
	h=To:Subject:From:Message-Id:Date; b=rx2/P0VUhaToB1epqpXwquQsFYiJWFYIgDt7sos2sFZbb7A6A1/2HASCdHEUnLJvXXY1JkSoOF7SQaP7r6tKjTJrS8Z/XVofw+uWKN8tSpEAb9HN2bk+SkZzeJn0gdEyYZ/vpixJ+2mOLY0GBiJm/ZIsaE4L1qGZ2USO+Uo9aKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkhwQ2UA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkhwQ2UA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E54FCC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790146233;
	bh=xqIq7c5CfqCW020x58J6Sc1JyyQpOsSqU5EPkcymXok=;
	h=To:Subject:From:Date:From;
	b=VkhwQ2UAwRgKMmL6jB/mVA1rbv25Beh0j1C8nHErhIiQtuzwaXopcME1fRZfdQrVw
	 LQv4239/jnloFgzT5ZJOg+FicLa7lqR9VKj15+WJesONNYwJGEHAA8vAlW/OrQXzIg
	 OyHkFC0lk1otAox2iBvqNmFkZr1T4qsOf20cIp9PFLLc0xJ/9rqXRsXvBG2lT9knBv
	 EkzBjLarhKOz9kB9RxVEkl0RDyuX7kg/0sFZyhS7l9Q4V9+72g4UzXuNdkDSFAMziJ
	 4i95rLDyifmFNEU9uuaYi0VFMAb5P9rBrinXqVIoVkMmAUxMbX3XsWrjHblgh+A2xt
	 a4Va+0JLHApwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C04DAC98308
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179014623376.2384.14095909685878469541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aed5b9db5a88dfef8d6003ddaf9b9570cbee3df55053ea0be6ca7d84573457b
Date: Wed, 23 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790146233
