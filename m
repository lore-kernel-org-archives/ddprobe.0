Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F1B38A70C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788977434; cv=none; b=lmutyaSH/NdEnjuVEx6CL3gd9AHPUAxUg+Eg2BJKhozslHgKbviWzcoZmhifPdDSbcgq41YgGJNTIov66JzGeQF2azEZv6PMqV81vYIyrhUcjNUs32C9eDmIcwxusyfq35aCXGS4NdB1KSaRSVtYnvStEr/Ro8R5zAnvniKv2aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788977434; c=relaxed/simple;
	bh=OAjV2FFa1y5pJb/TOeccjI/Y7ER6+1p701qwp8HHMPs=;
	h=To:Subject:From:Message-Id:Date; b=p8IZ/gRtFr8KWWVuw44zQ/7UCxoUsfezaJ/C6Pogix3Pi8ifCZ8G0KCrZgMQNLUA3lZ83E9ga4gYGjHoybBARxiMBeftOXnFaCv54xKyTu4a2w5DD4JyFrwsPwLzLjHughUkpLPR/OMVSUq5HtFClS3oDAWIvbkya2sWALWZxkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pL8UChGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pL8UChGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3010C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788977434;
	bh=OAjV2FFa1y5pJb/TOeccjI/Y7ER6+1p701qwp8HHMPs=;
	h=To:Subject:From:Date:From;
	b=pL8UChGDJZyJvjNoRPvUnMDT9hFcp41bYpDdqwLKb8fst3PQ78Weu+MJV6HZDtDPY
	 zDrwYdI+Cfmx8W9iIeS7FekHxCpA3EIE9XLJ3RrGiWXh3wcrCeeAeI0R0qAs4J0YqR
	 1YLgIwGfEFKhfhyWww+bAgluokrcYf+QBmkrUoPO6wxa81dpY6UUkleCZS4ixCp7Z6
	 UIwLDVJFaTmGXGQnwxFtWJH6yUB5SY7UeCvxZhlWq2QIwpG3vZd6CnpWFW5kDaquMk
	 sfbu7skhrNnCB8ZAUQAo8zknEKvpH76VsDCZ4dzIM2RqKvpfRbp3HWRXsUvG/sgv9e
	 OL7sA5cKhCVBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC7A7C79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178897743375.2796.10299647824175459550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8df9fb3e0b7530b7a77dc0cbfbf7273e36cd1a9667af42c9a191c3a9e0e6f5f
Date: Wed, 09 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788977433
