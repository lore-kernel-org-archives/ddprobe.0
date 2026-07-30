Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 858B2468C0A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785438034; cv=none; b=ZJGsR+h2eONjb4n041Myi1vDJyNV3epEckq2nJfeMWyq+hn4XJGw3LoqJbkaZV9bJL96T352JIu8VVxuLU4zYfN/z5nKgMN4Q46LyPe7uay0ObeOj8iUmav7SiU1Q+5nQsGD0VqLvxrLfj3IoAjOtlEJU6LIw6jZwSQdiWbNysA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785438034; c=relaxed/simple;
	bh=TECze565x9+NdCQLg/vfHC57BnrbIXFQsvLi0g0TbQk=;
	h=To:Subject:From:Message-Id:Date; b=mElAT6vORj6dpdJbzFOV254vMbLwKyBtdsS5GSxPFX+DSnfkdIz0ySGnHJjxIyxxoTRfixQFDDhKFAMJJlNjw2AlCavDafrj5jsmMrFXSv/DKxNdD4KWuK3YHFOFJRS/WvH0wNg6MplbnB7LpYoUvbLaaH+50e/L6h0c5wYdC4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=le0iAUl2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="le0iAUl2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2C8C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785438033;
	bh=TECze565x9+NdCQLg/vfHC57BnrbIXFQsvLi0g0TbQk=;
	h=To:Subject:From:Date:From;
	b=le0iAUl2ZuOTFO7AQdTa07BLZEvkEeFt2uSCRzg0+e7S69lYSvxs9OY3GGtOto0nQ
	 Sc4TIuS0IypCUlJx9zSrrsfxc90T90d4Six8HzAsFWUPM0fiitRym4mUU+zYBI0cFM
	 d8Uu/e2Y5jf5AovgP4S/wEIHpWtQ6xzSq3sxegvY6B/wTg4fdGsiLL20jGjFegvY6e
	 eIrC+QgJMhbR3JPloDsGptYlvBvc5DgHTsNv7uBvlz6EYVq6PoCWFTnXxPyu0AFLgk
	 bHZ9uJhQ4Q3rUHheCndb08vaLnDEDsePRjhWzyGi9gmTxxhYXn5F328KsbNt4kuicx
	 W7z6zWAHesxtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA70C5516E
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178543803369.20942.1261990159896102496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 848dbed58bb40367e54ea0057c9044e385e917149ff8cca30b1264d732e91c42
Date: Thu, 30 Jul 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785438033
