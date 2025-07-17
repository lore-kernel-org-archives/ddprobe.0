Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEDA1DE8A3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752772194; cv=none; b=n2NmOxZp/XUhfYjRafdlFMag1AEgJUmvNZCFQHaStX0ZtnRgeM6a1ydjoWrBpOVOBFfHH/CC1KZa0+l5rG1XviMmfp5EaI2bHwZcimAujlPHnFW2XwXbzOCSP99WaTqcVhimMBnaYNfhYFdHVaGfaga4nYLRJUOuMTY/hkuxVr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752772194; c=relaxed/simple;
	bh=+DBBgPQHVMHaUtcY9/1NESLnWMTkCEmly4GS259R/FQ=;
	h=To:Subject:From:Message-Id:Date; b=uj6kcgqZcaZS7kzzPTJBut51i7x4T3S0Z8bNdvaN6NlFueGTHaS1K17hHtAbtPZnqb09GA5nkI8uAE4B/BD85ZPGw7at+B9fIu5pwiRcF3J+HXALHd80IUsCl2pytOhqqopsBi2MVBgz2sORC1OkHC+WU6w5wvZ6kPWZhznEajA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ju/LdCrI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ju/LdCrI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0596C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752772193;
	bh=+DBBgPQHVMHaUtcY9/1NESLnWMTkCEmly4GS259R/FQ=;
	h=To:Subject:From:Date:From;
	b=Ju/LdCrIupbPwKQ9pLjoggOzvuGqmK22etrhH9EeCROtMCQ0EXsGQWyYmMp3wS056
	 J59IMXx10jw/IlW+Il1+UIdftFpECENHQWHf36IoTR3L2kCClVGm4YjuWiWPM62qU9
	 anXktd/Sq/7+rHHOEp7sRnEb0E3LZOMykqCqp9a9u7ThWfx+5bPHkW2fKyFln0nMh5
	 Qkec5UlwMqcEMJBgjmpAaRZt5Ht8K0vdcRV6irhpSssKEpCExO2VNiAHvpciYLWcpP
	 8snVi3TqluQGj4JUZbODJFNoI3yhJ+gRH1f//R2ui1JHiZB2pH7mapESisO4V+yobC
	 5Q1AAEEYeULEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F7D7C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175277219361.14675.13060887799055377206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9d001669e705e6711a1311162c3c3f548603e7ec77f7bb4746c2269d12e8cd1
Date: Thu, 17 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752772193
