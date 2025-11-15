Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F1E2F3623
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763213994; cv=none; b=oCA47tzFio3C86Gl64MnMCUi+rui0lwaW4lTIs6T/+0cXcHJ5sHE78VHrgK/x1S6ZNngtOA4sfKuVXhWAgmySQsu3bAppQYMDGgz+Mn1qbkJXktjHlZ6/adWvNuAVLfvDaDWfWVKIoehE6oU75LLVv1XzjY9NJzECPxkyCIgG8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763213994; c=relaxed/simple;
	bh=kOdYOmuwUNbSfmo2F6VQHjrj6hF/O5/1bPsvKViFZn4=;
	h=To:Subject:From:Message-Id:Date; b=KZ2k7hcUCy4GXRm37k4BP1qVlkJ1KLX+Yc8k4C8A4PqiYuv9N7mozJDSImds2P4qqGyGi5Aal4ec4xpiLNcJn5B6YWs9+fs6NbWVd/phd1+GgWD2GOA8srjf8RGz3ck56tih9yU9QbdE898nxhZ0edeZtXPw3oO6Vb1bW+So+TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4U5og91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4U5og91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D9CC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763213993;
	bh=kOdYOmuwUNbSfmo2F6VQHjrj6hF/O5/1bPsvKViFZn4=;
	h=To:Subject:From:Date:From;
	b=k4U5og912NIKPPxjCyzz+EOcIDKnjPMUklMBHTaAhw72J57vWuYslup+EVY0rzQM+
	 zUgrdBuEBGSjfjIRrqRKvBDRoYxh64N1y7Puk4IUUhc25PYxENIVbh2dApVS49O3wx
	 s3zgb4BOqK5taURoU7PyJYl5A50TXt/KRrpmkNeQQ5mydN2TJRJR4+W7W9I+2QkxPJ
	 nzD2QLQUr4iZ7auWIQGc4E5fBnBeua/R9OqCwU/y7zBCuV+h4oktgkR1wECUhsfTT6
	 UuANaR6b2DlS79zfH+mWV7xavUJO8A3UPmD1j07UP5/cq5s6PJjViR6ath8XcabdOU
	 eX17o9BV/01aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A7DCEB2C6
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176321399367.19297.16030322847607187901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f3dce2721a418a99f510e6f7e0f9976d2aca392c8b382efc48716e968d96134
Date: Sat, 15 Nov 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763213993
