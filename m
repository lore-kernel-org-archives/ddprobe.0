Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A021EACE
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756673395; cv=none; b=T4LF5+tg5kGuqPia/4cX5CH0fVh29uQT94gafxnPJ6rEzeAIPIJZAlebU2thrgQcRUA7SVwJxh8f6J9PCuhBMMLjlkTY5I+5GgoFf3Vwkl/okFmkh0s7EqKBhFKljGw/QeIRp6R5u+XPHv6gTgsIjXrlYQ02tMvI/MeJCcrrWfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756673395; c=relaxed/simple;
	bh=5xUDSZ1+bugpdQXkaPLWvytJWHOY2bdOzwbwVsfdZNo=;
	h=To:Subject:From:Message-Id:Date; b=ACuoeTLmNMyxOg/ebEFk+kPP26R06ItVShRBxYyykxEjLYpE7AZ3Sg/yYanP7zOzMr0OB4g65jTcaeScyuoFsgHyVq5e5Ej7wQQbe0HL/1veKCk5BNreUpLyJNjD7wkBMbXV38NJyNAaw6RoUicTnqMxDWOLXCeDSpg0WnNZuas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOIuXlx8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOIuXlx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FF4C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756673393;
	bh=5xUDSZ1+bugpdQXkaPLWvytJWHOY2bdOzwbwVsfdZNo=;
	h=To:Subject:From:Date:From;
	b=ZOIuXlx8ithbj0zHwL0oyc3QfvfZGn3o4LjflQ6DC8b+TlLVAz+SGq+xBmEwL9zac
	 nDUXTkAzDTpZONyhSU0GE2wWcMINRl8pGWlfweqf8qvX/Oo0TGNlRgFpWHPf6Wx46U
	 AbaXnv9RUcNAVM/7XemIrS07kD9nfXyTTlhEjmpnxg3DK7B2RUwLTSAdTZuql8XrNq
	 SXK6pY8dnza0VUbfJBtp3OF7OEsJp7RBI9ClgEsom9GuRlSPPSJM/z7Ui7hjpv9ci5
	 tlHmj9UgX1lMFVnMtbkMkkyBWUDupfPU6c1JOdJMGwbCV1qX3sR85RxQ8bWdnxXi0a
	 KdCJDIy3rSfCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D55CA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175667339357.28041.965516145032517829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25f9b215b180661dc8b2d7265ea9adbcaa346883bff03ebdff96955a21f0d3b5
Date: Sun, 31 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756673393
