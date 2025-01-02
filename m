Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294DE13FEE
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735817754; cv=none; b=uT/gpOxHzQzlIUKhRJVgCsGKikapSqKJ2iZ0NKtgOSjBn5ZxfnoPurYRMLG5ZXF6VaiZ7DM/Tx8Zpvo71fheshCRWo4Gvd8ybqPFe1FNLD8fb7vIaujVlthF5vk/PULTe9fzQ45tVnJrf7GJ5iP+1nmZTBpXI2KS2OkIZU+s4yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735817754; c=relaxed/simple;
	bh=3dEboeXux+IzWZsfPii/yr9BVHU5XrEJrd176rMnyFE=;
	h=To:Subject:From:Message-Id:Date; b=Y/p0fHvhLpSSaSLCe5l9BmD3DvHsjCbONsrjPZ7j1tURIQKchoWZrpIejXalCpe/1MhWOzybwQ3FNq29Qzk/RSUZobvt/04nMezMxs2oW5nN+1MwdW+fAAWvVnXxfVrkdIWdkjnFLQhL0KuHx9wVLN7yc8HK2NSK1P9DtP4WLP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHKeDtv/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHKeDtv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD35CC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735817753;
	bh=3dEboeXux+IzWZsfPii/yr9BVHU5XrEJrd176rMnyFE=;
	h=To:Subject:From:Date:From;
	b=AHKeDtv/FvJqwVTZ2euu1ozoo453TqpPHKcbZn2eZmNkbiwWUS8glMN9acw4X5eY0
	 s9sQXCttfUeqsE49KJUGAGnr2pP3qDoii/ZRT4IdUd5DMW8lyz43QVCN6Y2Y0vzI7K
	 RGH4UsKgoFWoiJ21INb9a58LF073dtzljUM36q4K+Ocwkre9veh3WXY/hr5W9qWqm9
	 AoYlIYni4iJfHBhDApPfp1xxc8OS65Whguil6XoQJN3xJTvuGxcGZDu4aaqhqmf/6U
	 JIaWB3gYQlwVKqm6hKQ1ywNl81v5sp4UrAovFxykWAIEP7PJd5miWvi3bfVpU05lBb
	 fMBFAytK6GOMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F84E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173581775361.5673.8032857275742973099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b249bad1415e768683f4f4d9312069be8b75bba1483e3b613ff3fffa5d223ac4
Date: Thu, 02 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735817753
