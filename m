Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3022718FDA9
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734816954; cv=none; b=oyyMOv70LX+XKmhzAkAIYFJwpJY/nC8eGG0wZCRbbyLlJLNWKt+T7Baiuqde09JGV9Oht/eIBiaU461m4dv/B3I8D8cHYmuzJpO++ZYBmny0zjRtFIImVOSle65YO1WY/2YHi+JlKZIGu5VTUeUmTYV/zmK790FLF+uCNk+mwIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734816954; c=relaxed/simple;
	bh=+LbjOOsDrvO0MUzs4YWvZJtH1sBZGgmNgas5PFjxk3A=;
	h=To:Subject:From:Message-Id:Date; b=rmvlWDITp1ZII2o4b2ge62KPdvIUv0hKwQOofcGRa/dpRUGoMCA+In/9tIY36vxUlnTfCqeCWPckGxAdsPrAqiEMVWY6QmiCL7jIu+VzdrW2BltfuSSV8Nx96V4Uf9iGrP48Vey+TTteuJKqhiwAfr+Noybcq1p7OaiJrCjTuNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=juHt/bJS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="juHt/bJS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0A6C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734816953;
	bh=+LbjOOsDrvO0MUzs4YWvZJtH1sBZGgmNgas5PFjxk3A=;
	h=To:Subject:From:Date:From;
	b=juHt/bJS2zcGgEcdr5jNAoX+2JrcYv0q/xyng0NUgkTIRYBEty9flnahjaGg4hcQ8
	 dRC7+OX4iqjoVyWxBC+T+2gCny1JyCZahtqrKfaupMPDmZvbxEWpkGCfocInQf4dq8
	 yFJKYdkJEmTLuJ58qNs1wXgCM3XEOoQDmGDePuGbe0WkJvCc14I0FOD259o9+nL8aF
	 fan+2MzJ5STf/4nilNtqzFKT/oqy2ft6Ddq5dJW+Mo5pf+avcqPiNtjRn2DchH6GhC
	 UtJg1jV4D/JLKryZXVdCF5dYFZj1cOKsqY6qGc6SPHFEqZguEgVVbxcsvkix9oiUJ3
	 9vjYqVp+Ot9rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5678E7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173481695366.1376.4632838196556108474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d74ce52f7f2166ad6b91ef73722d9c64745dec6d1a7c1a4b9ff410985aecbece
Date: Sat, 21 Dec 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734816953
