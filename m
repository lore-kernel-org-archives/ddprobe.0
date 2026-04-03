Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B5834DCE0
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 14:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775227534; cv=none; b=T/dZ10WzJKys1YpZi5vlN9Jtv730pJOUsxri/frtPqRiLkc7kpycBWlM9+MYkT25od32zrdMGe57g57hwg2/L32w37TjTnWXEoQeVtJwdLXoTgcyChXIZ5ECoL4N6/MXHKnENfJqseFOyBa+YblutW5GYFuq/I1Mtaw6SKcQ+z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775227534; c=relaxed/simple;
	bh=JC1H9ukODiCOIzhM96fki8b6Dxg5MSDDRLQDWi7pJBc=;
	h=To:Subject:From:Message-Id:Date; b=pExoMOIkvRrP9UYhwneFidSPJfDJ1i7sSVSeRcaDBzx7srh5oXsrY6YkgEJlYUbHaPqd5KQMd9DdJoFbiHTkaUAoMHV8gZWJM86ApR583/65YVDuIemfjEPSOcH/d03LKEHhr73vLxZifLsZS/e1EbDxzMFhY55GWSKAf4Blxug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aX4mHjFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aX4mHjFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED7CC2BCAF
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 14:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775227533;
	bh=JC1H9ukODiCOIzhM96fki8b6Dxg5MSDDRLQDWi7pJBc=;
	h=To:Subject:From:Date:From;
	b=aX4mHjFlmJv9KT7WS1hGz8kQXxaFwJavY9OOD8JxQsQDTzk9QMcMTWOW2MmRahpmB
	 4v8059FMswScqH8ogoz2OWNCV9Dxv5EH4nOJbHvaZt5SSlKeHNf9IR6yVo2MGgbo+s
	 AhIvuLroAtDmpTjCCZYocLz6aMJFJdL+5lnd8d+I1kqAs9yF1zrF3LjXGdwf50IPOW
	 6oIydgFL77WpE2TS8nmV3fCAk7s2Ouzvjkg/08B96TeojgDLO9Nycn3dv51dSVWlf0
	 RJ/jj16cPj8gkqSNJdl8923Aut3bARn09OLis52INmCETkYlTQ684NWOa3jHlVkhAj
	 bNM/TwCIwG1cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB2EE85372
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 14:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177522753368.3614.16022941217539924778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca561b7ad6b3b47c5b42feebb470084fee6cb28db168f463a0fa3cc223b7baae
Date: Fri, 03 Apr 2026 14:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775227533
