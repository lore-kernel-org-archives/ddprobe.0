Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A64D72618
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776020254; cv=none; b=KvnwPYf/lOf/drPxz4HzmA/xljtCSY51c8WCmDJ0fHDsoZdiPOfkBIteeSk7SFBNnzzOVk+K4dwGaywYugfOIUmsj02ImFeyFy0i+Kj5kez8fzDUWPuu32EXxIxm7ztTDWXAspj1DAcFJDiU4fQkGsIM+EEpyv9RBujOAa9sklk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776020254; c=relaxed/simple;
	bh=6rMIqHbtRUI5Qa6ealQ8xQxYlMv79RkwdOsUHohvXtA=;
	h=To:Subject:From:Message-Id:Date; b=FegYD4Kze4RzF5ftoQKVilWTVkVULl6pq/vLofP5v8tLNKygz6Us6CUTfEqoo98NUMHeTi/0lLHb0JLnK3r7q+iXNpxuKDAy+d8mhSimWMC1IiSjkANPiFvndqkTq2SvGjH1h25gTLv9lZjOmRwb9kvDCxBGvkJIAutNleEF/aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+o6XqLp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+o6XqLp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF0CC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776020253;
	bh=6rMIqHbtRUI5Qa6ealQ8xQxYlMv79RkwdOsUHohvXtA=;
	h=To:Subject:From:Date:From;
	b=P+o6XqLpj+eVDRf3ux2awbV/GXKS9bjdeH+0riRihp6I5bD8nvV7FMd+n18szRJ1M
	 E84sKcy5wO7qHu9NYq7Urqr80YCUBNzKuzy82v/V8V3RbzhP+rxrwvulYCi8vvN45u
	 uJlfPR0/10yHv26vNQe+fFm25cHYSILnqFG3vJstgC9BJ/mIETjjKV4fZ43CGiHL0r
	 sz45JBjbPR2Y+iW0rST3F5bDvVnUQtBgWDuhIgRVEm7s1Rrmit3aXlioBjQR91zbjj
	 uvagb5cp5GDPTY9ELKovfZ95H/HILK/GnJaRid3wGqXhHkxEfyf1FF2pCAHLKsyvRY
	 b9Chs+A+y6TyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC615E937FC
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177602025368.19367.5331274731201427185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2560a7a74298b1d48eab817985e2cf81b7e9455cc3d61fa09a284800ac040051
Date: Sun, 12 Apr 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776020253
