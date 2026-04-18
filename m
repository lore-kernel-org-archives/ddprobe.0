Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BDF1C84BC
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776539254; cv=none; b=P8uVNzKE72rLc0TxyJc3l/xqTvw1jQrp8txdwdelZUsKDBw4LG9FfxbNZ45gfV6in0Jj0ljJzaxbmAUaxPsORrM8qG97PAHy/YRvBjbparFELpl2TuLlkz9Ti8OuYPRuoHjbDXmV8CW05Xun+YHr+OcH3pKAgtUO5NFltviF8zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776539254; c=relaxed/simple;
	bh=xQfIlgKR45pQLd+uN/5L5XbcP+GdCzBWJ4YudxWU424=;
	h=To:Subject:From:Message-Id:Date; b=bFn7RrW0qDPS3pJHU4RFAncZN4d3HNPmnkfC8iYeQVm0O0DEhcDQ5coY2f0hCNMK4iXQRnsprlPNnG8iQRteoddDiS85n6TaU0npjgtTxtL3EVwOPJOzMPVo1619KO4fEh40ZQJ+5x4BxTPMVz4VkBpR7J7HwNGpcoXcjrTfPnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ax7Z9iSM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ax7Z9iSM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C6BC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776539253;
	bh=xQfIlgKR45pQLd+uN/5L5XbcP+GdCzBWJ4YudxWU424=;
	h=To:Subject:From:Date:From;
	b=Ax7Z9iSMhN13Wttf9rNN9c3DHfp+G8AOwcempd072s2ZmvgO1C/Y5aIJlArSCiIyM
	 DIuuwkkaGrdWsNQHOH5gg7KKxu1lrZYgg6g4Xk4Li1ZH0aL6MqlWYuaqHJbLBrRt3I
	 vGoQbS55WofdLWGDAOnwPQ1tAnkNLCo89V3n4XAyUcgYySyqOdJwo4GjdJWMzpy1sd
	 KxcEA6zlmWfAi8ewxtKrKE5ypIFliKvgLmUW+obQv1jqRXZh5Ejio36xrb17+3sulR
	 W7+Z6yq7vi8Y01Hc4j0kG//0h35HrchMMhS3GA+1lmHL/Iibx9GqtUwatsroi9omDV
	 aCRH+32I2iDLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCD7F99C81
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177653925368.14967.5729800239472935148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c9d4b34ee4dddb5ea21d6513d26fccf27bbfab512c9234c881a4652f982b9f
Date: Sat, 18 Apr 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776539253
