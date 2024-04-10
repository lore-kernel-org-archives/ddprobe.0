Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D17398BE7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712715496; cv=none; b=FRWpgFcPZKwnyhN04xOwGybfkKoe1S1yW1dEoag5/WySo0+bPGXgMigitTZiuuAugfzzFkKQpp4NzZz3uA18bM+9yGcDUlfWkE6yPf2R6A+qAoeecFlLAK+G5pGSCEMjeSW1oc6LfJewCAiknlCUYVHUzCR0Kk2XjXnXG+7EQBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712715496; c=relaxed/simple;
	bh=D7q9qH+NhIfJ3sdGElfFYtmc+h7g0rurGcqn3r8zQW8=;
	h=To:Subject:From:Message-Id:Date; b=tOolsyYCLf0PcNR+KL/w2+VbIReZ4iSOl2bqErHLiBbrGS/qQ56xdNytx6acLdvoJa0/5lXtrsFb67f8bOC5qZrKUGA02UlMPNLzqgy0rsIqL93p2sVxnei5bF0Q/C1jtctDbDj4eYfS895vLK0A7Q+uaZ05E//WWEZUZrZrXuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCUhZ7d7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCUhZ7d7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D38CC433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712715496;
	bh=D7q9qH+NhIfJ3sdGElfFYtmc+h7g0rurGcqn3r8zQW8=;
	h=To:Subject:From:Date:From;
	b=tCUhZ7d7jy5/gkgonZU3lhLMxROmy2e8A48O07iMm434B7zDwM3VFXrYQn27mauZ3
	 3k/rt6xbrjGB8LN8dDc79LvfOLmSY88ci98b0gA99pL9UHPpNLEJNRyUWQrZWpnc00
	 ogFrwSE6G3oBWjbqnti58n8jffl6vde/CpXeLvucX9VXvchhYR7RsaDU4F6zd+l3Re
	 D18ov73dhFiHqnPmdO+wOH/yEU3ynaw1PtZNZ3CdXffX16FO/c2fwHUZgy0XSVIQCk
	 jtjal49eYpNauISM2gVi0X2yP/KSg2Re/eDkI7cY1jSZ6FXCazUGEbihNwKj2p2yp+
	 yjusGgiQVKz7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69970C67861
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171271549642.12270.13643649339366317214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50adae847dd4f9bac90f3b83c9dd851e26fe45a748b87c219992294b891815b5
Date: Wed, 10 Apr 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712715496
