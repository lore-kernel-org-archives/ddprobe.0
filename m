Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265C91C36
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745662194; cv=none; b=rVV0+BkyMm9fAUKtVqmEnq83T42bsZM5IukzxYjvHQfsU5CUrNxAoWOB5PXJHhr270dvi4L+5mgGaqZrOCXFaOwn9yl+mE3KtSLZNiqT5YZd0wt2FXVR+tlBhrIgcExNWwXu7hj+mRgO5zZ87GgiAjnOK1ejFMHLo88dBpB37Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745662194; c=relaxed/simple;
	bh=r+1z8DZzScm/ufzz3oOWs26dcfO7g7oPd1N5prFXyqk=;
	h=To:Subject:From:Message-Id:Date; b=ovVSG3eibzsO0nIEuB9bRUG5kWckjRuXD47g8oHlgSzlQvLzRefqB81chmzi3u5qMSr3oHtSGYZ2oQU/4+tdyXxichlZptCajZ4it+X+g4/t6XZgIoF956FlcPOenL0aloHCoJVIvNTfmYZoq0eEUbeAJ0t7pOeUsNdPXGofB0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJHMNKqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJHMNKqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ABAC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745662193;
	bh=r+1z8DZzScm/ufzz3oOWs26dcfO7g7oPd1N5prFXyqk=;
	h=To:Subject:From:Date:From;
	b=WJHMNKqWbaAhq5+iPttlGPJ+93vHdWblzQjs6169dSy5+6+05mEHG3rUZq4s2YBab
	 sTLDpIhBz6iY0AePgG+x6d3ijByyqDepF/HNiAmEp+5kJ/dn4Z9EGA5a/FGyulO2Ds
	 DE1Q2LPP9jaJwCx7bT7n0gijCmkQOZmrnpqu7abUSe/U1IrBu7kg7dfF30CsPQJl2j
	 FnvZRHGAqXLzSSXw72INuiEQjiFb3SfpdgS9rSZ0uh4S2bLiDn7edHq0nIK7zpTgIP
	 ZAGNstEWsVJ1y08B8jzZ7S1vUGWMUuBKYWAu/Iv1x8Um+yNcxKRF1QgUznAWIvRI8w
	 MN4SLHP2ctRdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9395AC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174566219357.28757.17242645155625992150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01d0f34ed79ad49812f0de6fc6f264885ce1139083c4a389d8d1e44bffb1eb26
Date: Sat, 26 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745662193
