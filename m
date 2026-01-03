Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459823A1E72
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767470034; cv=none; b=HF4PYp3TnNKP5EvSGL9SMPmJnFMcJ7OQ7WsItU3+IP6464+ii9ImGNuJybDIGh99sFmlAOWBs5LedGcgniTv0jGSWdaWkBLniGVcvA1aQ+vbqwk4rag4A//tuBQWKb28NY4t4Cqgz3yDzg2Ne8IdqZcawiJClGZo98WzkGtxOUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767470034; c=relaxed/simple;
	bh=CkxKXctFG8mp1hMsX7aC01E5eIGlDWWXqvD/mnco/sI=;
	h=To:Subject:From:Message-Id:Date; b=skoBelk0+laTZ9Gwlx4VE0HQZ0kVjMVgS2ugjwcVCma6va3HlYAUH1ZsLM85mSrNt/k4EPvwez1sT7q0wJ0KZ1ahrUWentLdQBa9f7zrkEqBYC13TdI1kN1bqPaoW9vtMfFIYLcdKRETHhOSkOUBQ77azerpxy0v4UHHdONdWQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjjsFkVM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjjsFkVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4D5C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767470033;
	bh=CkxKXctFG8mp1hMsX7aC01E5eIGlDWWXqvD/mnco/sI=;
	h=To:Subject:From:Date:From;
	b=AjjsFkVM/nuefpqcJIF6Vm4uWA1WxREkQadYxfaNE9zQ1nri93edVdm8cWQdmJyZH
	 J8M6H/kkfwT5vzgR0LPl0noKNF9nIbQUjs5QFR43ZL9joq8CGftB69vLCbl2ruhBow
	 dqiMhVRlXzIV40RncxuXJCQriZ3Ll8JCJF4fkGn3vObufrZUSxk1ZdQmgrRF31UEb+
	 ZtJgeqMBnPmKimHCV3N1eT9XV9UMMdlWlLoyuplUgUyxpshIxC+nhYang5kwrAaIXf
	 H7W+cHIEjWMr31VRQiKs1pvrkwrcnUQBSnz5cryTI3MIqnWW3hvPy7R7ykB/3VV+18
	 kuityMdw+7Waw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C98FC6182
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176747003362.30948.7271465314937455455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 727a43b03bcc934a25b93c6bb9436aa03bb30ab7bad38d3d5f7be526272b7071
Date: Sat, 03 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767470033
