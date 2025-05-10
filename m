Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3926D4B1E57
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746891594; cv=none; b=RUu+df7jIfO5V3xUYkqmMLEM2Z//MBFYHZmoioju1R4z2M8PIqqk29hNiipO7Ed8TNCdoUkaoTWKyrNdEgzcRYgPBtWKICMGGmm/Vvc1GB7S6wL9Mvy7BNoEEwmHljEHMa4n69yAZFw0VwQ/mR9W2MzGbsFVQZEbvBEZlaEDTOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746891594; c=relaxed/simple;
	bh=Vw0wWvjtiySOthDuwoKdk6OhoiY20dIwqpH0PpcTPeA=;
	h=To:Subject:From:Message-Id:Date; b=tXKV/3yooTdSlolCsUgvlrY+x8lKGtIw17qYfMI9vWVCv5rD/SSQeis8IKBMSd//wt6rr7WY9LM6sZBW67IOnJtgG5QWbso+HH17+OH4eZU07SkL10BOtYH62RiNoKzdWirYBt2qIkN7diPqsPf+aXC9rnHZWnU8Cf+6JZ/7TN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdpcYZ+K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdpcYZ+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74ADC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746891593;
	bh=Vw0wWvjtiySOthDuwoKdk6OhoiY20dIwqpH0PpcTPeA=;
	h=To:Subject:From:Date:From;
	b=TdpcYZ+KcT7yfUO7zO35KRXsImJ84Z3wwPIUjBjcB5MJ3cR5eyjXMik0N0l+pHoUM
	 NJNfnOJGa64FQEPHAeFi4r3O4XVIyWxg9PqTLXrXZHVhnuXs4pcGf5AMeqk/0HDPKq
	 KI5LoVdFr9y5Ep7F3ic9rtRGPtEVjHnM2UPJeffxQlZWP/QQUk2ArqXwMIfIzEZz+E
	 MVifEXeCziELqqEz3I/PXVcWhJIRaSKvOtKO618wCc7B16GcG5akCm3X2d69SdiTGH
	 QGdw/HDwtAPOzxWlSvWV/BYSb4zhqvAiCH0Q41LGNkm0x4XDgHF+yuwgtM8SVN3ykq
	 z/wO7nWUWP2ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938F5C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174689159359.18363.3320016300614073182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdc2cf5a37b361a3a2ee14bf4e44b42bc846b7f6043ce1af50b88846c2d2e994
Date: Sat, 10 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746891593
