Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F579F9EC
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754858994; cv=none; b=DNES3Fx37OXtKdpaHOCf+2MiViiJ4OUIaeth6MXX45NoH6mqJwOaE9F3CDnAHzij6eXXoOX0eDVMHivZVbXqPhNHOYhagYjMG80HvSO+0hXBF/yNv3gGPL/LzWJ4ausaum+87qULP/DIXoIJ0wZbFclJwsi0aZz7QNjlH2KNBxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754858994; c=relaxed/simple;
	bh=9PPN9CdmNyVecmkc5etU7UWr5adecfa6Trh4EU/Osc8=;
	h=To:Subject:From:Message-Id:Date; b=kJSFDYsQ414jxFAiIvAxWFv1IZR6AjulIHip6nXGYePOPYuPx+rcopG7z52bXA/xGsFwa7e4OU7RpIiQlaqDGjDQoK2rhYGK3RwSfwLbRy8X/Yq0PwPmI77iFZfgCYYB3UbFx0zGf04j+tlQx2TMFFH49ZM0FrqOtmRhuuiq8So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hx+UUuro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hx+UUuro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A679FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754858993;
	bh=9PPN9CdmNyVecmkc5etU7UWr5adecfa6Trh4EU/Osc8=;
	h=To:Subject:From:Date:From;
	b=Hx+UUuroC9JyP4nxMrftUOqNIFe5PVDCGA+IH/taasaYAYy4nI1uqZVS4SNbMQVii
	 9iRit+sYGFU4zdY33rE6jbuibgUI0B2ceHDR1Yj1jG+Fz8zUoMgmjFqRmqsktuYj17
	 eC+obBbDBoirYAFUVyWRa9ju/e3TZ6zvfLqgCx40QLDz3D2wpY16Zifj0/Mw7gSWse
	 jvwteu+87rybz1vnBwSRALHPtTQmgyHzfYQv8rH+tjx0VZeFt2sJkEtnKsRf6Lb/SX
	 pnlJY01B7ten9lju/Z9MZruJRLtdXdrA+2XtfTz9Fb77c+1y4xgLYHYTXeh4uoo4f7
	 I6prt/283OXSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D4EC87FDA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175485899357.20509.6698691685108687386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2f89cd01eaad7a2123ae077693b21948dbeb34e1c31edaf84cdbc3e456d8dff
Date: Sun, 10 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754858993
