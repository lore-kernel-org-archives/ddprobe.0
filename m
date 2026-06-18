Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57843768EA
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 19:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781811994; cv=none; b=RSUuBrqNDN+Ca1N4EEjAIZVUvJ+4F0Sk3BanHm7QBfzIlO6D+yEDT6FVmvMXbTccWXmpJW5a3jIC9Yb6CpsE7PEw2inRBrrBDkz5q8Wm0pGZRJooXMZ59mzQ9tPK4/oeTfnYiBnepbrb2G1oC055i2iakXugVn0FgixShVfrOi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781811994; c=relaxed/simple;
	bh=FnDFH1j6v2eYeJYppKbgOJa4NmMihjbNmxq/eFRRP4E=;
	h=To:Subject:From:Message-Id:Date; b=Ykcimwh2BoekL5DxKb2vBsxLbBfVLQta4ddXeXcvzVyHBKbD4PlxhPuE+L3WSkjhwaYx5NT79VkslCl5OfhnLGc+EN1s6CYKjtg1/ONP34sASqkaYK9P5In+X3Fb470hJpR04dR+5cve6mLSr7ihcaqIRgvsUOmT0AAb8qpEFUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5rBRGcA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5rBRGcA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBBE8C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 19:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781811993;
	bh=FnDFH1j6v2eYeJYppKbgOJa4NmMihjbNmxq/eFRRP4E=;
	h=To:Subject:From:Date:From;
	b=D5rBRGcAiIGDBhqI6yv7yfa5dNWUQGPlqeYy3s5kTfsPqgyp0vC85MMmxcrYpHmeZ
	 H5cceEllFfGfsXloj+GA0m8FUffczQPbOz56LgJp9RDK3p8OsQaowgUIE2M6p4PM/c
	 Q3zNmRuxpKl3IEe1946FbRFILz86CN8GBcAV5ufdFjKBqzA3L/+zUIA4wtne6eAKG3
	 yVGsYx9weiR+pr4EOud8Cb1GFywaluT5gDiX1KDpkSJfjxd3+J8M5eKEXuxSFEkbVd
	 +ebmiwzcB1ulsg7s87IKiphDpImIjifxxm+k7kYaR12ERdbqu1EtQRqihreZ0NEfQJ
	 layPiSFoiu+og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B060BCD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 19:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178181199371.31235.10230289476814004174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2591bcb9f97884b74d54bc681c3a12a6c0b7b39c56cda1aa292aeea15a23606
Date: Thu, 18 Jun 2026 19:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781811993
