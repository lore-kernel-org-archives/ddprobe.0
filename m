Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AC043AAB
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722236754; cv=none; b=tbhy+CHjQ2LAhq3F9rnnFekwMhnKJaIBBqE4qCLJkYuGL/A72JkFaoFx5C8rxfpQyo1/D4JWVCOs+edJI8eOWSGLDD6I2y3pLOGMmGL8P+4musOZ/X/VAXxunWtXCKexlmu6Bv5tQWtfGoAnki/ISA6vBrsWmSqKv2YhU3bOc6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722236754; c=relaxed/simple;
	bh=zmDpYhhM95Ra+xWZ0wLI1byCiwBGphWq9SFtv2VOh20=;
	h=To:Subject:From:Message-Id:Date; b=kdU9kXy2NPkZ0DwKYUq2KVxSFUMqhOZpRIzeA/8dBRCn6nvKF4eOheuZC/imWJ5SdtYwoVs12JyjOEbaEHPUybbIkUZKiuYQHjREgI4NhFZIzMV2znEJcQ3Rflm4ypLSGFRHBbCZMrleEX6Kf3P1QA2RiHzyQ3MM+WWYaTngC/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gu62kxk/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gu62kxk/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A829AC32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722236753;
	bh=zmDpYhhM95Ra+xWZ0wLI1byCiwBGphWq9SFtv2VOh20=;
	h=To:Subject:From:Date:From;
	b=Gu62kxk/W9lxcBZW5dBCgVufMUXxejIHz0kZ0RFEE6iRUtGxFFIzMrhIr44Wfs72O
	 tzSZR97lmLmrQmiRzvQGIx5URibCzguM1m21evNHoipOH0X0cYZmh4hcrIkRQ1+UKn
	 6ulf4S0xO8KPTTia5ubdMoT4Xa5BAJxkt99S6gS+MnBmaOTUBBmZeLp4lJEEK6K5j+
	 A0XIAYbzbb5k3gBFPtt9Fi5bDWN8WwvcuUohF34VZ2Il+V11xNjhKR82uKlCE2u4xE
	 ERNVSCP0lQV4HebH/IgXVCYAIKYToP/D20L9dU2vpSiCXKYWOHxzjrRS6fkkp9yTZK
	 FyrfV2yEXLDQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943B7C3DA61
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172223675359.8999.3391775596674333224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d95cc9436569233f16de17ce37cffa4f23528f9c1e2e798cdf68245fc9794c5
Date: Mon, 29 Jul 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722236753
