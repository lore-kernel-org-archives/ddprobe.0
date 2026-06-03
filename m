Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282B3477E46
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 12:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780490674; cv=none; b=jLS5r+xVStKfJ+h9gEvOHg+4SjvZO2w/R3t01qDNNbuqBmPvOeYexHh2TXXBsyxMH6WmHq1yR3kU8hdCsgAf+z0Fhyq65wM7z8/pwkQrIRi+bnHdLH3RnM7lYqniYraZJLY81+itTPCKBP2NQIMySmz5Cgfgexeh5J5B0RCxsLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780490674; c=relaxed/simple;
	bh=ElRo3abTOYgMfoidBxnG0mzIfB9XXJO2Uw43+WKDb9U=;
	h=To:Subject:From:Message-Id:Date; b=OLl3UQT56JR799fgxbrvCVj5xGvYXeBdMc0dsMV9jocXcLU+9gO6OqOp56sN0pkOD0k3rXmdGB1KhS9+kJDpWxdi32F3I8utmS6hGrIfxdRHJKXUu1SVJqoDxJW2MFIQXyb6V+uIUbUV2WK05pF8K3vJW5fBkQdFtouOH9833h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzxLdPas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzxLdPas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFEE8C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 12:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780490673;
	bh=ElRo3abTOYgMfoidBxnG0mzIfB9XXJO2Uw43+WKDb9U=;
	h=To:Subject:From:Date:From;
	b=bzxLdPasL//ZJFo6oPGj+KpidLICtEH+NjZhrlgtwfu3m+JwIQmqoAWNa0BAJwNV1
	 6TtQKVqVkM+VqR5TsTQwDKStn1I/bHJRwWTK28WiPDUNsU1m5htmfdGzAxfZkLYfvQ
	 FtjlAp7g39F59Wsqy74V17Zxn0qybWyDMgZFXcjdh9PMy0gvbYGiwByNwRVWxa9hZv
	 r66ej1d5+91YE/bzueng+FgCCF2HL97kYYrfeUgsdYD9BOXdUJtvPPYJYtf5JfqLtA
	 PUroP0gUL12+LvegLUUgwCd8y/HqOC8gstuoJLcRRcUi3fUTZqLruLx4xhdDMNKK6e
	 KEyENya+BSZig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B0BCD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 12:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178049067367.10776.6492284818681222666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 275c4c00a3dc7dacd1f401186fc12b5def817a83b8e7f24c74d35c7d246daf10
Date: Wed, 03 Jun 2026 12:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780490673
