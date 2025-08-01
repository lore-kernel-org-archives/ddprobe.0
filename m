Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1643D35947
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754030394; cv=none; b=MPfaHJITjzdbG0jcJ38JxmqhGDc3MfGSXdwsq7/ZBQI7HF/Dw0vz35ASlaWlkChYlh4Lua9U0+C/js5rzszXi29Yt8Aty83z7UPQmSydTaj+yFxtZB+M5n/PUBwTRr0WOd4vPvu0jw1XRSnYt7YM8iaN+I9SHdcRawmrhSWbvLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754030394; c=relaxed/simple;
	bh=HJZ5KIP5lLlENBPNbsdlEn/OFQQJQruGw28A/QpYELk=;
	h=To:Subject:From:Message-Id:Date; b=iQqBSa/kBMuq2wKA+alrsQsjxtqLmymDM+9JtRDmaq/6QTpB4ZpJ32fzESe1ww1Yh6LJThojc544skPeHadCIh7la/OJrBnWUGMb2YFcyLVhIlaWhvgOTthn+QbJlyyvQk9XQ+3Qor9OHGt+KWzhEWJtRoLJW/OCWJHb7VaLeN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxZcJBxt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxZcJBxt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CA9C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754030393;
	bh=HJZ5KIP5lLlENBPNbsdlEn/OFQQJQruGw28A/QpYELk=;
	h=To:Subject:From:Date:From;
	b=jxZcJBxteq038VGda11BNS2QrtDcsOHcldnz4rcoTugvJTyfdG1xQdN61P/DAOP6u
	 INkc64z0qkAmjiDikb3UiRo5XzcLQcRi08eXG6+Gx2AENATRnlY47Ugmtyfet92nOX
	 It4R9qZ69GKLedRGYfW0AKe/UT0CLjAoyIiREttNA47Jkikr7qZJ09aWuOmKHaiYHc
	 +upBygvmUicVbb8VXTxwDw0u3kLVcOrCnu+l7Jau28MHlbEGAXhZHjsP7tMaRwx1uo
	 TiS9+RbAz6crFjGvFkFzyRCQeFhxaH088C/W4DmoyRg06VQX0a4VRe2BoGmd9jAmx8
	 PLRXJWwFgvieQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93602C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175403039358.21732.4384089360727481991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2534f1ad5355d788dd05268afb5526d7fbce9362bf1cd07bdc8cfa64d6499e8d
Date: Fri, 01 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754030393
