Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D6DC331237
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 13:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784035714; cv=none; b=rylcQAloB30WPhJIerbo/Y0DgcIiAGojyK0vAZN5OyJ+xDbYsKL/ihvh8sUE+unBq/zCAaeTLN9bPhVtyQc10hzLGoJhnvi4cxgxX4ND2HPMnRHVVH6rdYvdKP3e7MUmPXg70eJ21Wvsi2agZob7b4ZPhSmJPy1+Tmkrk7qN0nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784035714; c=relaxed/simple;
	bh=7jsVjf74jpjd3SJ7835KZAWXwNqysHy2l/digrYQWBA=;
	h=To:Subject:From:Message-Id:Date; b=p8xPRefoZSsMW1Nv16kb/VaTebLI4QbszsNpCuc7j8m60JrIJ7OYIgfqSjX8HF4RgDJrBVFtFVJNa0cdFuHHcJ2Qn79oE7ETik/8nVVI1DQoIel+v3UtDCA+9wfmW5QtzppbXniYZ8WKsSGBTYdYZKUnXfsVQXueFCSegVMZaqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mq7iu+JH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mq7iu+JH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE1CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784035713;
	bh=7jsVjf74jpjd3SJ7835KZAWXwNqysHy2l/digrYQWBA=;
	h=To:Subject:From:Date:From;
	b=Mq7iu+JHoFZtj8QUNwjVuoxUP6TBWPXwoeYIaggVMYfOSJPI5NCCNLni5c5VZUE8U
	 oKjMDrSzDwl2/KCwPuRnzghwCAOr3AgqD8Xgb2ab77JurPjFtiVb/pcnTgEMvTKfnn
	 ERHI6s6n9ur9Xedli4xIhelsCwAWvXD5Pa2zexO6lTELkCNyV0Q1E9SeAOGQ+sVe95
	 uAQoZsDnXPAn3gp5aPB4XahhAPPY678F3Y9ySgf93kgjJGCEaZO/2IwdGRQJD3co7J
	 tzh1JBUYfVdnfG3+B/lqoL8QIbb1MpowKMG8G++JWszJii2M3aQpw0lCzklaJESWO6
	 eXg6Lv0EWmJpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7ABC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178403571368.12386.11916715626222478986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d84435557c2f8be90e755cbc88b1c18f69689c624f4165bfb9193377004af27
Date: Tue, 14 Jul 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784035713
