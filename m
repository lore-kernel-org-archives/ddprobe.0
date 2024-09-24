Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E9A38C
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727139354; cv=none; b=R/cd3R70xBn8beedQH3CNVFgzPzSPQEQiRhviySNG0AUvOG6V5C3yUpNs6SqeBMHm8/zNSuEIAEr9B4W/C+7s7FIOluZ13wVXNXwASgsVI54YnUWf70uQ48OSa4KXtWacnnuZRtQslV4b8Wvd36h3DpigEx8TUBl3r+9B+T8tOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727139354; c=relaxed/simple;
	bh=6VAm9AvpvZiBERuBW3esbJX68MrolFjHx3+fuRzODCo=;
	h=To:Subject:From:Message-Id:Date; b=dz692ZzWZwDj0zLM930+royfuZci8ZxBNkoDIktnzAdvvqswFINhxzmuvisxhdVpQPOjh2uYHtMLeq/l+mCb0bdZaZUVQuSK7ySWxGceaO/2kRlaRaXOx3AhwJjvR743sWPYIHlvTHC2+o2sTVSirpUCx3yT1m9tQaV82ldiWxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/Gc/MMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/Gc/MMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A344AC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727139353;
	bh=6VAm9AvpvZiBERuBW3esbJX68MrolFjHx3+fuRzODCo=;
	h=To:Subject:From:Date:From;
	b=T/Gc/MMqcGlF5S2jQTNo/L+QjvEncaP4bo2xb9EX+Xv4uYFPsYTTLEwiyunVokHuv
	 sqXR5iwvjR1wHrpuTbnpwgsO+EJYTah1B1+290ImZWsh6Fbp70wzmAsjC5mPC35J3z
	 qxz6Er1DlZTR+3wlBNzMJtUmHR5n4eWOvnje5Y4ABu3Z70x8QU/pllTquuwNouah2e
	 vV66QYunx2oUbdRffzzbalngzHSd6lzuUiDKrqJ9wCmjj4nHcE1iV9O3bKITRG/M/G
	 1Z9pqsX0NNStkbBP16AlVavlIOMKLfq7b1e0bn6NCKzdaFtyamKPuBdgJLMYHN7lb5
	 zfgpfs764uD1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95741CF9C5B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172713935358.13432.7519971530992849416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39121e2a78481bc364d25cd8cf151d590d12ff1f37bd4c458898870d1215956d
Date: Tue, 24 Sep 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727139353
