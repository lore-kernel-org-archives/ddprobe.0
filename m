Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C6A2E229F
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770443034; cv=none; b=QgSY4zliYOi+bJpSGqGeXattwrU8v1k0+Zb5QfLC75H3lQD1pY0ytj+Te5iV89zhEmmc3YPrdmtIjsb3Tsp5iTkQ0zT+JwjsNYqc1CP72nK3Jhcn3VMS3Pf3DZnAXxnzhGrn2n0zviMLgfOxyCysfTsUVMKMg6naSSbB6hLsReA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770443034; c=relaxed/simple;
	bh=eDWX3fVDXRH0Ek1SVWGk3a3lEaIK4PdR9qafOx8HGDM=;
	h=To:Subject:From:Message-Id:Date; b=qBrHpN8s9pj5SF7kaVsUJNjcji76Z+xQhUEwiqfzGx64tOKIz46FZk+BHrv/mLN1AuMIxL/2EIQDbiiOA3AmA8cR7wOtpTN4qQK9aZTVeMgcaJAT60dTbjVm7ql4OHtePef5KkctXEeWlgVxMOggObhUPcYDpo6HAbY7WdBUHWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCKT9Sx8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCKT9Sx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF715C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770443033;
	bh=eDWX3fVDXRH0Ek1SVWGk3a3lEaIK4PdR9qafOx8HGDM=;
	h=To:Subject:From:Date:From;
	b=vCKT9Sx8tOda51ueMqtp/APM07XlvdfET0zGLDRDEQ3oGWSCt+x7fqx480n0OcuDF
	 TgBwpSrsIKYjjWsfucU4CXOcbb17K7bSDCWm6LuY/W+75AyHigqibIyg9phVo60IVt
	 X3r6/j9zXLmpAc0dRTLaVAvvd6wlZIkFU4bMr1TN6jU7fxnx9yoA6I4oakPuf8g5CT
	 aligrIdd5ZiLbdhOCiGSDygvtxJtZEHjbJzo/lYeSB6BnZxFzxaZjYYAQ5BhtGCOnH
	 OBggWjRhLhc21wpl6vIF0+GxF6vBW4aLpntRgkFNU9oNT4MryvJF3v0IdZgm/S5EzW
	 w+AamVpzEDljw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B007EE6B76
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177044303359.13365.17127564347651484616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7c0799c0b3982744c3ccf4c486da903e64a41fce8e8e68cd281a0901ac31cc1
Date: Sat, 07 Feb 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770443033
