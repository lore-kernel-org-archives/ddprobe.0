Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092EC221578
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769193234; cv=none; b=gcLg8ANroSffpYyBqeWg9mEaFCreEFZtfrLusKnlIcxkm9JKhxkKpox7aszQfkB7SnVcs0e19OdajVLOiJUPla8pnlnDPlvNb7AvELuuWdDQRenKuRfeWs2AS8zH8BppcGJ1DPfXMbQsA4I64B9vpMNY4bG9IOa1tdTVUMvPgvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769193234; c=relaxed/simple;
	bh=p2xyUtdpysEM8aciQAMW3BMiACANfyalttD2zjCjsqU=;
	h=To:Subject:From:Message-Id:Date; b=H+5x3OwrWJTatW/37pXa69huqcIUBq8yUvstPYYo0388tgwxTaQ40hjGT6u6kVCgAJQ26QfXftCY5Ck7IiiiA+JUdEeFUIclLmypjmiTTYUDCnZIitH1d0CBP4M4hJRRLqGyILQhqoQgtvdtWmGe+ROBMOpLdnqCMGufTw6BG+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4NnTa9p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4NnTa9p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93B9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769193233;
	bh=p2xyUtdpysEM8aciQAMW3BMiACANfyalttD2zjCjsqU=;
	h=To:Subject:From:Date:From;
	b=F4NnTa9pm2el9Uecx40LNyjr5E0OHWFuEtegKXoRNCgekloO6MprE7l4C7N4FxFHp
	 0FKH/2k3zHNfgSETLp2rrcFa1sWTW+J/2gq9VZtJmAl4Mcy5jITyaV9FUDRq5trB27
	 Xfrd9XkSVPVKUZstnraXQlT0FTUY+b0SCp3biBelcaF2ixieigyXphjlIFXM7Aadow
	 d0BwReS/DCyxl23FeBVgM+RO++FlyG8HTbURR3iyKitD0JtAycXymCaq2VLsyzqceh
	 FrmBhqOkLdgVvKcF9oMxsYQePrglPe8Q4474UCmZShxFbqNF/EwyxFAXZ0M7YmcNOD
	 LeC/ROk0Sq88w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93221D778AE
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176919323359.6116.16897876060425688621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd89adf363eaea8330361bd3dbd791e416369fb90148474364fa60dc9680a59
Date: Fri, 23 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769193233
