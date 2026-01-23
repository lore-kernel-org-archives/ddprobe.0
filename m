Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F1F39E6F1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 05:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769147634; cv=none; b=tErpnE0DebeNgYFEaDQsa83gyGUIrR+7M1tcizumXEKfQivy+GuK7zOzeTIJjg0LZ7h/7iVRtSyH7g24t6OSW9utxBo/DX5QVGLBmkKlh1m6+/v8bOy8In5oVYPBIXKPE/EoRgyGqaQUmXefFbyyIXAlM3JVeHhJnKWU7pIfwZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769147634; c=relaxed/simple;
	bh=qSeyxJelccy+pSqQ7nOuFBFTHkEbuOIew3IytFUfHMs=;
	h=To:Subject:From:Message-Id:Date; b=UZBhFI65XwpTVKbKebR8z9IA5jv6cD+0tzxyPrDwKj02YRkAo+yjrYM0vli/q9tYA4Lz6ScSUHt4N+rGFLDIkmVecXue1sPremxrEsk2guX8WkGSQegVEI2xuVJR5AfzzJ+FgpHaIGRihmJUmqgA2eh98ZtlvZeI26qLUkzJDLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDv1ZS70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDv1ZS70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDA4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769147633;
	bh=qSeyxJelccy+pSqQ7nOuFBFTHkEbuOIew3IytFUfHMs=;
	h=To:Subject:From:Date:From;
	b=UDv1ZS70mt/CRWuaZ02NyG2oAf5RGWczAW9eTdw+NW9r+x3gShjlj8L/TFzsHG7mQ
	 Y4EDgFc4cdlk1X3bFlQVLWY42+VsiIjnpm6+EJ6Ro8z1+rt+UaqW7VblxoZZvcQv9c
	 BoHxJS6pq+qmDRjKgC0fIfvRFX63bkhkKev/IC388m9/t2zyApLQLCjEvcjM/rnSGy
	 NlQgDUADyYTkm+KFiDX3PCYYjl1plke/H8xFUQWUQSCoQg358repxlxgmzjuzJETJN
	 w1789kb3vYh0C3bzHHXu4lBVdOcTc5MoU+ELnVW4Z+Rw0jsBUE2PW7na42oBRedroX
	 QrTa2/FB4fP3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918CCD6CFD4
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176914763358.20067.11174633329251475219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 094f7c7a545cb2c865bcf46a6433155a03f53b8e790c7514d37f2509646f33c7
Date: Fri, 23 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769147633
