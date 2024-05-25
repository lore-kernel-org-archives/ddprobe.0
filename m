Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059DC126F36
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 17:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716659663; cv=none; b=Ii28xO1dItYweuol4kJV2h93ValantoyaLa2pd+5O4kLlrgKsg3zdKvOvsgN1Vevq+0TyiWzGe3UarqmGN9LOTAtquu0m0PqNgQPcG2GDs8GtN4H0oB1wMwM9W1EWh5arZorfOrdLMbFW2lNXaqdulWznJyUgHPll/tKIvUXqXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716659663; c=relaxed/simple;
	bh=kPvsyj+uGtE2kJGlJ7quXjcLkhn3tkVYeXxDqJZoRKI=;
	h=To:Subject:From:Message-Id:Date; b=DQuhq3lVt/xSkpUqdntiQv2mZTMzPu6EnqzEvegxjEH2Udtktfmriwy+5Jy5RMLd/IlP6zqn4GSpO7KRxffEDqdUihKzguztTXkCXYF3pyMtC49wA6J/M49a/AjvZ1m4wi9pDkzdYizN2qo8qEggHYhSDpASr84b9P+lY3NAsPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEIGsaEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEIGsaEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF498C32781
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 17:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716659662;
	bh=kPvsyj+uGtE2kJGlJ7quXjcLkhn3tkVYeXxDqJZoRKI=;
	h=To:Subject:From:Date:From;
	b=GEIGsaEXtQhhDgqrAWVFWdFscd89Jri93Bj7RqYTn3s/KQkH+WRYw74yrw5q+z+5v
	 1qfab7CTd4/zwcVpl/MJXmCinX9WxVwNYvNwRDhW1gn7fCjZLvg2dE3xLuUnHoTKc9
	 BFasrkjrPTxw3lBxvu6vUXSeV+tquMkQq+G6cLgOp6kabJ9oqsEWEqFPXdj6Tp2uZZ
	 ZRyTQLRoL92J5lzDeWUn19Iy+hXoY44Dmj1CSgHS/xV5iGuSr/bUSHN6C3XcI34bd8
	 YsdW2MXAwPgYh8iqc6g9AlS1YCTsNTXFykeeGutmhzhFV+61id1y0ahbHFf8mH8HGT
	 lql90k+HgFBAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5DBC25B7D
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 17:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171665966276.17921.15490134268112264322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 113ed186a5a4529614d850948d6e44da700afe4c9c4744470c2bb3bdb4c1a755
Date: Sat, 25 May 2024 17:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716659662
