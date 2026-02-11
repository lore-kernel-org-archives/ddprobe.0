Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F1CC2E22BA
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 10:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770804294; cv=none; b=tK1whxjbj26WU5/d0W5ZlaYVCyQiVQ8C3ppPbSavLBgLLSYOraHc+aWgiI4v76ZaERjPi3j0cmgc2zXaKInyQl0iY6+ehPmacsXpfoSTNGP/MrSltoOdodel3Fat6iivQJC6Nw46R0BHF/9x3EAFVLdom1SiHx1xRuj1VtWKbmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770804294; c=relaxed/simple;
	bh=qy8SLxbzaumc/eiXixrMpf3xUjS/a+VJqokW5jOPyB4=;
	h=To:Subject:From:Message-Id:Date; b=CSNpQrPaddHvb59U2AK2y9HxTDXYNZJTxmmP8/RVCvASHzPMaJzZRoINIoeCVJDXFpafYjI4rbOmrMrnkWVNs09XloRoaf0DwmMQLB/5eApEy3D+STh7+ecXXTD9iCUj6G/hnHEEO+qokgx+7T40EWvdKUItgmkZT8xVglW4rwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0q63hwf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0q63hwf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08CBAC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 10:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770804294;
	bh=qy8SLxbzaumc/eiXixrMpf3xUjS/a+VJqokW5jOPyB4=;
	h=To:Subject:From:Date:From;
	b=t0q63hwf+wiV/e5Lvzo1rO3WgLGEThZ2pXwKJgSMYc4+k5HfXLpok5cdmdck4+47k
	 z27mbdHlYg7jAaAfM56jX9X8dcif9YHxMhKaGLC4jYsclV5so1IAc/rrX5BDhk9mz7
	 l4cDezEdB8AsqbCL3XtJDWRYX/3X/EpXXcMh+ypquNUCHhDXLP3YBl1DeJV6wQsOcO
	 zpV+sIJFcRX4pdD81ND0Rr5QOodsJvD7RNrECgxHGmeYqzG04YBeOSgM6iESvN0oCk
	 KF3xQxRMzfv6cdcOek2cwHtN0y63Rnf7/Wi6IVIBOYgOYeoygweX9+TJ6XPHgusKjj
	 USlJynOhplFNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E06E8EA8125
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177080429390.2432.15733271375220682681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a536fd450b26bf8ee309701d1cd55007ac1311fc63bb6a27205b5601a04691c
Date: Wed, 11 Feb 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770804293
