Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508AD3B791
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737905755; cv=none; b=hXMKLGYs9tcQjOYohZ1M6XjmBN81reGnFRyvUAJglob+xuGI3rDeb4vJtHfKA86L5MP2+Y8GmfVKqocsgYqvXLnsfi66Pkq8l73XQvem9U8wVMBkgWngx0aAFKOZqX5rA2ZSkr9RuPj6xQPjbUS16cXZ3hXpcm+IvUHEwGogZhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737905755; c=relaxed/simple;
	bh=CWfg2NogFdcyMC8n+/wgliGgg2Z6NaFydIwEmuYjfKI=;
	h=To:Subject:From:Message-Id:Date; b=oOf3SXWjmlAsi7xkP860R3goI/hKUStNh6q3wHzkIP63bpIENB+Z0fa3KxVHIorUmTIbR1lqM5QsqaUjntVJig6x/jYIYyVXOb6EsLSvkZdgYSpNr4EU0On532iURq5+zh5KswQmsiXt4yq0ZIkJ9Uw2EfIGgORL4CpsdgdPHbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuQY/nY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuQY/nY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8979C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737905753;
	bh=CWfg2NogFdcyMC8n+/wgliGgg2Z6NaFydIwEmuYjfKI=;
	h=To:Subject:From:Date:From;
	b=iuQY/nY6lT0WRohrgbh7vp0ukTPeLad1KJ+QPHazvckF6UFGkBXLAnj5znYcnCXmT
	 rJjX0GfjuwYuADxViBnUtUrt2KXkHvfCjWAbNdLDYA40uSjT6sjUm1/aAc9XLMurKb
	 MS/i4M1MSRb6/OQjQYChfhyvzZnnvVu4nR6dUFPF9fEMuwHTDXUisjtzrSV65Nh9y3
	 047LQCDmjeQQogO0glXUo7hZWEf1bxnnyrGgO5MNu8oX8iU3paSPFtK66a1qksCHvI
	 FQnfZ95iCohQnUcS3xBt/d0M5ZFxlMC2U4GzyMDjoiG930UJ/pkyVxoxQvsZP7XHsP
	 hG2+OvJuzHFlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E14BC02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173790575360.6199.7290611765846882666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d36b7e4a510e2dc83b0a8f444111b4e8a9fe6a979d91361066f7361872b6f0d0
Date: Sun, 26 Jan 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737905753
