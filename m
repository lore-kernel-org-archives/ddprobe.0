Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111E028467D
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760779794; cv=none; b=icE2yGXW9GYKmcIGsQLlZWMp3S8HQStfJR5Kbe6ntIao6S0kzHZnML14jJAdLcXOBqbym+9OSohmQUuLw8Xy8OEfgDgC+fprusc5V1k8neEtCOKFrbmo531MV8Lucp9ssfWl0sNsyKWU3uLMBl0iPAV+D2R/j7sQ+kUGr7Va/vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760779794; c=relaxed/simple;
	bh=QW6gymO88aN/iVnl3uVFytemLSrsvs+5Di/A+1LvmDQ=;
	h=To:Subject:From:Message-Id:Date; b=lIHYEgtOIpLR3rk9f0VDUmy698P5qapWOVGuR/DgNnPoOed/A0TDT1UGTyTxfLlms3XatRIOntTTlKlTjk/Y7oHwa35v39k6ycgRRF4HPvvDTJFMP1cU2pvzVeKLtR6BC5FlwjAZW8Vhbh7IjPlMkBfw3gWYeuWOIxXTZDC220Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtyfaveW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtyfaveW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4005C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760779793;
	bh=QW6gymO88aN/iVnl3uVFytemLSrsvs+5Di/A+1LvmDQ=;
	h=To:Subject:From:Date:From;
	b=TtyfaveW8jPRlUewnG+MWzrMwqIsFupg+dzWQWjte4yjkKbZttYZQXf9OrMMAt128
	 +q2CIKW7l8d9gxBXJimaNBrOk4D+3plP0ImBH58WcrqzeFAELab9+dzh4WjWr1GDMp
	 9qgVOZ3sSOmUiM8X+ffdsDsS/AMU+UM3ll2YBUcbjqDsvCX1R6EX6U5EZ/yHbNwFx9
	 AYFNt/l+srPxKUjqK7dSNCRZAzljs1B8CRJEpLEMJSathDtYQbiYG9m6+eI0B0JJ74
	 pPQXV6LY4jAkQa9XFdLLEO7l1sdBn11X7WjHeYb2goyplBp65YHeFURClaJ0hrck7s
	 T4moyv6Wa7sjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96184CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176077979358.11402.11813730668691851143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8620d0177204d29174911e9712717b996261fbdd8074938a23ff4546f09fb49b
Date: Sat, 18 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760779793
