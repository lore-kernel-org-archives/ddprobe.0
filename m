Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C946736C5BA
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762880393; cv=none; b=DAWM+0Sa4p9ix70I9mZgwhQ1R9d9RIZwGt6FBsRun2ROa+uwevtz3zO/rItqIogVTssDa8hX98XXaFTpxL0HpPr6BzEuiOphAfA3Wfrvsgy15HqqZrDLp9ZIeCJyuLclp/iZHfXzrg5MSIM2F3bxn27LTWCvJq+sFwdOoh6hNKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762880393; c=relaxed/simple;
	bh=NdmLen+oSKOPBh+lq1dXWFU+afW7PpY48iYhWIXjJiI=;
	h=To:Subject:From:Message-Id:Date; b=Tpvn9+MNVDT8pDmD/VeO2RYS9RNb6l4wZgUAFh0uj1/6WHmj6uFRcm2+d2f7ecYB2T2rJt585lX6sa0nwcKV3/Z02fZfiGfvND14HtC6bEfKEpEnJaT8tf8m5AXisJCZHIXfHAFDF5Yb2vAZSxmBEteTaXVW12npjfAq3pnOw9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDLVbQid; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDLVbQid"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D883C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762880393;
	bh=NdmLen+oSKOPBh+lq1dXWFU+afW7PpY48iYhWIXjJiI=;
	h=To:Subject:From:Date:From;
	b=rDLVbQidIW9UvjRkQSimoJpIJdPedGbTjIIzobmnu5MXcFNsX9yaFrhYHzHL8sm9x
	 7Cmnzj2wveQBptokMkLljcJ0ZgJDxM/2MKK/AadcOxEbkFXA8xE28f3+ecoIUvdE1R
	 cr9n8dEghd1+s7RYu6su14uMPmZf4oXJH+aFMOIQYl3QdvPGCJeZk6n3JR6kbSWe8n
	 rl/E8zYmvvHFR3NHcmL6C0GS3SvtJpp+x+YgkdQTvVazNJqDtr77+DfGU+RHJRyiJ6
	 KFnPyshRPd0xtmD2a9qXg/f4chJDHc0aDlCpQI6VDPuZY8niWQR46k9YK8+l9TVVh5
	 IQFxx7ltetQZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E5CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176288039357.1838.8138698299886779116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e34c890cc6cf608eba417da688dd9518ed69f4570d4c66639f88d5f8e0107c48
Date: Tue, 11 Nov 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762880393
