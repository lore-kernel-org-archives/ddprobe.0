Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FC038B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748785794; cv=none; b=ruNBDFrj04U8n3kEN1cCpA/qsBq2WjFyB280BESsPXJcf0Rt631KnRsLBjEySB8nMNqY0jGf/aa/ZpMpr4OasedDsvKaZZfz08ZzCjeBLh32a4qs9wUT8z/VzuWo0JU1m6btYFKkCTgOzPHIrpTvKHIms3ZEMkwPu2ruLX0yawo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748785794; c=relaxed/simple;
	bh=rJL9t4nLu/qt+qI1Fl104pFIliSSCduOdQKggEFvhw8=;
	h=To:Subject:From:Message-Id:Date; b=fu6GkS8AlFyFg2AmFGdcNvuO8wJFGg3QDbhMGzYPBMdNjewEZrYFTn1lxHDA0cSn7lj/1JsvBPeTMNXwg0IGrmYkvs85S5SaV5WuPXeRUfnpOHnP9CadGLcLJGJZeyS8ca6CWjTE3Rpw20zj+ij62y34P8ndL5vs6Kgr16k2MpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzaXP5Y3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzaXP5Y3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4567C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748785793;
	bh=rJL9t4nLu/qt+qI1Fl104pFIliSSCduOdQKggEFvhw8=;
	h=To:Subject:From:Date:From;
	b=NzaXP5Y3YDDBy/XJmG/6fCqdU8uSj42c+YJmJoz9ajqkJR3L5k8AoCUpA4yKW+kxn
	 zyYesd1lAajVX/ZUI8Z9c2aKoBwqyhOPMTDkqtjKtoRkdVwlhu2s4DctVck+26BxvG
	 t46FS2p3cHRTJpdw5C0hSdRvDrsI79Yav6WewBUjnqkUa4G7JPwmUldct/P9VUDOPR
	 rLJi/pw3euZtY+HWZtrgME+C6+sfLdlQ2UJULVEUtH+skp3+rkEbnlmOxa5Ttcuvep
	 CjHPR3VtjVMRYZw02S9mHl82ymlJYDktcDqNW7H1leT/CPstRU8qq9IfOjghCr5AsD
	 kN6b6SgKBfc9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90101C5B549
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174878579358.32319.11156096931322890866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cecc593c10e8add2909abc05007b127d2a9de141011bd07c5362291d4e39ce2
Date: Sun, 01 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748785793
