Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293C11DEFD4
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737383154; cv=none; b=l62BYcvA9YJ3f33nGLGOZd1IyuaOABAtBj3hqWc16zZNA51AkYMBhxRBNW8k4x3/rZUMeQlerHrAi4X1IO85E/mSasMSViYBeGBHSFSv6TsMehk70GsQPtcng9Izm4shXQUt6H0HzUg1HgsSvw791NHpDHW+Av7rz1TqkW+lVc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737383154; c=relaxed/simple;
	bh=uI2c/gkCFss7YWs6pWZ6/kOJUNA76T6Jm5VjIf5HgGY=;
	h=To:Subject:From:Message-Id:Date; b=Wwry7O7ERr9cw8uWO6uFHtwhWhRfREf612ayvOfWgbNWMJUHvtNu88vklmXadKy0hA71Ql2Ydp0W8FFt4Ecd0XKnk2TCnCt68DxF7A7SK1KMtCV2rZrGToiHscfExY8lu7hOXKREwqAOvfmGPsPRUA1BYbpuU0oJpCORinYVOr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpTJfogb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpTJfogb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2357C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737383153;
	bh=uI2c/gkCFss7YWs6pWZ6/kOJUNA76T6Jm5VjIf5HgGY=;
	h=To:Subject:From:Date:From;
	b=ZpTJfogbrPRr5GoTnmpSoVZjRdTViZ37LAIlJTOFNE+RZXXySMIvf81RDj4rR54+E
	 hhnlRSOrabnrz1ovTGCyaEFK0f5qJBHFsydXiVilEpGWk1Qopm22LbD7IPCXm8IW+I
	 3bfn85mbhJmX+Bo5N19+q1NBkV8EC+BHYRKzt1eLiLe9Vxl7hulwhWa05y6E7LSil7
	 QpCciDGOpvtIWIB93kj89fqrq6ddoH0FNFbL+VKEiA9WJahCragTLMjaKEt5Gwjfkf
	 eGX8a/BUihJBC2rmJGhO6qQ8fD4O8adxLUCdwMhpksRr0ydfQ7lFT/VU0QQWpE4M5u
	 BvzT9G4s9nDDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8B6C02182
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173738315357.7251.580801909186181624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c2b241cfdb7d92accccf1bb8ac9bdd2a3487c104655fee59b47491ccec91bfe
Date: Mon, 20 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737383153
