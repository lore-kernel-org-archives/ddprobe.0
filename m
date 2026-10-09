Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512AC397338
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791580834; cv=none; b=NrGLcJsr1Uepc/ANn4se3gFN4/OoQXRmhNwT7R3SkTuzy5EIcDco9Zn8v8tqvX8iEfwCOYW9lmDtsKEJgBq8oTBZ2GpEwaEZ+xNtDMhowvcCLlhXh7ROVdnlaibotEoy0PaE/It0JsXynrOWpdu86o6wycEEwjAi1l8mx8KthhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791580834; c=relaxed/simple;
	bh=mPplhsq7pTr5EgWmg77cszjJWy6vmikO77XLvy9mGfM=;
	h=To:Subject:From:Message-Id:Date; b=WbAephPHDsk2XYul5QIKCsGpqkxH9UgygmCq6UfVmEFYvASOanHv0fQLX4au/jadrAQpCqzy4Q43ZJIAT6tXQb8V+Qj3pmPt3QMYWgHKb62uc7cdpSnbvAb6hwKFLkMmYU7vm0QCiRy/vPahAj2Zh20vrNiEmqj+QRKz5Pkq+mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u88mQEND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u88mQEND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41A8C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791580833;
	bh=mPplhsq7pTr5EgWmg77cszjJWy6vmikO77XLvy9mGfM=;
	h=To:Subject:From:Date:From;
	b=u88mQEND/e/LL7LD2BNSTq4IBdptLU7VLXqGolUKg2dv8u0EL0XPw+osITPyZKJAW
	 UN276fCRLovrCTN58Q54AmKSRIjuXpgEKbTNJdlvBdqdk+8bkszjuVGSqQf6ewKGvJ
	 bqOG9cNQw3dS5l6c32U4txk7pxaE8HO8Lno26QIPrSgqZb/3koyaFNCGBnkrp041DF
	 6AxM9W09c7979GgwCLL0CtN6CJH8J24LQ3MXmKB8EP32XDbcrnjCfsVFDYSkmAyhKg
	 Bz9bAb26r4O4CGoKazMrDksFQNvUc36mAfvZMh95qM2EbNeNTn2eqs82WxnuS7zpbe
	 waK98hl3lEhwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4ECCA9EBE
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179158083369.19276.3613863867089550282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39a99bd1a5d92c975195538c2000e3d7e4f84d5eeef970bb8479012a0399b0ba
Date: Fri, 09 Oct 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791580833
