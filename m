Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB7F29AF
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728557754; cv=none; b=q6QOm5aB+AWzZVoZl46toruoNHbZTTzickCBp+oA+0TT0iz3dqhXmm2C0XRoimc0E8tg09XUTE5kUIU6FS3MBTAyIwGq5kAOIivc6oSPEfTqvC5Ungf4bBgrQ2EXF101kltgKeY4/zmBeYmCQJTttxQ1iRQTuYybOk2nFepB6k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728557754; c=relaxed/simple;
	bh=DM7U6MjUgRFdNX1AYpZlvnDNp+xaEk/xJlCeQv4NupU=;
	h=To:Subject:From:Message-Id:Date; b=Ep2x93b0wEeggmY5vrDZ4fDwU2WjufgyApxRX5BnQlFqh8xWtTHvoz8AZm5R6JkH+YC6H5JqT4M4eyassRV5vN8Qx1Bzxv3OTQCzdRwKU9zQ8UB1eG05LgWEyGGDuU5yjNpLBaCVPttFsWXbgu60n3mOAIvcJ6XOqBYL4URNda0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuaXN7HW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuaXN7HW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1814C4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728557753;
	bh=DM7U6MjUgRFdNX1AYpZlvnDNp+xaEk/xJlCeQv4NupU=;
	h=To:Subject:From:Date:From;
	b=VuaXN7HWFMp6MpyTgEJJ5OV+mLdNf6omCVZKuZMl5YZyETtRCALccwUW1+yJFVIE+
	 jcSOa/OrMqeCj1Ix50WMN//FcCnrmCd4i8hHuBezG4GWetDDVgN2+FcDkNED1TlIRJ
	 INhypwO9Std+FYorGwUscCvn8T/Cz7KlChVv63C5QIn5Ol3pPgFCpvXXGQnEVMJxF0
	 Lso7Ece1iEld7VczFQ9KSBTb2HOh8zuFd6Qf8+AcLfQcgDnA2EHT6vZwYEw31N2nFV
	 Ty8ev6OAS9Zp7Hi3wPxjny2Ks48TM5FjIsgyCPGeSpAteGn9D42T2Vu6d1zPQG378Q
	 gOTKcwBsvWHmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0EB7CF11CD
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172855775364.3440.6596931999108514971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee90668cdeaa6719d01b843784c4f93bf50f4d1d75d9e44df1b4018cf5dd3803
Date: Thu, 10 Oct 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728557753
