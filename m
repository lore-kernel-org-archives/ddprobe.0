Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B589225403
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 04:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780634674; cv=none; b=gkn162Qg4hU5/CStT5LMQfNgvHPR6pIL+ZkkG+EO8c4+hR+VyDY6Y0lRehCKaTFrge/03u+TcUH91YyjKB1V0LKouqF1DwhkxQWrnYJaNAqSJZU6IUOueU1L2dOGsfSUa1PNPOt3y5d9WkGxH0Y41p+aea35WA0QYL13LTisaho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780634674; c=relaxed/simple;
	bh=Wrpmn/pJUOOrFOvzR/lWjYF6GGyCm38TvsMmaCSTMfQ=;
	h=To:Subject:From:Message-Id:Date; b=CzDNvdXeiOtzwq3TL+0i/Vqq8zbH3Q8E1E59H0qtpwbieLzb91pxJ0EvKlJPLyL8H0I8cWgIgUgmaOcN7iT1t1QllSx+JnfV+EXZL49cePIEj2VRxaLBHaOwFZwIwrO1bvdW0hieaTUI2Rx+amFgMzovcJQRplGZKuiVBmR4kLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tfNEYxs/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tfNEYxs/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2E8D9C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 04:44:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780634674;
	bh=Wrpmn/pJUOOrFOvzR/lWjYF6GGyCm38TvsMmaCSTMfQ=;
	h=To:Subject:From:Date:From;
	b=tfNEYxs/yNMUB8rtEqWiwFLSlM69GrPPVLJIH30cjbrH6j1Se1df664Ir+cgt76nI
	 RI/3bzeCU7AYbb76m54CtssCSo8Hw2rlFs/b+Z6W7YUDR8cyFznJK5wlR4eE+tnyDZ
	 sOZPBM0/wivgrF+87nOl0lV4GcYHYO8psYwxsMt/r3y17/x+doihxunQXd1MjxKZ3P
	 xjqSzBXePaQmMCyNpALIutL/PtPPmo6R2ykLwVDQPJW5GMUL+smx8vBBA1qmSa8O7k
	 r/VidKCxq6HhMcwBiNA0kth72k3tQI71vr+VxDcB6jITZQgZcSuHe1mfveiPVxoeQ/
	 fSFy4SFnrfq/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E86E6CD6E74
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 04:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178063467382.20610.10978099747617864312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc824c67aeeb9a502096644ec671c9d9cb3702b2e983012976cf82fe957eaf18
Date: Fri, 05 Jun 2026 04:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780634673
