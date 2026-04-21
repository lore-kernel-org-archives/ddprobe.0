Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09297175A6D
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776756454; cv=none; b=KhmfbuAWhUjXBXXOEo171CedHQeglmnsKUVqVawGpTTnX8tZsRrcNl7mwFjbZNxAL3t1AKs6VQdAXSICJ0HaEKv2BZ9sx4CFK3YfR6+Dp8y5WcENmi0JFmodbZlLytYrDUO0Hm6G8a8EMpWPqesL38GB+TFOr9kJVbC8lORyIX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776756454; c=relaxed/simple;
	bh=0/JqUKMuX/s7l/LpOwfRsAw3fBv1otJxpI+gS2bHssY=;
	h=To:Subject:From:Message-Id:Date; b=sZxysgPdYYzncly83ans0j+beV/JR4ES/BEsbbvv3EuIMCK3QwVGo1pLucQuW8ECDUTcym/oI93Knvrm0X6dDbPkxpxBo2YBrLC6O/PJwC7+XWnR5Kgtk9h0xOoUlwIIaFaDN6QJzlipjMr83qcVhxMtecVdyml0di7mYKixHJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3+He+Ap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3+He+Ap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD54AC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776756453;
	bh=0/JqUKMuX/s7l/LpOwfRsAw3fBv1otJxpI+gS2bHssY=;
	h=To:Subject:From:Date:From;
	b=n3+He+ApHw16mFGH9F95fVswLL1h4bTBcAn6xIoDRkiPhDb6fao7PY6mTR/5OL8u4
	 rzB47tqbafH+TcJ3VTmw7du6Eu2V9bJHwF4WxyZfGGsBn9L01QDjCty+pw6qSPSIEG
	 7odTMp/39++5RTK7ugm8ey3WpPPYarEdrdVg3v50B3IoWuWDl45zTYrEVa8tTmtQ72
	 5l7cpgcIsTplyQWyxQTCn84c6kyYht155Z7bDQi0MFzeLs896uxT/NBcOWAvaimVex
	 rl1T4KUoxo6b65HE8YGu5qWnNHnKAgGcf0d+UeE5h4CopUSJmm/a3sKHzXmjzqYLnL
	 ctGq/Wse0Wlrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC323F327B5
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177675645368.14688.4801694400550054470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00aa4e60d44231e7f69b79ea859d483b18b0acd19eb5da049b76a6a13a8fd527
Date: Tue, 21 Apr 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776756453
