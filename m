Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5CB126F0A
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775003694; cv=none; b=QVgRu8A+EzmWxNT5W+Qwdf7Poh5vJ1dPf4Y+5YxqKgDvNCdT5SIkYCFEnkMvA6vHe6IZExLKCEH6sp78AEWUbnbLTAe2Q8p7Rnp35dWMcBP+qd6k5c8vtM0JsFYUWNgIGLaMMsj6tclgiyw/Ht2u8AXLVJNUKuwUFb2msy/E4ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775003694; c=relaxed/simple;
	bh=YGDiFLefHWxT2IKWdoJa/ESMT4DLeSWzHsCMY8gWLDg=;
	h=To:Subject:From:Message-Id:Date; b=jYuYHJCpmzrBWsfzXZo6NCWAXsNJxH60bUb34SVr7aRnYGksIZDFstZrhe5wlbg7XAf1SYPFnLrJDUCn5p5wdiep0+vVFaDde37u3qrnM8XwuE8b/su2XFNjTX+Mhnk3q7xHGhT3Pb3CcNkxsVJc6KI0csge5d6A7/Pk/O27vPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDR6g2yF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDR6g2yF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2613C19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775003693;
	bh=YGDiFLefHWxT2IKWdoJa/ESMT4DLeSWzHsCMY8gWLDg=;
	h=To:Subject:From:Date:From;
	b=BDR6g2yFuwUa7dkGfMLp/NelCeTPlYza/v8HHc10etPq9+HHk4kTIgrh9/ecyEhdb
	 M1UmsO6/ZI7jcOX8KddX791aVze5VQccDntCLaCvth7v/ZygDRaxGcG5ZkkbClc7Ms
	 E7mZbKD09Aip+lU4uvrI6JVVmTCWrH7A/XdskFSTJ/a6dlBpsclOg6Cz307oHmEE6b
	 dnYTUkwrG7k0+5q3o9D8qTAt/+8811Xs0B93omFa4HO2a2R6prVuFe668xNdWBWaLM
	 NlIj8Bq2bZY7W+aRxUd5zsqbiRXXy8rkRIbZwH4aqCgR4QE6WPEN9N7Ivtyp132OMD
	 TW6JW2L5qliRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F1D10F930B
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177500369358.8601.9915112341014241755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0958a09048150f0b51d85239ca42976647c39748a324fb5914cbc6edc1c14549
Date: Wed, 01 Apr 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775003693
