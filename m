Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49AFC2ED
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748349593; cv=none; b=Y7ZF2w+Iv+Z+JC/b55GPSCoUSujU6mndasXuQzUU1eGS8ZJtsiBObSXkOuDYx2yLLlaMsF17JGj08MIZQoVXkwPHTieIDTNWu5hsfqlDbroqs5TNjJQxu6iDgkNYbaAcFCol/GSqcQLHyiqGCW3QZ+oLR2Py21WxT+SNGYJiBlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748349593; c=relaxed/simple;
	bh=C2d3QBQXq1WxmIHrKufNvn3cwSSJSWcDuWVam1BqPog=;
	h=To:Subject:From:Message-Id:Date; b=OHbWhMk0CobWsb1zL7RyUOSpUMpql47x/EfMDXGPtgNxhTEsO8lQZ/DRY/MAgifDwmJZYNIfs8Q8PkRTHSkDwt6cUeCqHojeIGcMvQ48P8jK1rgip+roDQlTpvwGCOXrFkpd11vdVnkgJXjtd/Bfm3oczf/3Mq+5ZUeRXk/V7oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TyZOA5b0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TyZOA5b0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39C6C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748349593;
	bh=C2d3QBQXq1WxmIHrKufNvn3cwSSJSWcDuWVam1BqPog=;
	h=To:Subject:From:Date:From;
	b=TyZOA5b0M1YCXrlhtvcqSddZsTgQaAmubHwcfh0NlyY9lsnsUOMMVt2YjqwyxxEQ1
	 4PY4CvYoOVozTrqco1cDqkUWEXVUjX5myqcwJL4U3zRD07BTEMpYVCyZtXnGB9meba
	 AfhYMXlEMAx+z6UNlnp9uyx7s7iNEXjG3atG9ioVKUJmYoShF9POX1R+M7sso7sZw0
	 BIWGUz9qS+SM5Z2qYim3X9oXdznJuGqi6XCv7ynpMd86eoQe6GzvkEN3dSgZhnJ3lj
	 1RZHRhGZ/62DWKM9MGX/a3cMJNqjiFqsz6M+drkO6I7KybETfXLh2AAKjmvTHEthik
	 wMKGm6BYPhToQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF6EC54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174834959357.16253.14393048704043739983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f7ad8124be2ead6f039281001f9aa612fcbb99b738260fda07b1851acf3f3fa
Date: Tue, 27 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748349593
