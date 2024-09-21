Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396CDF9E6
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726938954; cv=none; b=Bah8bH/Dpog7ggn985cT9F2rVbDOyslSKyz/K9G0I/B9udZDhGlQhWB8CR7jvB1iDrMy84EqQgfV8on6bZvPilxnNyGZL2fyvH6UMEMJoEjSDD/C+LaBsVsW86WgExH4U9jdK94cwiAHKLGa8fYFKqhr9CJmBK2q52E4gb2bN0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726938954; c=relaxed/simple;
	bh=m7QD1krlgzPe8zkwLocM6K+mgfLuJ21od66DGYPJ3mA=;
	h=To:Subject:From:Message-Id:Date; b=DLmK9s9uc++Pak9iFnsXv4h2q81XRFjNKqV34AimMTQmB/nhWeF9i/jutUUrZn5dHph1kesHIF6a8ouetCxwUmnOEMg1tbG19IKZ3t7F1SQod6/AhBj686KnOJcF58tUYS8k0mn8xsdjRtlXvrhhoL88GA0Uz0/5A5ry7yHxXLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pn4UXBL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pn4UXBL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2594C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726938953;
	bh=m7QD1krlgzPe8zkwLocM6K+mgfLuJ21od66DGYPJ3mA=;
	h=To:Subject:From:Date:From;
	b=Pn4UXBL/vhKZTT7nuHqofhoJut89Sm88TXAxURFGo7z3Lwe79AHmLZDzAHR7KB5T3
	 auaszdlaHBAM3tI55c7JmU0HtUtTFoNS5wmMX8UChFaCXMouNG9JVqeePNgX5K6jCG
	 +WzvJQCz5IK467Mo/MfyXSwJV87gQ0+1izrl9S5J4Ut/ZSZh5dgNZcQo4gL8w9Mxej
	 BP1urg5xRseLac1L1V14XMpQesYQcYm9QQO1D5Bk0ZeVt6EMWHiXgsqSBT7ZOoT9qJ
	 vBuSelyTgIGtLts/4K+Yg5udbIT6//3P2HPdEYnimF/ya6bLc1oLiAfS96wxgTEgGj
	 qNG7G0VLmFqNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DEBECF9C69
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172693895362.14148.11482727242715541456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08f1e9daed21238a0b437ca0c1db473404d002e290109a000466efeb4ca9e366
Date: Sat, 21 Sep 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726938953
