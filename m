Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8A11E9915
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766257434; cv=none; b=dLp3fPtQP9P2jQAbm4jZiXs+/xwIeC7tYCKULvCDuYwY6jA6i8kX61PV2F2WhGbIRdolelvy6fX9+O6tqMQ4xJGHm54DZbGSG7ABjlP+XJJpOtifWHtT0veDbM8QexfguPrE6n7QD95/Zlvw+Tbzxqt9P0GafwRQe3b63glrhRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766257434; c=relaxed/simple;
	bh=9HlQbaGYqsD5Mad6wJ1dQUzcVzVK41BIaa3rghtflQg=;
	h=To:Subject:From:Message-Id:Date; b=o4iBzOlXnpt+4FzZGHzRGey7uhGAqT8sDM7bfL/NiNptve6ueS/Ed7Cd7Qr8nj/uUWKiNtj4CY25anqe7SGVW9YckzER7H0o9prnxf3aAMJqJaCVY7hgQ2+o7vt1wa0PpFdIi/BNmP5QnoE8RzfqsoiM9nytz3yTSDcPDMPb2cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LD5ndDDc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LD5ndDDc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DB3C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766257433;
	bh=9HlQbaGYqsD5Mad6wJ1dQUzcVzVK41BIaa3rghtflQg=;
	h=To:Subject:From:Date:From;
	b=LD5ndDDc4wumeoIva120RibL8UXIzqfeGbLqMNWQuV3OpVlIR4/lPZeGHz5fx6UEU
	 MTZRyPxMER+KG/3hwy8Fx6tRx6lY/iv13wl/nW3peFenH/6/4TMBhasaQzwTavecur
	 vtgj3OYMVGq177nrUC12QGHKFSNE1tvW7uxeeFs9ZWp25MyyfTsgLqCl8YY33b++HK
	 yzUCTwhYbZaKo3qz7SkO4k9QmCTb2HNY/5EXbgkZ0RYgTQ5l9N2smRYwQmY2KQRZTb
	 uD/SpQsTb/vMWSww/MqWMdwuskE6xhUC6G94HQROnQOeUwa1RubShZVvgLuxCg+Vdl
	 RD14lIWZyamOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BCCE67480
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176625743358.26200.210146838810328673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f168b591ddca7bfde569a3339e41a44b20ce5f1a381388982613be7c679e69fd
Date: Sat, 20 Dec 2025 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766257433
