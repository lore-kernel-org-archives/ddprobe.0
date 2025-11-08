Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D3C34D382
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762565994; cv=none; b=n8pl2xBVWhvflE+Sue4TUQZAuP3gdo0qA2N/gHv8rl6RO9IxyO6mcScICwOTRdmRoH2FUswSnrDbUYWP6gXJmH5vmhYdqGMDK02BApDDZOO/RUKp7kmMCeqoW8tAwc4n9Lzr/obvZP31UOmgjtSsKF2zjq98nLp8DVna3fdafeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762565994; c=relaxed/simple;
	bh=n8c8evyRPO31N+GpkrYPyYmoxGZ9aD9xjGE9jk7hYpU=;
	h=To:Subject:From:Message-Id:Date; b=jju/QwLMikCI7LKk8dSPibsaa0eYeI/rYAO5+N+Ba9TEDuGPIIZ6n6aUEO63Nm2tt9tlgLmwluRuD1rzgoRhCvBIyBi3R64wCINMc5sZz5RW9WVYZBz24Qitb+V2zRF3MwzA7zaAM0eX9Mw71fj8QRGBMClja9mjs/N0a8ChExg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGJr38SJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGJr38SJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A79C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762565993;
	bh=n8c8evyRPO31N+GpkrYPyYmoxGZ9aD9xjGE9jk7hYpU=;
	h=To:Subject:From:Date:From;
	b=AGJr38SJHSB9TEH3e/sgCKi6FTsl/rnZJvPd6M35i+tOCOB0fnD0aoonAYgx4KCJC
	 Y3p3d1jxrOl1Wh494+WeOIHyh+WLYB5A73o2SBnNaiumfbfVDS7Qp/HQIN6+O2/DHx
	 aWcgNK4Rw99xNdqPuXi6PUGjiUWI5+QX7HTn98wm+7lBjLEt4VCLs7ikxz73epWMtS
	 o5XkkNoISY9R6/6njjQ8GYJBPYE2UjSdjy0krMd93y9orO4s6OzeQrBsjB8uK87GYE
	 72WMDaSUrolqHjk3Fkb9T60ZelbcpYdtx4IIhW4H9OoQpSn0Sy7TVY4Vjy3Wlv8BrV
	 xsmQfmU/zPaTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF21CCF9E3
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176256599360.22610.744307928110908393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 575c5aacf617e8931fd8c76967db1518ae42a9c74ed1248cc34eb4b17aedca24
Date: Sat, 08 Nov 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762565993
