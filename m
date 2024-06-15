Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B493538DD4
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 05:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718429303; cv=none; b=e/oOLckLa+zqCx2MC4aVMCU8bh1vnoWTmkL1ErGaUTvxQZm36t71M+pnZYriqNGOzok4BAEQRjwLtI08vRvbsHSuiArvlCEMERKGHJ6GDfesTuTPQCiz5kJ05F3B50Iz3+k8phhNj4Nwcve1TDsLx5kNKeVuq584JgghqLiZj4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718429303; c=relaxed/simple;
	bh=bpQC/8jTjKymxsOCxkANwhjYZCyNrZWj1d6AO4F+hJA=;
	h=To:Subject:From:Message-Id:Date; b=CKc7FwzTIgJol+kKP6ROMqiIGFC3/ykVSKpXa69KNoA8WFUAFeJzHRYe5kyf6osX9d8/knwOhQRT7GCTaqa3HDADb6Ge5XMWBDr+TWNVBDty+FA7Jf8CAI7ZYL7w1qfGKwnqJnUQnwrDuBjA3adrGORXxSYWwibnP2dNXZZaRa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rp0nr5IW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rp0nr5IW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 41FDBC4AF1D
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 05:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718429303;
	bh=bpQC/8jTjKymxsOCxkANwhjYZCyNrZWj1d6AO4F+hJA=;
	h=To:Subject:From:Date:From;
	b=Rp0nr5IWJ7lFOAvDseS8cZY4YSzYm0TjFhSKCZZblSJsnir2FFJICX6mY1S1GH+mF
	 1AzpQpq/dwgKW9PUTpM7Vvvo1RPmx+n1CFOzPQXB63pjlCLKMqssazjHPbTpr/C6le
	 5fxWt1TdG0VU7uAT6RkWJf6T0wsjoRmcNIc6ar+OcGBlHmfFlsuA2SzBmkVSSwEbUK
	 8znX/4dhaUNYRg7AxDHXe6FONfeLmUTT1+zEs6/vByqOOmNmius+EGGb27fDsMwzg7
	 Zkzh+SFZcOsZgSdOUJ3gn3n6sWK/FGlCucxfUuL5FZJJMshf896hY3GosY7sN5AjO4
	 gFnbpzItwqUmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2B85C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 05:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171842930288.4653.8534621568209759331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68b8597858d08884276c59747fc9b6c9aec082fa6abddee6a8f1f177a753e070
Date: Sat, 15 Jun 2024 05:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718429302
