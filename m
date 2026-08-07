Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0403A8745
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 05:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786078836; cv=none; b=Nj4RHmBziitBh8QbwVrGn27+5GUdEbTEzSxcibNxroIlPkiFcyKPe5KK5ooquPT88A/VxgnMPT0lNpm2Rx8lbp9yq5U2AnYwMkTRwKLH16UJkDmO5n6GqU+WqaWS+VuTJBVkF0qVagMJcsAccykyhLToq2QapPMdMkjUAgA+Sjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786078836; c=relaxed/simple;
	bh=gyooJlK4gXEMnasLczO6eWJTuGd0Ld0LTmiOQASQraE=;
	h=To:Subject:From:Message-Id:Date; b=Lpe3goeu87Lp/ybgS+tQfcjrndpnwXrqUwjvMYGwR8TooVPLcsxCUQc2fzPxqHBThQRivxb4XVN8xDc2jTtpm7pcpCsTsQuyrtkhytQBeuMcWhrl3O6XZGKmhS0CyDXKbrMVK74JHfokzZgltyHeCgAsz+Lo1/Gbkv0aIts1QrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+YnVe0V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+YnVe0V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8F5C2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786078833;
	bh=gyooJlK4gXEMnasLczO6eWJTuGd0Ld0LTmiOQASQraE=;
	h=To:Subject:From:Date:From;
	b=H+YnVe0VTi32OEnY5Rzuohw+8NRrb2At4nYX6E1F/aMPD02BjJq3Fx4aPbPhbWb9u
	 xoPuVUdExlY1bE++hIKOQZEliygyAr7LT1TOihTLA1OhM8XQ/mlyJlEtH44K3E36gX
	 iVnkXawKQFH2pVl00C7tMSwAkakHxhJFugasBoJsusm9HARJf88iYCicZbPx0mQfC3
	 vNszVE0if8FUsscuQ0N2P339EG4ZxX2YC1HYld518FofnKovOLZ4d1pkASenP9CVcT
	 pc+HJnXsjjVPYKcxN+Qnue9IVxQMpHXrymsODx2vXhjmY5Brd398PqOpVXXMlbInJd
	 d7TZ87weAmIuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC967C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178607883369.28221.12971329725281347416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 901f757345fe966887f0f094e6fed34b42ab9311c89d14604fde6872286b6890
Date: Fri, 07 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786078833
