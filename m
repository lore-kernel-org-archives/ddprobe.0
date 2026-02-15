Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A85217D6
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771181094; cv=none; b=Vum/jR9FVVs7rzr1VsM4Ubt0RG17ysQUu5VAZPgjx1acYMdQQhusABpWb1m9is418Od9GzkSDOw4cj5GTWjxImhIbkQ2KiQPP6MYeSU/W2CpGnxWDDm2y1F6Ulw/0p7KOjE2+vUGrDbrlZemUNrqfmrpSZ2SFK43cybNcIuT6U0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771181094; c=relaxed/simple;
	bh=rVuIcGVNYsnc/EU5YarFPgLQM/bAsxqqUb3Ip60bTMQ=;
	h=To:Subject:From:Message-Id:Date; b=G4+mhomQj4F6dOkLXAP+VjPu+a467/F1VHVy4F9zDb25unY3KrXwpBnaY/4bkHgFOJJbTbCgk5eW+MYKKRKe6m9/1xmx1tUC278dmjUn/gQ4SagP0JNVZR6+X7jP6ouHQtpwgOfZ2m3xEYcytV9RdE0pdEKM65zuDLR55v7pz+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQsFaZw0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQsFaZw0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02B7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771181093;
	bh=rVuIcGVNYsnc/EU5YarFPgLQM/bAsxqqUb3Ip60bTMQ=;
	h=To:Subject:From:Date:From;
	b=eQsFaZw0PnlKCcUzcnHAr/uV0A5pvCjpqHIzBVfF6u26le69Hf4iiY7IM0js3t1Pc
	 AnzD34sR8fIeZq9D5nXq0N8gyVvX4Urr8P+kTDjmy/OUGdggBL4abwSuyE++n4pJrH
	 2DTvAU2sWwWXp7PhN/iw5A7g4NyRfv+5gJR2WYD7Z4D5DVFuClf8nBaGhIKtGhcjLb
	 c8vNxUlEWoBDZyar7KhPdIRSj76qdajls/kNThkqXuUdOdvplOkxiCkOzxiOwZHdpl
	 mRh5IWVSRmESwS55xQgoPQTqIgvA0C2WH9DX+Tfe9ftT5dxPcX5uHocDIqvroM8wg0
	 z+Lh2ri0Q5Leg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A752CE63F0A
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177118109363.13179.10326160812353835623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1196a7b514de481fabd8213a490c57bfd2df234e89a5caa6bee4cf1f5f39492a
Date: Sun, 15 Feb 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771181093
