Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19822C144
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707239297; cv=none; b=tVCV6wfNh760BWjW7+ntMgXm5kl1FRUhcx2ohBGTj7Ied9EyYGsmJVptQZ5/kGt5uW/5lgP/AaovrR6YXRC034ERoIs4PL1Jv/zqJjqNa4BpAggG3ZhbpCWSZrsb7JtNLUu10KwKa/OxD2pRRTYYZlHAcx+OiGMyy7SOgxzse1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707239297; c=relaxed/simple;
	bh=aeoESUFgQqfAAPofag18sVPt7nmnd5I7x49UEZWqJPA=;
	h=To:Subject:From:Message-Id:Date; b=DzD4hklLylaid5AXFLHgVev7zGUXnwibqyStolfTiDPuIhz8NnAmu0M1ro1D1z0NUuFJ2LdPLfMjSSpTH2aFc30SpqNe692s0y/8ra+z/BALsWbZmqNLUKsfPoE52QD7Og/yYcgXSsk9hxreR0VKRmp8qjdRLnnyFQL2cj3bpo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZYUlZxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZYUlZxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 925C0C433F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707239296;
	bh=aeoESUFgQqfAAPofag18sVPt7nmnd5I7x49UEZWqJPA=;
	h=To:Subject:From:Date:From;
	b=mZYUlZxMWqLcing6zPTdqrlqW5cC1eLlH7geJrw7SN/5fkdff0eq/Q1/yHCzAruAI
	 hnVSAwjW2Ify3MAMR28auWyl8pb0T6Xv7NCKRp8XgZoBebuSV9DuE3pjkOOn4dkGnN
	 mvK3bYDezqJt2ebZkdb4o62g3atDCHKoiNBBTHueGzMUi5DqzX+ETu+6V+UAQpgMNo
	 Z9tACy8DnZ8gzD4XZfEKiosJvS16vHlj5G0E39frnJuDS/LHu2izJJMddiuqVJLkFt
	 8RG/gRY17SLK0uT5rTog5hGquleDljku5XPRGSUkfiXsP+yTFCX7+J/i4YpVx2l4Wt
	 Nb1Vl9yVO0fXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76A0CC4828D
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170723929647.28012.9833476176657495907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2289fd4870751bc35ea5dcb2e5ad2ee05dc9f3a471f6348df3c283ed0f92d2cb
Date: Tue, 06 Feb 2024 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707239296
