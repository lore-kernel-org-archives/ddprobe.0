Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B91730EF7B
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 04:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780029154; cv=none; b=bPRYrpUtDGqtaG8zpaSksa9I1pWV1doGSC44UBeR1mI0+IMpKiEEhodSqvSwg1DQzXI/JYLKZiFl+oAVV+ZFYYZdp+Li6OsdU7mtAFailiVr800W31Fm2ACNj7AYFn3jN0HsY0iQcC+SlVKAkBGMtG0QyewQQTe9JDkpT1NeNM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780029154; c=relaxed/simple;
	bh=VBg7JcsUoL7Guh832NMbXXoD/Pas9JZz5tnvGckohVY=;
	h=To:Subject:From:Message-Id:Date; b=ecBBxCYo+atosAn3B/24caaTCE4eIAxlQm4JOUUaMZYFXyjJXp8JJ6Ckrapft479z49/KJa8Yjluk9n+zIw5CjQxYkEtUPG6UaJMdYwZ4y5BC7qLUXV2qMpaa6YNXRerr0dEGHllFDT59AfNL9U6tq9Ctx+xBoqdJMQ1fZjswTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P75tS+y6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P75tS+y6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E63C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 04:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780029153;
	bh=VBg7JcsUoL7Guh832NMbXXoD/Pas9JZz5tnvGckohVY=;
	h=To:Subject:From:Date:From;
	b=P75tS+y6Hd5tKPAAIUpVpqSppiT3ku181q+Xp49z6mpp4caHssPh0SXTz7214Vs/V
	 x8b1nMYmTm8uFqVO5Rv+U8vmAyVlht/1nDBxJQnx4s+5QK8FOhuV+aVF1K0oXE4BDj
	 oqkIeIPUrsmoW8mrp+gGxK0pai3tunLQf8eYcRt7MeZCkkmXlmA+liyiHAt98FXfUS
	 DNKDxSllBxIPEPbculp1GOdV+0IIW5c9o+TH0qM7EV20BOjvb8aiC9y4AgtVqYwZ9H
	 paQJnzpKMu8PO/10xo+Rqu4z1sMIQo93oT0HfnChyN9NLcKe8FbxorbDO9teLwygKV
	 +09Hd+5ue0Ymg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B27CD5BD2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 04:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178002915368.20682.7179745264807688518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cc68d4e6f40ee0e5b330c02025585534df122f07fc1b8bf70e113527aa42d2b
Date: Fri, 29 May 2026 04:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780029153
