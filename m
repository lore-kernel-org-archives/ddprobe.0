Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257EB21CC61
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756366194; cv=none; b=c+yoTnkQv1F506z/3gBeDMQghGsyGuLTdryqPuur3q3n3OCXnA0WmkrGLpCGz4prNseTgRZpklNKkWkarhYe2HTd1dusGpj4essLuY53hXRf8Uql3mJGdAODmhEM1Ut3/7oPemmHFvRgY/exRPwRkx76ELp9DfyJweSpDRdK3cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756366194; c=relaxed/simple;
	bh=Wl0D/iuTVv8qBCMuGIzdLXno+bizR0+vcrLFWjW0efw=;
	h=To:Subject:From:Message-Id:Date; b=dlNGsNvIgT57PftyXhp9z4REUPYgVG6DldUW64H5zgjzgQah8/YQjE1Pje+KP0EUrzqvZXlyHtZLk5MlP4MfLaAkho+hoGzb2GbXpQyT+qWoBG6aRCpl+6GMwDOLmHZe+fRi1Oa5FIhfMcj1tJtPI6NCuHeeIAhuRtpzZmYdu00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppHEG6Ko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppHEG6Ko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CEFC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756366193;
	bh=Wl0D/iuTVv8qBCMuGIzdLXno+bizR0+vcrLFWjW0efw=;
	h=To:Subject:From:Date:From;
	b=ppHEG6Kob27h3JW3/4gtQgRGR+hZy06HvLpmfoEFX698yklgfKvkkKnPiPkOpe1S5
	 itMOvJmsiwpBr6SEpCYS2a/ERad2WDvsfvnxRph7m460wpcFPShQG1RZNXO41MXv1K
	 C39fWZqGoFa847S7Xe7r2UPj6r1ZxuNXUKSdETvVh9sM5oOw3VcayyJ01dvRCcDR9q
	 ZJ3Hyp8+IbOsthGLuPTFqOqpQvwtmbFLlPbV6i1Z3sCLn68ufE1k9cP0eq6ftXhRV+
	 EgVgbphKF6BfY1nQTIM3RwhPv3rv3dDky4o/BOsiyKdmKpbqB195Kto4+sZDJBcOdj
	 N4fFsV9K8L39Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937DDCA0FF2
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175636619359.27822.8526680192999383272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aed1c1f90aaadc6752a3734d0c5da3e71ed7a1e8aa6b3fc96bb4c589f8078dcf
Date: Thu, 28 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756366193
