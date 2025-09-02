Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389DA221F09
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756804794; cv=none; b=Dnx5NQS33p/Hqbj/O67pfrygtmcoxc5F3gMCwFTmv4lRpBtgWL/xFz4jeydWlTnQb8Zfah0O7YCe7YKC/DJYeJPLupS69Lav4h5DpFZ/qwtw8VgYI2P5c0CIQ0tkXToetE2yWqalEECb4B8ZtqchhtQDIBYvvvoPSW7vHbIAYeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756804794; c=relaxed/simple;
	bh=+SCOaeGUEczzYiYVBfIfgiu8XF/jBUXO01PRjF0FQho=;
	h=To:Subject:From:Message-Id:Date; b=NBsaoT6pAqmHDIEH9hYwC28DVGdieFF/BIRYRrfAIKnUs6kLVoQjPyn90WU1WaU78ZYSTz9J0F2DR8MHnvRt4fYAzXlbnb1k2f2EzA3EF8SYrus0oAxKbQaLzWXw66iZqUlKfL7AQqQh6PLb+zcBe8yqTiecbnjbN0Tn2TUVUcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnprIGaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnprIGaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A389EC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756804793;
	bh=+SCOaeGUEczzYiYVBfIfgiu8XF/jBUXO01PRjF0FQho=;
	h=To:Subject:From:Date:From;
	b=YnprIGaCMB57l6XJXwAR3UOsVLj5gS6hdxWDm/fk1RPRXzurL3cebr8bsFVHYXF0/
	 j7h02FS778Dpf23VfBow0rJJnyOmr3pvpvDhJ/LIHtB8anjB+ZIKXNM0CSaSfMYCy+
	 i4YdJQit0b6qLiM78Nawb1BwQxInr/fY8UvEXAjxtQmPIU7s6CyjZJgHir2L+EseIF
	 YtFEqxxS6a0xQOoNAI+za+nbPyNvnPkgtbl17LSSmd+zK3cXq2VEWGsIMHlAeg1YNy
	 k2LzBDLgnwfpHCha2H0TkNDLpuS0f/BasMKLmao57JX98fQb0dU/r/8KRgJ9CNzo2w
	 HafRcmiy2Yr4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA84CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175680479357.12648.9827758317472918968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a61561ac951e1f805743946d7224dfedaef4eba522bc24c629f0c2660eb6991e
Date: Tue, 02 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756804793
