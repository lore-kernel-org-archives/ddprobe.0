Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9E53E2ABF
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 14:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780411474; cv=none; b=icu83PyuaD5yogD8ZXGPO0SrjZZgeiZaJLnheO121HbPOznh16jbUS8g6WhtYDGQvAS1sp/9xJ6wwhcohfsWXtANQs5ZRNPa3PzI/dOMJL6TI1B3vGDaEmZ7hPIGyirA2XHPwuM7kX570UlgiN1B3uu1dzsz0UKvQF3fYX6cnDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780411474; c=relaxed/simple;
	bh=/LfZ/BGbvJZ+CfhK4fCvdNVz8V9idUb8ErPoZtJP1U0=;
	h=To:Subject:From:Message-Id:Date; b=Sjfdn201jH3F157O0dhWYl+mF5SxlTkv5I+H9bNM4S68MFwB/4NKtEWT3A2621cwDIL0qZd5Y7Iksd5UJBR1jyVJ390GPT0yqYgrI2KZpEtJOcsYIMgE7KlqZV1Sk6oIHK81NDCQjABDSLAT4nNsoKKv66EDWFd6q3TGRcEA3kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgsipDSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgsipDSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28F7C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 14:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780411473;
	bh=/LfZ/BGbvJZ+CfhK4fCvdNVz8V9idUb8ErPoZtJP1U0=;
	h=To:Subject:From:Date:From;
	b=BgsipDSHRrXPx/8aszwXzyYEf58+MLwr//DRhZdz0/xBCEWX9T5X2srm6gZDl65Zr
	 dsbKCa/4XbG4eifj6HZIPoQEsY8Ox4kz3eiIYYLMjEHLt0bcQkdZLzXwSWGxfrhafy
	 wGl6vmJH/cv3cEqh1n/h9c/sXlmpyaS7f3XSdIOAgCQo/cAnNqgDw+1y51wS1/Y5ge
	 npYCSVb/xoYLJmSlMzRhdeozbls6seTxN4DCYm1l9MqpXtRZNRkSMtIgnaXocdx8UI
	 d8eTnw+E5jPi9agLt1MyLRG3kTYY05jE6TI6rCgudT6UXhXxwSlLGtF/MsTdMrW0wS
	 bQOBnIFPHD5jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9139CD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 14:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178041147368.25336.4081691203785351963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 135bfa6662c44c75201940495ad8749866538266f539d4d644e9ed1d01e90e5d
Date: Tue, 02 Jun 2026 14:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780411473
