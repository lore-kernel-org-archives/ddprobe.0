Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB862D662F
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764054774; cv=none; b=aca1hIGPYlor80nkaXLFMCfM/jdKCNiLEd+s5D7rEIuvzA893piA4bGUGWcsCZLUSefUVcZClBz/2tAGwo5RMR9F917UmPCXhMrNGXNFHCc1BPwKOFpmUCEryrgnLRnukNpktIjxxYfn8VnMVk6+4yY+da+pSEfDMLyUtvEyZ8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764054774; c=relaxed/simple;
	bh=IGIruYaAiJ2ryifCCEpkCexlI2wgI3Y2Y6IXeXjkISs=;
	h=To:Subject:From:Message-Id:Date; b=sR6FwED6qVvL8Fh+DhaX5tuAch2JWGumr0hR00unC5KN3oxmkvaJv4jHeQntsR4QaUlq/QIjR84srH0lbP9kc74OvvuM2kCiOs2e7kvScCOhzDya4VTt/P/STNRYxmD8wpLnrzjjBdx1eQYctlVq5djWqN0NoptYf5x7SJxVoaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6vbusbY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6vbusbY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4343C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764054773;
	bh=IGIruYaAiJ2ryifCCEpkCexlI2wgI3Y2Y6IXeXjkISs=;
	h=To:Subject:From:Date:From;
	b=V6vbusbY9IaHR1ZTj28GzWIMAdql1TSTh/Bd8fV1YqjOGIl2juSh7lwBlGN6Lc6z0
	 FwiRZcWBqR37sh02/fU4Pf07fI+LtXwxSzP1w4weVjCOXtgJ8otuQ+C7UB0LnLbTNH
	 bAYty32tyhCN3d2hCFAj5ULEUzOckZX+XFJAxKW3ULJlznoZ5Ti8vmmet8To9cjKYV
	 1nJv5HM7y0GKy4Htq7VZQZCaxyUW6al2jnQPg4J/WRimDF+fWZA0DAZ5tcl/SYJPBB
	 mbWqsu3TfLnNoptt7n4hm19slJiGlFuDHLOwR1V+Sq5XjMtBf15zZY5+CBWkguz8T+
	 AdMrIQ/zBW8Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93450CFD364
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 07:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176405477359.25260.15880158418440193749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c98e3b74ae746c39ceb086d83a5537f524aeae7dc78331deb3221124a3db825
Date: Tue, 25 Nov 2025 07:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764054773
