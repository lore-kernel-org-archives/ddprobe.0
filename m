Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC74231C96
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728126954; cv=none; b=LgfiSt4HqxB0w1v2jV8MRzVc8VssWUB1JZjrFBn7WvPm1YAD1NlU4bhui88zM8MBsSWJUm9He11EvYXMYdCB6QgNgsqFfi1w9PHOmHoIcW777FQXYnnSshDb990rbRtnesTpOtgcZR7GJGlWTFavTYnIbXfH/ckIPJ4CMSfVYKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728126954; c=relaxed/simple;
	bh=UgBv3l3zTkTFGxoEErKTqVQcdWlqSZsGNcBluzkOiSw=;
	h=To:Subject:From:Message-Id:Date; b=YYtQCmHGd9z0gIC0H7TFcDWlgK58uvCqLGuoahSuakTG8lJ0QzCGfPDKJD2qm6DVML7tQAyDCTq1mkwHCyO0Olh0bdwe66SYEVwk74R0wll4dyqUwQD4ZYPMJSt6O6AeFYq+XxJiC+IjLwWq3ZeX4HpJ9zmMLzJB2/mZbTNZ57s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxYNeXo6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxYNeXo6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F5CC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728126953;
	bh=UgBv3l3zTkTFGxoEErKTqVQcdWlqSZsGNcBluzkOiSw=;
	h=To:Subject:From:Date:From;
	b=dxYNeXo6mknvTBNIEqFwkICK61JTRkQmYQczc2Gy7SCa+YFh4S/ye2FeCuUR8wlPM
	 jW/Qv6VfxrpiGLKfOWIxgKub84YgMmnWHdSpLRWZy9MjwbVtJXwUfypiTfBDNHU1AA
	 H6e1dGVXmRhfT9bdk9Y+nsgQAXQuopwy2eniloYeurmg5aGboh7owHuQmrYbHX7LCh
	 CFLGHmHMQcZMhUQMWJG3Lxzv4adHEbCYsOxv1UaYl1fMr1UP+xUMY7Gfgj6mGSArJK
	 fP5k3XO0MPgY6owoOrA111qrdr+RhVOzjTG756U/u4ZS3i6OW6nCuVQPyIrkohe1T9
	 w75WDrOukJ45A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BABCF8862
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172812695358.27657.16898762569990717472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab152dd3e984df3cfeaf4c6cf8c78b44f31f67a8a670e5a59c0e2fba8164f939
Date: Sat, 05 Oct 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728126953
