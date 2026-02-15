Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED412367D5
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771136094; cv=none; b=VdIwUdCOsSfDkdbn9DncWAn211U/649zmJcbRLzHGeCRfrLK83MYgPMNqCEqLV/8CUnOhHhWEeu/qNFfOQkw1609ue18wSbkbgXpQMhtuAmUoVfkYzw7+FG/KGcsyhaBehwTF3NDsbVpT+A5eTdvfGO2kQSlLWT7gRPIk4gsVVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771136094; c=relaxed/simple;
	bh=P5op3NPSYim2Hhpn7UFfRo6HV+/7EENJKPcRTuANQ9k=;
	h=To:Subject:From:Message-Id:Date; b=XTN6pIGCrhZLSCr4ELpXSRQ3I/CJGMV0TkNasuPqPF5qQbtRAQm5XKrfUnC/wPD18jyGc6+01VOSquvngCXbFIHc6GT4woKXHr/DeqtKiBMH4QGTf8F0RFwHXxPwaQWwMVv1xx6Z9gHMq9aIKnwYnQ/t9vhi5u+dUDEkujHtbj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Amyu4qhy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Amyu4qhy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4598C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771136093;
	bh=P5op3NPSYim2Hhpn7UFfRo6HV+/7EENJKPcRTuANQ9k=;
	h=To:Subject:From:Date:From;
	b=Amyu4qhyK5hDnm1e9d0J++Otkgpypjh2XjyH7+IEE149LlRxF2i2b9BfY8o4bjcdh
	 uSit96YxWQarONRkNYWLKPWAPUt3WbhigRIylI87isaUOBrM8WbekOJK7KIMcULIU2
	 ZpJ2YiPRbx2PIigA4uF2g0wVj99BjwmVrYTHY/cJgkyMtHvoib38/tiLKdV/Vf6LE4
	 d9OZCRgqD4i80f8fzd/vr9PfCbpKTd0N+btUpsaU41264X+s8zHuqsKACxB67JgPo3
	 saQmMxyoalAl7zIAjmVJ7rfcOwqjN/646POlNJSaBznPqJqHPH7e9IHphqgEaOWr5j
	 dOK95r6nyrUUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EFE2EF586B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177113609359.6360.15163284565097935353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c59c4570841f829c939f035f90db2720359ea4b3d9b1dac25fbf53ddcfa29e
Date: Sun, 15 Feb 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771136093
