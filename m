Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105C8194C98
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774948494; cv=none; b=D+ZJdzjFzJAFymSmUPeNYROEwRgu9JGwj1KyORuivkoO9Mmhm9+fmmerQ/QtasTg7vI2HYBp4VFTJX2SNsZKeX8SL8E17tPJ+p7oXtxe0M44H2qzedPxGKY+AOQ4VVSs7f2x9myt/U9XynBjd0lQOprQx3FDTcWYQ3so9eKJYSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774948494; c=relaxed/simple;
	bh=vKhPRf4CWtjQECRZB46v7D+Yqh/cLEsbmU0eAr0tRds=;
	h=To:Subject:From:Message-Id:Date; b=DD9Oz5PkMbNN2K/Vw8EPNYAj2TvDSFG04uJkrtsvAUQOCU+oF9D2LYWk0jRgGBEhb2oOfCcvdOkA4zpvs2LRkp/QMsIWnrnWI566YvLAJ2NcUW3uk0b3YXOK2NaqKMWVE78+5vDO4SiqkPFGlVyKSR7KqmFOvPfsFOIIunPVx+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKSBDZlX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKSBDZlX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DC4C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774948493;
	bh=vKhPRf4CWtjQECRZB46v7D+Yqh/cLEsbmU0eAr0tRds=;
	h=To:Subject:From:Date:From;
	b=MKSBDZlXIr5KNcdC/OxeK0i8JVpQA6qXaYHi9nXoYyotOvHiLJFahy7bCmkiDGb0w
	 Ob2hNHpvH+aUAaBM/oESKicCrud/kP1UHyR/uX8Hzuy0O2M7LQpUUvRgFJXvYvk29e
	 NOo5lkdDuwTruP52rNjIg6nYCU6sahAOdLaiLS0ITUPxPz8+HZWuSrZvkUzb7WZn8g
	 P3Z6OOxwGLtbsBzvTkFHJiWxvOWLGgDnUXa7hRwafR1M5cz1p7sTv+dGhMNowh8vvZ
	 Nw+lRBXlhpVDxCVOtvVPj+v0Ic/4OqFsgpy0whzD9+0I0iJORuCxSc6djtfzo/nWMa
	 +wTYTrqh9iZjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93134FF60EF
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177494849359.24304.16866851276643500099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f60ab22a93804f2230023d27e0d7ce5f68771d1c9e3fb8b311d92987260e1d
Date: Tue, 31 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774948493
