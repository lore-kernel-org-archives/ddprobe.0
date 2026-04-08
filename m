Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CB0379EC6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 08:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775637334; cv=none; b=lF0B984uyNl8z6aQetnmb0N1QF+4H5m969e6JWAjcf2heGYo9p+l0So7aAtHvsmurBiwrIDwE/W//Adp76SnZTvZ9mhgW97ZnHPGC6s5d7lqy/aJ0mOsZybwkK+xDmpgWbhclFrlv2ynMPjEfLzmEiz2l8r0Skpa2vGbD4s8868=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775637334; c=relaxed/simple;
	bh=LE0RounVn7ouhcKi8EEQA6/YYqTtBQGAkTAYpDxc5p0=;
	h=To:Subject:From:Message-Id:Date; b=Qd9X8AsEamsHGLCsvGH6wdPKRQt3BFxv+ZYP8/V34ab4z5xObXSFZC2uZDbtco5gO3nKKznsmdd4OrHoqxrcsn5xOJO4aoOQkFjpLCv8/v/Bw4pjW4Vk6OtHXOAxT8VUfUPmps+GNl4cnUkJnCvMbdWijdEJV7HlWuL8ggXIhy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eB6FN6LK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eB6FN6LK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA49CC19425
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 08:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775637333;
	bh=LE0RounVn7ouhcKi8EEQA6/YYqTtBQGAkTAYpDxc5p0=;
	h=To:Subject:From:Date:From;
	b=eB6FN6LKUnz0beb1/THTc9pFxRF+1pv9WOKYKPxFI39Gv4HkaAAM/vIE+scqQWDfK
	 YANUic3attj20BMgIMvuMLSNcozASiusqK2JfIhz8afiKDP2SR7fNxCdk2HWjf9F6X
	 QwuFgJ5yRkCWOUN2SCkLXuiuEvd7R3LRMcKx0B+zt9TAQW1nyysM8jhvQbv1lx4ybL
	 qbYnAQdOV2YUoq/pFQt0n/HjnYoDEwvarluiLVakQYPPzHngRrT5d+YxyOqMUiP7xZ
	 hMreMlhnony8BXcf3qkdslwzRQxhGELS+jlSgEo2qtDgcAi4Of/KPDxQaWBvY5PILt
	 htCz3avCSPP7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48BDFD5F97
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 08:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177563733372.4547.11697296727987528114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c046bb9abb151ae4b2c07dd6066e56d31b3a97a68409ea5e89ca64a262bbd506
Date: Wed, 08 Apr 2026 08:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775637333
