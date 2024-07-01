Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC9516DEC7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 17:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719855923; cv=none; b=BLrWI6XJax0h7I1AmC7xgks+fDVw3GOJZxdKXUCzqQdaf0FL/88eqq0Vh2SmUKYGcXvnaLGKPRABJ9/knZAYSWLkkRn9BGLYZMP0khLjJ08MoMJvXg3PIHFOtnxIbzXRM5leyJL3NH0TKtei2jhyFosdVxbNiOSJEPlM07AXEo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719855923; c=relaxed/simple;
	bh=RbalKFGhen61NiW7nu2XMUDUSsIaAZiA/N3mH7KI+ds=;
	h=To:Subject:From:Message-Id:Date; b=bvq4PEWcziRCbAyk2KHYqvfV1cMi2UPgiulMNpO3H7ROtkYfadJ6M/cTa4OHl0DnB1rqk6uCPbQuObnVK6zkRofUp2S/toClsIuzvaXDIfjltilns7RDC4DuOiRIUMALf3D+6BbQQN9U7ca2eMAXJih7XeqG3QHxkrdJlEtzw5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLlATAMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLlATAMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACD4C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 17:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719855922;
	bh=RbalKFGhen61NiW7nu2XMUDUSsIaAZiA/N3mH7KI+ds=;
	h=To:Subject:From:Date:From;
	b=RLlATAMvLOvIDoppdjiXZ9aHnXQEzEg6cDDAztbCwauLmyEQGg5wgpM/q4Kx62DR8
	 3VjaaRhCzSpNzRrABPLDzMEjbVS+pMq9tvpsiq9MIx3kCAPel9uFe+NYL466wtfBhA
	 ScbxgYS6KomzTenRDFjI/OWTW1MlfKEqDCDVjlsVSFEXeigxN2ik2UViGqGC3XlS7p
	 yGlLtFwxy0pgmjg6qB5nut2V3pLN1vEPLIuKtunh6Cpl7CwhlknAfZGfFVsyA3LuE/
	 Uvnsb6JSWk9xe7zLkWH9t1XWxGybX0nZNeEhklL6hH3u+yLfqdVobT2vCZkZ3sM78Z
	 OEBFisY20Inew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A82C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 17:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171985592280.27292.5288860457884808618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e6932e8a1e9233b2160b16cdd365c7ed0b39edc78b81db7f0585a410d0792d
Date: Mon, 01 Jul 2024 17:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719855922
