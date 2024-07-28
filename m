Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DDC58ABC
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722183954; cv=none; b=LGp9jtY3aEYfG1fYS8Lg26pbFinPbSzf6J55fO350djkiz5MrI66MbHYtLg4tppBabARtEssfmbaX+d45Pr0CJjsCmJyaTj1oZKMQaI6hVnNz+yZBKBt645dfzw02ISaeqX4q78/Eoxz2UuadpTUEHOZziRz2T8CWyKX0yxOeSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722183954; c=relaxed/simple;
	bh=5WubUmbsYODeiBemMc5wIAzCR6tc4mZNSAoEyqVSaJ4=;
	h=To:Subject:From:Message-Id:Date; b=UP8X5F2YEQ4yVcHUqmU0gKx0UcUOoAlp0oQ7rwOxStJ3TpK/wvZmRZ/1sv4Bjq+IuEzTZ1FsCWq5j7/RqtqK19XreVzVtyC9Q5dsj++yR26Vt2NhW0LT5NimeCN9fJL6GrRsVfdBViW04J67fQVcGjr8mn0LMNBnRlltwVpohMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPQVqF9j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPQVqF9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A645BC32782
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722183953;
	bh=5WubUmbsYODeiBemMc5wIAzCR6tc4mZNSAoEyqVSaJ4=;
	h=To:Subject:From:Date:From;
	b=CPQVqF9jBaH+1AvXkVk8Fdpsm356Jrz3jDVvtrWLbATHfbdrqEQXSsZzGqGcbggRe
	 4RH+J8U2pPYM/z4Ec/j4tIQH+KAYiTX8IAl7trljbICPDh0YilrHH1XmQytqkqDfYP
	 KA3gyA1d+n9juKo6eH8yNDHWfKxGb7wptNqNNl+AICYoVq/oE5xSE5LoCZhYy5N+KD
	 9WL7lBu5KQl59lX1b/WJT2azPbWsgTo6mlNhP7afCKRfsnJcd585Z3X5UPkoN/jYP8
	 MJlBV/jrfR6qDdcGEqA4czcGzLaWH3Shs5iHke2N9FoPIWADxgsSx9cn96geZ5W1VN
	 Tpx4d9W6NQzRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9364CC3DA64
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172218395359.27206.9476912745485635702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d68646eb077782b58014a0f436ff1ac9e38e617fd8f9de8432d367aa5d6350a6
Date: Sun, 28 Jul 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722183953
