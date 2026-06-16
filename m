Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED86229B38
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 12:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781613994; cv=none; b=ZdogIRr2BBzvuSCIUKqvLYUggBn89xfNbivJpuTWG0DmyKDZMqzXOY1mKgzUrxdVUYEeVnTPt2fiSjVBs8+jBBYuZFC97xWCNc5AA+8N544/cv8OdzLjS4ZcaOngq1xfUGkDa4p++mbTwtOtDaQY6+f2nQoN90YJMKdn05p2NQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781613994; c=relaxed/simple;
	bh=iPKwT5qZylJtdfBVamK1YeU7QbteklZ9DOsn2ZgoB1g=;
	h=To:Subject:From:Message-Id:Date; b=bXnYkxal2wHUeOvheUyMZBsQXuZwXQoTuogURRjC8NmaJrBLAisGRZMzsJKf5TunpsOkUeljVKA9ycaMOLr6WLcYoCzQ+TyuPlhO5LQjHW85f3IYpO5BKfIynmYl2VlYqXYHYcjH1xdNkpyLsTXp4SiQkSqxKVA75lt/DcPOdkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=blyL/mFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="blyL/mFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC1ADC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 12:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781613993;
	bh=iPKwT5qZylJtdfBVamK1YeU7QbteklZ9DOsn2ZgoB1g=;
	h=To:Subject:From:Date:From;
	b=blyL/mFpiA59nydF5vB3Sw1TjG9ZfkKPyHLEoMBoShPpscxDSM3lhPC8HhLliAeOd
	 HniEKenklf342EGLUVsikkklDYluaNyotcrHnGFCVuZNP+qA8pm16tR9u+fm37VxSb
	 pu9RmTthdfhoJgVTTgj+CKzckpjX8AZZgmMmI9eydyUNarliIn+1opG57wIEmFBU50
	 99Qyg9bn3naN8B8Q3jv2pAmhoWhW6+f8mP5fA8GNBIpBNbow033PmSJOgRxFZjWPmP
	 +7jshlgrY4jrdC5jkWtpeQvnk5f/eqr6hbNe4GGSRKQB4233vcID7kALd9gdQxKz1Q
	 tZtGgb+GjukXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B261ACD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 12:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178161399371.8141.2563042243650300286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06bebd980774f63bdaf6c9966e22655607ad00b0e5f3fac83b7f2bc2e2fce988
Date: Tue, 16 Jun 2026 12:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781613993
