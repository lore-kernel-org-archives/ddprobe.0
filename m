Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E2239D6C6
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776209254; cv=none; b=ZDBo7FR1I0/VGWq+6GVqn9CaCg31VwzudZzBJxb498APOPBc6FVFdMwgPJiI3XFfpAszUO8Fzta4cgB1sAbvg3kumX7bFgbG/Ri+filPB3530auxko4nFl5IYUK/jJFeKO5BXEqSPPmP5E+950vnO6g5OZAzCYMAuLQ6z3DG1J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776209254; c=relaxed/simple;
	bh=Evjj04hR4UhBpNc0STbwbjlC7d54gtX4IaGd/Qc6Duc=;
	h=To:Subject:From:Message-Id:Date; b=FOKybXhgO6zXm2RcqRfbBGSlxg37EAJOJsU0t0ExrU45/sqiMYTQOk+TOulzA2EOSVzNYn42MA6ELWtaGQjyE0WimTdSCyVeJchQq7QdGfC+/+crhsIGdGtiSvgYm3Oxk03H0yk/U0Gx8SWbyox4JHZ0+5SWs5EpP5vvZvI/T+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLzkb7ZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLzkb7ZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE77C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776209253;
	bh=Evjj04hR4UhBpNc0STbwbjlC7d54gtX4IaGd/Qc6Duc=;
	h=To:Subject:From:Date:From;
	b=eLzkb7ZIJ64Nw9CoBpTME9fBBD9Za3x2U9DYsj1bG0IGVo3yBsd1cScXfeF+oQArD
	 Vo0lc4ePHxxLKZ5RS/mnpUanHrs1PRYnaKsMq5vTjZ1dT6Fw8aNCZm6C3lI+YjMAAO
	 1RwDgCz1XGd0hOGpCLZPid0ADARP5AUc5BXpYKU+m06H4acTKmXB07VmFn786fETP2
	 kH+NtLQBefZ+/CVSW9wcXyoK1qHCMfkeNfZYo4KKCoYHBqi1cQd4o6RAz6Pk0Wm2BK
	 xUdyhbWkY0eT8awz3nZgSXSMQLM45VVSQKvCOAE3MfEFCZfaCIao1toIyBvPao7Qvd
	 xPSLPrrFtI5kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9891F9D0FB
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177620925368.25368.7313700011562762772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd183c7ba8aaa53201c2ca6ae14dcabe1fc3b083583b6f3fe31f5ac044478e9
Date: Tue, 14 Apr 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776209253
