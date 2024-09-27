Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3576A136E37
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727461554; cv=none; b=b0r19OQF1DRfEGWxWkNjtY/ZSZFveJm16fvmA6TzDUFJ9EeXMv798dlsNk4jbP60PX+PF28iLmoMkxS9pqB8JUdkcZessxzWyefmKx0G6vmCAH64z3UNcjAK6eOH6XK5czJMGYRORm716JGyUKAgXoIrhzUZHXw3Q7ioroTNiF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727461554; c=relaxed/simple;
	bh=soiLRZ8c4YZiMp2oiVoJblWeWodE359XHLK6YHeduic=;
	h=To:Subject:From:Message-Id:Date; b=YKUVCsKZWRseEyf75mHER3ovBvFQdhrQSs5kncTARy6Yo4m1i+i+muACxukt9vu4jPbf2GnDvZQ/ZXocPXWneC41NkpgKcVpoqkFwV1NTLANBPu6DDQLR452mgf9Yxc6fFi68S9sKn07/WuPo3IbBkhQ671lZrDG/G7pHA1IMXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcW2GYfc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcW2GYfc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DDFC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727461553;
	bh=soiLRZ8c4YZiMp2oiVoJblWeWodE359XHLK6YHeduic=;
	h=To:Subject:From:Date:From;
	b=gcW2GYfcdqLRAbMl5khLnveYR9pEUlSREj2F6Wt6iaghLl7cq8kn4wt3qTuNWQ1KC
	 O6mPESY4NQGm1EpDMajQDGMZV4Q0K6rbM1lE+vVHzZ3wL3WzRXlnHnXN2EpfrLSxIT
	 QzFPg+Nf1sMeDmTwpAVIP7dUNQl50O2GQyE1R0EHhmLD7xxxegRSPx9bjjUBAqNERx
	 XtgQuz4bT+y2354OWtHNC4YJm4gbsWy9+A2Cy4/uYZpPlKEmaXvwZPk8HGU/U8NkjL
	 YsHVoiO0DUzC1hDGV7BmCS0UHlEen4OXt+tdzbiImqxmL7OvjOuJe7sc3cmwxdPFyi
	 6Khu8NXW/Z60Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A606ACDD1CD
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172746155366.4544.6158523068761908534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08ed6974c8c0d5b420de5d4a6ce2273fd0be93108defca68d3e01ed3972e9e33
Date: Fri, 27 Sep 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727461553
