Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041F9339A1
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 03:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713928223; cv=none; b=B99sY4hkxLhDCWlseipP4QIwcbsO5ayfUGV3g9ci/p+LVleAgChkU2y8s2bibxaZKNBpbBHSFCKIqj3nsFXGzYwyqOOxLkUt4BjUKV7i9RD18JlLi9K6234JfmZ0NBJf17cgeIwszX6LkL/8Qk7e00nvAP1TLWOJD19l/87WyPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713928223; c=relaxed/simple;
	bh=5MrTVp6KI9QArIV5nzFyOM/FkXoBaDaiVQJSnzXFdm0=;
	h=To:Subject:From:Message-Id:Date; b=CBvTFehfBtbjAsqLSVzkIEKwUqn0TsTVnDJVsOC8xhdqdmMHzQfjU7cmMa+RnrAZUnF91tbwYP+hdIHbCLwht+aShROxt8HRvtHXtJez3qxVE293MHAsDZNx7ENxmaN0bpGI46+P1R2LJpBnI3ZtR87t5dcfOs5FZ8cyB7Xh07k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kN0I6rns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kN0I6rns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FD9C116B1
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 03:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713928222;
	bh=5MrTVp6KI9QArIV5nzFyOM/FkXoBaDaiVQJSnzXFdm0=;
	h=To:Subject:From:Date:From;
	b=kN0I6rnsu+oRlqi+fZkiGkSAEUiuX8Ug+YNLD0MO3PnVYmT+diW33kO3JlzcOIi4U
	 lWp9fmEl2gbIm2498wH/c38LF+q3mKA0aI3k42BaIbig0dWnU0Zz8PiBdW3ZSxrOZs
	 8DJfahZhKfGTIvCN+QXourmGUp5DRNqExoq3DEQN9vA3lIe8zP3+qYpSxksyK57h/E
	 TmL0sUT1aSKb1ZVy2xxClsfqBWFi7FVpgsb9H9wzlq8NBH6QbMuS7tVjQmH0Fy+PlT
	 EZ2k9DgutjbsyQ0/lxM+OkeaBxBnMOE2CNCxbNEx7iDGwVpV1UqquSPmmqVHxDuGGn
	 guk00Py4RfnEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C8BC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 03:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171392822277.4045.13350232443498328612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd276afaaadc134c0d0b953c7083146dcc7cbb0adbe513bc855d0220314bb6b4
Date: Wed, 24 Apr 2024 03:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713928222
