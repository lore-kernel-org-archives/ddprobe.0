Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07684747F
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 05:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763614914; cv=none; b=R3MAGanvfVgcF68W9pH5D5vcJj2uVOvMdvu8GWLLdSyjcmo6FmU33WDEw6q7ELq95INdge4HzKcgj3lNJXUGiN2KG713wmFhRpkjobA2u4NEfiTAQSdKwnc0F5UW669RoXKM36SqMYdjS4EeI17YQWQbwLQ0KRblGaVh6HUiwfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763614914; c=relaxed/simple;
	bh=f3AiXlYRUl4d8mfYvWSYDSCg9Ajgnym+ZLWCsZrpSFI=;
	h=To:Subject:From:Message-Id:Date; b=lWZrsZahs5j9OJyFdkeYEp5IbTgdOgFT0K8qBteXN7hKmRQEJ4Gy3dOofkj4Vtv5Th8nGSzRyHOBldz192gLDoyUEr00MiovSFU3NO2gbI8HIqGhg6I7YCld6gYlGgU8XtN85i0VGS6rnux8eEoI5TKwXgmT/GWWWtLj/0WKrV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlAYVNcO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlAYVNcO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA00C113D0
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 05:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763614913;
	bh=f3AiXlYRUl4d8mfYvWSYDSCg9Ajgnym+ZLWCsZrpSFI=;
	h=To:Subject:From:Date:From;
	b=PlAYVNcOfwOGr2PMLiYl4iWx5mLSSVLJC9V+np1vbHF+qBwIIZpZnoRsRou1w2UYr
	 A5cOLzJhc9cgBADhBBuBEIQqu6krq0+n1njPwJBS2HopNNsmjWbR1J+okNENhI3KXF
	 Nga865kPdb1Xo52Rnvm/L4q77glbRFB1fzeLqyeZXb6TFhmcSdH/sjL2eET9oXE0ks
	 eYS2uZc6XrTiS8BUfguTPN3DXOObvq1tjNULA9VT6u7H+QFLYn6ILFkMBH6B+Ib1WX
	 95G9YReo+CDjnVHH+zhoOnHEDkEK48l8KCBcs+mwbVhZlVQzZ6T8jmuw7Tl8WXkjU3
	 YGDoNj8T1phGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D60CF64B9
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 05:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176361491358.13091.2767171881814732252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24c1a521296d40b472ea88686d2fe58d72320518cef61d42de7992b5ceef048a
Date: Thu, 20 Nov 2025 05:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763614913
