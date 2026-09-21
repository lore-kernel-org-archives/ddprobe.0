Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F4E499F17
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790004034; cv=none; b=TOSQvIBgZw3CwoDreqTX/mnItCrP5WDLTnEgZqkUtPi28E9xiLVRhDIvAUAsR9MS1vf3JAxYo/r/Fe2NMHrpu66mbCXl1htorxyr/rmr5E2q1SQ82y/gkq+iBaYsA4TVL+Rl0q0keZZQwt+U9hciNmWy2IwUUT4/4nEHfjmfLRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790004034; c=relaxed/simple;
	bh=Gv/TWBIIlPeduw+68T/gvlbeDeHCTS0qCA+gYFygQG0=;
	h=To:Subject:From:Message-Id:Date; b=F4lxpP+H/E2F9K4ID33QR/XH0oiIg+7oGp7mYAN5bMz6sHHpgT0C+m0/8sunLu5U5fvZyDBvyYUevCw0sN3zUBzLBbF6mzQlieV547gZmBT85oubMbcniI5XYFYUloHWEMnZPj3ihOvialSzFE5q1QwxQ5DYvCmDHFuZJI+SO6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgJQIJ0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgJQIJ0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB4CC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790004033;
	bh=Gv/TWBIIlPeduw+68T/gvlbeDeHCTS0qCA+gYFygQG0=;
	h=To:Subject:From:Date:From;
	b=mgJQIJ0dgRa7WNRH9d0Q+QldFHYxce7Qt+N5n49dfFbXT4OOOxMAMMN7EjZNTBYaq
	 u8xbrsOiN6HWyoEbxerRMqlk2Y+EU6CFcHysS0Ez4DQ9qY0CDPwjTepCgOyHAWz8VG
	 +F9gmLUG6hRhajm1NcM/A2TLAo0bRXhB42yxDLzgHdqh2+z4egx0WJWrwWfRe2/CPi
	 rg3OqR5wj/s8qZB7Q7zLMpj0TwaAhIaOZaYPj6f2BhTZilNNzLekFF1SPB8vSeIyAV
	 OchKTH7R3rF7tjXxGWU654WxYeWTMoQMD4c1xBHV5js56onL36kfTdUXanE0hVaH2F
	 V544bezK1lChg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B41CEC982E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179000403372.30394.12701303608764951349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a1e06be26bb108aedc0a1c6a129b7eca3ef6d8d6bfb2129d0691550fac3a009
Date: Mon, 21 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790004033
