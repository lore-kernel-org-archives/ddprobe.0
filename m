Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBAE32D44F
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769046234; cv=none; b=fgldKQreahfxEROVVXP5Lz7koNBoXtYZPxwPKi8dcMwdq9ZsL2ZArGImXn0I+mcvLj/9ctgddWz5b9B0kMzmiIIdiQ+sRlTZIds3+fqK/R82/EukqxizRUy6EiOTLOlSu26ZfdxrdPL7BE2H5DNfJVMJcG0YN2izMb8F4sENdgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769046234; c=relaxed/simple;
	bh=es3HiO0JszbrlCsZElH63g9OrfRTlgRJVV8v4Twjgq0=;
	h=To:Subject:From:Message-Id:Date; b=TXVaRcZkr8kc6edfTiBndUHDGiWtl6DHHyayGkCy291xEA6dyZHM8nO7B4AdgGI3qtTitxTzpenkbJWoGwNsrn2uETEjAHRcqO6C7/c1fiJMZoO1WCv5eA4CpENOu39C6F+vL/l1Oz81rQsVRsyRloM1FpBMNyZrueFfchu9TUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgPGZ5fh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgPGZ5fh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0041C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769046233;
	bh=es3HiO0JszbrlCsZElH63g9OrfRTlgRJVV8v4Twjgq0=;
	h=To:Subject:From:Date:From;
	b=AgPGZ5fhBmiBDTOaxcWMVVhN2Y/FiaIfmLqSvl2y96isy6TIFNeMqyQbTVIUiiAcu
	 Xc1Oks3PtFlbYwFqQJzJxwrj6F+ct1sMXJ5MHduT0uLU+fZ/Ob4GrboL0J6OwkbX5b
	 jqwI6x9cnACiCdRQuCi17JU8J1JybocSFsvf/fRJJm2u2VfaP4khDGIUk7MJ/FACGo
	 D1tkGwS4yQjxqPQ+KX+ZgZKYw3qVDg8iI6sWTcSUIZiS20Pdc6kM3fk6r4VEaZoSRB
	 MQu/05q+nmK6tQ2JG+EAB0hXElRR3vY9jcFjCJmzalM8xR4DV47VPBOnXQe39JaITB
	 W4D3mCr1pwl9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9016CD2ED10
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176904623358.7219.7173644136125702962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c858a8197f9486ccc9b61b492deea516bce3a282a7e85bee2268d623882670f7
Date: Thu, 22 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769046233
