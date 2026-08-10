Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECF23054EF
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786369834; cv=none; b=qPAqlKUA1Ue7Xmu5/r07EzwTi3Izk9hWVhsJIF891ZdUw3tIsk8MSd+I92aEWQt9A8IMwPJje+BNQxt/wHi0lV5kIngPA1iWfWesm95/Sw/oaPrDuv2/sP0tueIoVVA76lgZFwxi6DFdfyyG0NDdMEaGtOEibEnzxKGwG+MTu0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786369834; c=relaxed/simple;
	bh=WQPTa2JqelyF0M+IJhuOX5gUFySr1KhFKiKaUET2MZg=;
	h=To:Subject:From:Message-Id:Date; b=H8p8qg7tNF4H7snEqYq+tBTz9Mjxpg49IEZNCese0ZfYtNdM63pDFj6LVCZuAgTwdYsI7HOcbiIT65Sf0h0E+oexCmv/InUD33NUIWlRB16PlPfd8tEZSbPdQdiSu+BlNucI8hPugMDBgxEZokFd3PrBDb7SwwUVvMzCw1mcClQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIPfxnbm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIPfxnbm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38C4C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786369833;
	bh=WQPTa2JqelyF0M+IJhuOX5gUFySr1KhFKiKaUET2MZg=;
	h=To:Subject:From:Date:From;
	b=lIPfxnbmBymydYLHF2V/gvyaml+nr0EgmRyxyLGUc28AXGT3nMMWolSpex1PhhK/X
	 Kw5GZbJm/iHxAhWbNy3JY8gBY7nyeTlGs9URNmiEoQZKgKRbpOXZ/UTzvm+gzx6QP9
	 Jt/oxw1IZvRe6Mi2t7B+WmnyM4On+ZjE9BQIiQ5mYX6OUmGNwB8mEURdO2773hUV1z
	 aL9jwbO6z5ojTjYbLcabS7LdPo5oNmmeTjiEG9mVHaCcc2YJAj8tXAGkQygIUEj1fu
	 ptdOnxI3d21qbJcmk6HhlYEMH8wV+I3/8CM9yW4+DG/cKX1S3kN+Je/e75hs64R0i6
	 On4xQ7a5/WfHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE2AC5AE49
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178636983369.23086.14357197443568122124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dadd64597c7e0270610f569c9a1c976324faa89d826b8d74f548a5d4215dfa05
Date: Mon, 10 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786369833
