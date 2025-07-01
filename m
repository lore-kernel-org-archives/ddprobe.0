Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8FC2701D0
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751366995; cv=none; b=VvnXjozP7ChD0rymq9gM3SyGS250WJZ25Ty72itGbR2LFs0oQTOSo34SJkq9AtqNrXpIJSvClmb7EX8O9ueNvJHn2xwENERdwG7W5sw2q29jUPb7QmFg0DJZGL9b3QBACVoTGi36Y7OvOFT+aw1hZB8kNeGqecFy2yIwJ5hVML4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751366995; c=relaxed/simple;
	bh=rpCY0cwrBCuk170pqVIE2NvqE/huljjVauERQdfFYKQ=;
	h=To:Subject:From:Message-Id:Date; b=I660kqQkSAUEzGeGPr157+edBI0cMLZDTIPp9xA38vPlniUHhBKC+oUX5RcXFF4gK7RZ01Qc7xwQgvZtJdQHqu+wdsQOiNN4Yt5KAF0K0/TgiHi8GzeGul4ft9cCVbC1A3k3UIDc/EYd6vXSdbTsG9qUDqsIxvDDOFkMpim8tSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKsMXtqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKsMXtqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0BDC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751366993;
	bh=rpCY0cwrBCuk170pqVIE2NvqE/huljjVauERQdfFYKQ=;
	h=To:Subject:From:Date:From;
	b=KKsMXtqjikVd5ULQ1tNO4lCSUO4OJ7Q+NxG07gu3dciMadGhNTx0jRXrW6BWpv9Zf
	 aGl8gCgUt57ctY7u5RUNy6hCWuFmcKnO+BlXU6GxEQTPycUKzeeGStrhwNcIaa2jnH
	 qd9UtCwPXlSEM8M03XFw+ggbrngeLo2nvmTub0irlQOI3OOBDbgKk/FEpckbbAMJti
	 UOYEPSYE4fhbU8FMYhpisv+pPQslzGIc8Kb72XmfnFhdGFgh+PbxHIgjg7Rhf1MPeX
	 WEno4hazvOFpgXcwrh8fA4Z1gt1V3bPSLvS463PYHjPTIh/mSqBEXcoqqkC+ndCDaI
	 a3Aia5NUJ5W8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCE6C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175136699358.5485.708392403106924423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7bac8d81e211b31b41127df00e789228f2ebd87f28076a616b04191b6c2a16c
Date: Tue, 01 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751366993
