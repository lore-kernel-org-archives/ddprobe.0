Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02834244675
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767041034; cv=none; b=TEWN2TESbDCSEcFnBk6t+anJ3KaW3SDR87GZvlusfi4ZnZ3J0W4lB0uU7jzGN1D9COgXXc1triQNHdsUEU857tyN3R52YPWlBB7BwYj3PA7brWDiNI2+F1R9lb9FjNPYDjyIKdVPe71O3el/btWseeWVLua8zMP4qAI80Q1Et+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767041034; c=relaxed/simple;
	bh=wgAAyVoB/NseT9ErSpX34hOYXYOD2Z9afDJ+FrlPkj8=;
	h=To:Subject:From:Message-Id:Date; b=Fwi+R+1PIMdkiwH7IGTGZUtSbS4DO9ANHJdYYrvo+DMmXoYOXOXcG8xW0CXPEp14OGaLATRim1Mn05irXwJiXHTNYA+uxIAcyaYnqVD1C8BVws1iWGVYHiocvam1kRbG235nD0A0z81skPEa0Zx2pwWMRDpYmGsHll4FaqazVBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSqtRW5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSqtRW5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3796C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767041033;
	bh=wgAAyVoB/NseT9ErSpX34hOYXYOD2Z9afDJ+FrlPkj8=;
	h=To:Subject:From:Date:From;
	b=oSqtRW5PA4swazbtdlDDgZneUooljAOvS1YTGo3DcoJTFGlnwhdoMRhiCr6awJ73a
	 2A1T1gNhGZ8kLhEreIDy1dFYbVBLJKYX8EYOnNYAAGXFfaoNMJ/tj1aLG+qC1SMlRg
	 HHa9I5XkjWiQJDE/4bHMLHwhVzDzjhR3+7qpnl7GaVen+ThiGId83aicCX6BxNEeTI
	 5PRJBMShqAjxCR7ytWYjTVd+VVPyRTtu5iEQ2rj8pFnf5GwHrDRh3PlFdxZzgdsT9W
	 UOJgWJKAxz3/knaFUS8LbPj2xECf/1AR6baBH8wX8ym8mef7qNQB11e8/bX09X5yp7
	 RCY4bhfHAJERQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CA5E92FDA
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176704103358.20833.12697876262426281570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e610b0e063de0c35802ed7d2d56b06b06dd42a81a8a913e1fcd8192fe74cae53
Date: Mon, 29 Dec 2025 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767041033
