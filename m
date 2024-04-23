Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3EE1C2AD
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 04:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713847823; cv=none; b=BSlPdKTKH1gzvWkkYA5RcFKA5CUZOWcRDjcAD+4ucZpKtq2piIbTqnsN1u7UUn/kD0XskMxRz+FpgHmK0VYnOE6iEtRmEZi1zg+JSsOX2dMiNa+qo2SKRR4z+Ezza+Tp+kHGLjv8OsrKfBuPJy1RJKqBSntQh94yOzgb9oJQfac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713847823; c=relaxed/simple;
	bh=YrSHyHRy+lQJ/3qOFp+iiaWlbFfFMBoqCkr4syX5ci4=;
	h=To:Subject:From:Message-Id:Date; b=MzQpEiWakx0CsX8pdhCZ8CIggAy2SACTrsfsWDerh+jpmlBm7SnMgJrxAH/yxleDf2VXHZ6PIXlL1x92YIMM8jPoleDJHtVP+hbfhLsiEN+tq2X6C2jnzqLbTzu0qif+Ccv5ZKpHzUqBSidExJqwj0Devd2Fl77LkFyIgaLattw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdWP5STx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdWP5STx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D353CC32781
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 04:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713847822;
	bh=YrSHyHRy+lQJ/3qOFp+iiaWlbFfFMBoqCkr4syX5ci4=;
	h=To:Subject:From:Date:From;
	b=SdWP5STxd+hIgrrYnZBsYXnCvI17OvGp1sFvMxlK91zDNJxIejk6HQYl6q0JApB7/
	 h7U3UGMKPHIwcZXALjYKd1upMhmlUNNDZKoL3og8I9FXC5+UT3Co0HuDO3DLp0HmOH
	 EHhiwKCvtDEoK++3lyBR2FiSTHYkMx2QD5qB+/Sn30Zw55Oz158CnyvydtgxCO4eUr
	 gk+B1q2wkg1g1iIIexP8vNfiYwY8vKIPbOJRjvgrT+QRLEFuymTsebRgLOMksT0h1l
	 YvhVdWWkGuxLOl0OdAezNZx8PFvXil2MK2v8VdfIMTgwaDcskeT112UT8ysLf/yfVU
	 FfZ6xwKWLu0AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD566C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 04:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171384782276.23985.5500616354518788178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f41fccb544b93a311e9a5e6f2467b400ee7306d15398dfc51274e304cc005ab1
Date: Tue, 23 Apr 2024 04:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713847822
