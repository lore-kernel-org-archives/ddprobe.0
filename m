Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530873DC4BC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791321034; cv=none; b=saFGq2kvXaOTEAyegmbuKG/nCcP2b+SJSAgxt3BPGh5qbVnpgP6tPLORhM93XSvCC6FNA4q1azpk+FfBN5iVU3NvYNbEAo9z1iQtDo7oyQ/SSO6NzY9ePQbxxd1UkGdTVPYCm3Es0ZAQImwkXLFrUj5+UMwzgFqtrCAv9WVv8mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791321034; c=relaxed/simple;
	bh=BwaGyxv42XOWIbtEF+SveapnHfomgj+cEXKPtLyhDxI=;
	h=To:Subject:From:Message-Id:Date; b=P4oZmhSDpQAXhD2jtJD/IZGWOKiWNCrr7kwrTyuZSYFFLNVsXlDyHv6C+vBUaa0BafxQtWiNHlETkMYo1aBlkZXKZIwaopNUBgzfUgdgvkAkAoVQWC+E0vXQs/rT330x/WWlEfMJqLiRt9VJ/S1ElRNV6BB0TWkUAArifkrEcsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSYzp815; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSYzp815"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5759C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791321033;
	bh=BwaGyxv42XOWIbtEF+SveapnHfomgj+cEXKPtLyhDxI=;
	h=To:Subject:From:Date:From;
	b=ZSYzp815QrQJ2bNOe1Wwm9KfEVQDvkBtLKsW6L0Het74T35n8NcKUlIaqrbeBqVWi
	 l83jD9AJtddL8z+IIIRzarcBM3t1YcNJofsZvj1P2616lumwAsaRvY1YusOE06jM5Q
	 06hz1l1iwj15jIF+3dpXkueGIPKlNwhL9mGNVZcuSQfTjzvLIYc6Zt857RMLbIDLSj
	 VvBURaMh8ruMOz/0J02T4y6MWUzTOenUuLGH+pDwT2NGbWuCTCSVIHAADDZJ3H96H9
	 El4OZSZlgxtZY60hTvxcKVRTuHywBYD1r3WeIIg42nnIUpDtfdcXNmxUaLKjizCQuc
	 t/cUzbt0ikoKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BEBCA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179132103371.20080.1475450892244390739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38e31acf9c03e9d09fe6e7a9881030ffbe1c42c933d135c9895f046f6daae82c
Date: Tue, 06 Oct 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791321033
