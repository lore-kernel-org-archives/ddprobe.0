Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A826BFCE
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 03:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764474174; cv=none; b=nl+ig+WidjxsTwG8eEMPsv3NE5UC4evmTBd3OOXj0xDrc+CAjqR4EbUzL/BCwfFaptkLXTByHofd5xRP0nz0UC3SMAL30s2httKG3xNmHOAWnw0BXFZf7682BKzMWm0RqEFPtD/a4HJTlTyN+syc6z59E7LJENjzgq32XPN71ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764474174; c=relaxed/simple;
	bh=x7OmKxc6HTFt+I80/ETP6nRxzbTY+9caJIwNigPmV0k=;
	h=To:Subject:From:Message-Id:Date; b=bAchCd9eu+rX63z4AU5PGgwok5K61BD3cFDhJQwMwnVQFHmFnbpYnuaaDZLa73e2HREgdI0OIyIBHYRvdF4IcWxHgQBw9ExJJGATmW9csofle3YFmfc8hlREDz6z8u42THMVGgSju1zO7zyf6bLuejqeWONNEV+m0ggq7ovY3tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXwG77UW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXwG77UW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35B7C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 03:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764474173;
	bh=x7OmKxc6HTFt+I80/ETP6nRxzbTY+9caJIwNigPmV0k=;
	h=To:Subject:From:Date:From;
	b=HXwG77UWGGhxZt42t8SErEDt2jIRONrC5b3wTpFVBq6AfEW3C+dH0xkhYc64qnmD8
	 nevPTIX4Vo9qV+LM1qj4Is79saC8myh9X1cJUhlLMEQJg113Y0HZFdsh0qWxbGxpvx
	 rrwmwXR4eIa0FyQ+5ipyA3odGn415kTyVkvwdIGXhiUYoKibSVkVPDEQk8cpJ7PJW0
	 Y3thCuemIJHdMgIS41Fl67MES2+pry1ETNlRQVVRk0KttJ1GEe2ONyPprIOkZ0EjL/
	 FeaHwfL+u4T/OYhaBYlErLhs92iwaSX74+2dDJ7TvfCkg542eVscHFKVmld+tVnFkP
	 imawr0S85Ez/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A77CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 03:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176447417359.30067.4656674909871375883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4a49be6a623e19e391dd145f0d933745c66e51b4dfc067cfa7b4f0935054c08
Date: Sun, 30 Nov 2025 03:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764474173
