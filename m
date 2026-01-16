Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044B2301004
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768600434; cv=none; b=gSa9C49pPLIXtWsG62cbU+73BLD9LvtfIPdb2UeJTDnzEyNFQ+/scHhjGhAbhnecSUXwyD30xhq3t4TYBtflLHx4n4mA9MyKrCUl6e765Ll3v8DLl0xSLRvEm83vUyyXh/9GABF4PD4GTotUJTTYwJE7lJcMpD1TQJZJwqggbh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768600434; c=relaxed/simple;
	bh=y0C5BrRke31FPX4LrGTiO327YsIBFkZNL31Uvpimjeg=;
	h=To:Subject:From:Message-Id:Date; b=Oiii7xSoFvDTcCPuWpRhyI6wsMS7RLS0mALpZAjXBYPvlEFNUnldHfav32BJZJIiXMoUDJPvuMd6vDdrItjNg384GJejebXuiJQ5HYQ6bbFD9zDBgtXaqs7JZHDofsNObg2eYraEUo26u4HwohFHWq1/7cImP5Pqh5NrW0ghu0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKU6iOCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKU6iOCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31B8C19422
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768600433;
	bh=y0C5BrRke31FPX4LrGTiO327YsIBFkZNL31Uvpimjeg=;
	h=To:Subject:From:Date:From;
	b=JKU6iOCZln7WV04P3UU4k1w5WDwHQsMqYKI0ZFmT+3PSblItCUDFgt5lJeCnNiZUf
	 M+3bcJKIZoUt7mUvpBrd1PO0KUzBhKtIWBiJR7DYi/ta03ucWWLpu73PlvJrW60NSk
	 +NAnrBBY5S48ekU0gQogS0k/wVs52C9zjCeJlnlZOF5zGA8CzDEkTTCtezkuBH1Ti4
	 TAN77aVaKng3S+YBEJejWsTP9iLsZa9EkbpNixOtHNfhEkGgCmLNuTPPeYrG/JmcWd
	 3pFm8njlniMZ30zyIyh8jYOzOYZ9fCWLR9BT2n0TpaBUel22FSJhzSWIXJallL/gXS
	 ucClQYJRLbgWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95238C98305
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176860043357.8272.16694620785021025713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d35019e0ad1439d42b2021ae0f1ac2d3cb50afb824a8dd7eadf95958fa458e0f
Date: Fri, 16 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768600433
