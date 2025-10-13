Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E70821B9E0
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760324394; cv=none; b=PST6cinRe58jb45VmbzAKP5n+VV30hbBrA6PqN36yHKZbnDp36g5DGDRFrXmd5BhXPslRXyJvXd6WeoaCyM94sUiMXGDqfuiapQqADvmGbpX30pSXIRLOLu6s3WcoRWqLApMDC3BlnNr05g5+8R8pD9Z1VW4df2KZYUPl5a9rzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760324394; c=relaxed/simple;
	bh=voMUT6jCnxT8hAg+D4mAevlE7GzOEowPxllIU1CY1ew=;
	h=To:Subject:From:Message-Id:Date; b=fgszSbyMOS1ewZwB77HlNnHXyCnw38dCI9Jo4w5Q0W9yy1/Bi8bkqWdJnSAyagUdVJ8LIl+1LwgSffDskBOZ5kw0ygBDzLeZD3YESdxaHAX+F6WxD0uIfA3/mV5uetCBEmtX0i4mg5aJTb5l2A9fGH9qT1dMpWS63nhj/aKz9xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gyyg+pv1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gyyg+pv1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DD2C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760324393;
	bh=voMUT6jCnxT8hAg+D4mAevlE7GzOEowPxllIU1CY1ew=;
	h=To:Subject:From:Date:From;
	b=gyyg+pv1ok4S8Mnt38q+aZImKReXGvl8LuU6MYi4QEqrNThySeoD+4aLe5mzeH3Uc
	 aMEaRNiI/zwF8xCGKBgYNV886M/Do2hjDkpext6MSwHJxLPMxPsmgJ+6eT7PH8CnSO
	 2AQRHxwhf6u3I83LECXDWW0N/lJ0LpOL8Ems13g6RKl9+XfmgPdChdANL4K8t2A3LU
	 JBZlcJvQ6lGnm9SxaFiKAWquDfrYKneb1eCFuYRfhkVYPSuS5qvHEW3glY6Tx/c8A8
	 JWFiwvqihe71Zi0Ni6O8CRPWDU1fmrukOEVGov30rquZ78V8VFpogIJfNReoBh1zPb
	 V7+ELWUD7oGqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8D4CCD184
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176032439357.1711.8409060970328856620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 919283211594453858788c95276fe64dfec4f54591790630c55b467230ffa69a
Date: Mon, 13 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760324393
