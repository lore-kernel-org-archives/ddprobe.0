Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4339B42070
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735299954; cv=none; b=KfcRFf4Va1kN6D/Id5zzRondHvnkazJX363CesLS22jHu1MUlLmtLljKBgxZK8mfwbkF458Gs6+A0vsG08YYx4tNK6zivr+HstXAnGP//fE0BVJ0s4KtnRptXBJzwxhnld+V2y/jQMM40HzBwJlDBTUmIsgLl+cbYyjUStsM75A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735299954; c=relaxed/simple;
	bh=T5XSji53370mcyT8K9u+OOv+ZCETCCjbG84PJRvqPis=;
	h=To:Subject:From:Message-Id:Date; b=eYlqvtrHvPFmuFVNibhIO4E+ybOZp+6smMZfxlzAS3Dx2T+IWqjHf0w1CpuFDeb6eOo/QEBWqaNAxDCTLHl6jx9AKbhjXrirBg/NnAUlcpeuL1vrpxItWIPOTQD8j3NrtGyWgYDp96iS+5B988/wot9wHyYTkHRi3CfYZFCUIWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVK6Syub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVK6Syub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD827C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735299953;
	bh=T5XSji53370mcyT8K9u+OOv+ZCETCCjbG84PJRvqPis=;
	h=To:Subject:From:Date:From;
	b=IVK6SyubDLrQQGpAT0xq7ueTM9Dok9a3LVdX/KiSPdtzYXhbSsQyfiqvZd9PEotRN
	 OBHRHilzJO67NaRs0PJ9hKf/PWPpYejx66Vn2mvilM8jQ+gB3P0V1MxVsifny3FN29
	 Gj5KGqKFaBeUFH382NQxPqbFTjZWmcWbGzC88bDucYZlM+mrQbeHXvIl4CdIGMoEb3
	 gwM4u8AWJDr8/d6CS7miR7flInsYfXYGQ56dLbZtG/2ZBQEoUPt0KbUFQ+4jk0+lUt
	 9R7PFklbauzbj+lM8XMvh/65vMyTTQn730lSi8LtuIa2QWZESLA5LyIQtjojQ0sV4u
	 N2jNmIEEbfrKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9826AE7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173529995361.14302.4709226417801814338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa919a0ea2ecdc0799827ffbc6cf89765598de35953b75d52628413b919a36c3
Date: Fri, 27 Dec 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735299953
