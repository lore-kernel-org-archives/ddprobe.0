Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217AE18859B
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769984034; cv=none; b=Heze2Zp1VlcRg1E7wO8N1QqovqCibdv00evPWqDpvKYrPLSZ68h63OtJ7zN8ZlOChgO4YY/FyfB1zxRWGXLSUv85xVRrBcnzBHYndoWbqe5+3pddSSpKLKJhrIIibSg+IK2rULLC8cjNOxv9WfNnVwbPOV9wZyLc/HBjkSIpkw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769984034; c=relaxed/simple;
	bh=F5EijtsjeqBXhT3DI2AMUqn3wbCf5VFIjwnUG3DkgOU=;
	h=To:Subject:From:Message-Id:Date; b=pDsa3aefPz+iU+i6fey1GNhzU1HuJs3xvy5iUteqVHtcxdrcP1WBtCZB/Pspp+hcStgjVjmDbHiX7B49CEbfy3mYPhDbM2F3pyFOGMlAPpG+Aa7HUORvEiz5EQmSMedjAf+/SA9pTDoabHciPVWaqEJoFXe3hfljNLsd+TQCsf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPvLk+5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPvLk+5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4F6C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769984033;
	bh=F5EijtsjeqBXhT3DI2AMUqn3wbCf5VFIjwnUG3DkgOU=;
	h=To:Subject:From:Date:From;
	b=HPvLk+5WhwyvibRdMgO4BXFp1DI9RA0CP8rXIfngJMvxAwadjyRKJT2iKBIR6Yp0+
	 eli1WHWh3QE1l+dCXrbArSSzQJ1zBbLQIc5gaIytkWHhkafd1eUx+A03TT0NPJCEma
	 paGC290XokcD2aTsbVEAb0+8cSDoi2EsO0R85uxyaiROvMzCGVmkKZrZG6q9t194Ws
	 51aJBn6lg3zREwB0UIELRQ7MRJHiVzeC2XAsPX5W1AdxC63ondKh1r7VvMtEplp41J
	 TJSXo5/12bWOaXFjFtweE5JyTu65gtM/B2jvNGY4XfMweJWpD9hs8PRFXTzJLtfhat
	 18y7QW69/sT8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95634E65298
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176998403358.30276.17146728514701938743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b2b95c86515a677ff795913b45dcba43cee5b89fd5ed8fff2f03d60a7c6ca7
Date: Sun, 01 Feb 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769984033
