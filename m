Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339A33D9554
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 15:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784388514; cv=none; b=sAko8MCQWsx59ioYRGwuSvyvO6Damlf5RCiJJvYZrfJYHrizDVLVBzoIDXcxfk6QJ7Av0lQLjedgf3z5FyDGS0JdpSSCxPNILxDRTc7NvNUoMaoQXNLl4o7dlVZ2Q3++Treb8qRT1KGWntC0p/RxAE1+uibUOFv5/CfhbF1vnKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784388514; c=relaxed/simple;
	bh=ZT8kovXjZp8bY/SZxOOiDQvoPmkiwVGOVp/H9vXddB4=;
	h=To:Subject:From:Message-Id:Date; b=ZIOUtr/pql7Aph1SxCK+e4gcwAhLBqTdyKINQwhUU+YQDvat/Ojrej6+ncD6fUDLklH2dnOCqLHg4xmn0jGAz7GRXdC14jzOH/ELU+yqw3Rvjw26o1UimdCI2Q1LFGdgxbhFfi9fXyNLcCQ8tho3dXGa5ZD+39ADqSIhrBwEozo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tC/s2I11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tC/s2I11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0467C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784388513;
	bh=ZT8kovXjZp8bY/SZxOOiDQvoPmkiwVGOVp/H9vXddB4=;
	h=To:Subject:From:Date:From;
	b=tC/s2I11PmvAgDHKOOCwwHZR5IPlO3PFvb0RFL+guLJxmWZT82kBWBE2geiZsYX2d
	 zMrYVlSrAfNwGkOoM5/a5jJa1piTUa5jQMTcT9lApN68+QvezaHv2REXPWwXlY2Y44
	 5Jzw5bJxVFvQaR2949VaeP/5Cxnabhp/OyRJE3G1+yidmWsrJ58L+axx7hXGJ6xQj0
	 FHbKNIqXHw7tfTNMJWxpD3z0UimF/SCgKW7iIKLIHDayneDZP5ieDd8jhxUmUWWOrm
	 oQJnXgLzBb8vRm69VitwxT9eGSbrzQvwPuAnPZj0uLKcdK5cjAOREZUb54Ar8Vzy1d
	 E27gbthV07FHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF56CC4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178438851368.10852.7329718644656000812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fba82adab94d6da62708ee3f972c1465705aec4362685ec2c9fa81672cbb0b3
Date: Sat, 18 Jul 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784388513
