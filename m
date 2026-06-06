Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F4C72622
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 07:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780730674; cv=none; b=aMdvWYAEdZNkUitDI6I369cFjXGVolIk/2sQqUnffrkKQC2FAr0nRH9RS7rSSP1WPWJaf9RRYiJ5PlujHVrnCyqEkvwVUcXAzhaMeK1m1c15ijqFjJQTasBoiOPfOt7YxyBhquiJBkBVerXykXP/cashlTGd/ROhrtV5dqoewhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780730674; c=relaxed/simple;
	bh=Wx0dFXLV/n35uFQwbXoonK54Vde2ljOItcwCbUaalYU=;
	h=To:Subject:From:Message-Id:Date; b=C3ANK+tpiR8p5DCMkHQ8h9fy4WvHjTfbw56l9LNEM18WJAY5f+9NiTfJVq2lXiBfY7UiGesOsZA+jHHK4a4G0Rrhd1o2syHFa5sT3EJxhiZgV9uryeHjmAUgUx39EDoSfx4Y6TKIWjgs3DrOxPZJhBqXeREah2DwzX8Y64RS61U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAsf6VqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAsf6VqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD65C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 07:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780730673;
	bh=Wx0dFXLV/n35uFQwbXoonK54Vde2ljOItcwCbUaalYU=;
	h=To:Subject:From:Date:From;
	b=tAsf6VqOmyQ2VjiTwWqspbf+6IK+sWrUUuFvNXyBIueitlHbdgH5UAfE1d++kZz/e
	 xgRCOzIqHUXVfcxUk9zb3w8W/utxgphA+8pBoxaneBlOC4FOPyaCoMAJjxtUcRHvY5
	 mLaUz21+cnREPcp6+BDqeHZPLM0wYz9Uos7vUhxRkqjr+a5Gokk44xRg6iLXKk5+vT
	 yEczG+kBnChImTzVzBOL/nZxpPM8agKkO5OuokRbAFcZmtaL0KpYS27aThwzZ6CSsY
	 +FrrSa1dSHyX/i6cKRxqGsVzenQFmncSXribNlFxSqE+gRxOWcZOEjZIn9xVoh0uO7
	 fq442iSJlNsOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7AECD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 07:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178073067369.2095.4192807285758890602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e04770b2729d4fa71ba121a990ad80b5af2fe90a79e876a150aa1a9d406f404
Date: Sat, 06 Jun 2026 07:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780730673
